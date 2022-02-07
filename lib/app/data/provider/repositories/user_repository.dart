import 'package:dartz/dartz.dart';
import 'package:easy_biller/app/data/models/appuser/appuser.dart';
import 'package:easy_biller/app/data/provider/repositories/repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';

import '../../failures/firestore_failure.dart';
import 'i_user_repository.dart';

class UserRepository extends Repository implements IUserRepository {
  final String _userCollection = 'users';

  @override
  Future<Either<FirestoreFailure, AppUser>> createUser(
      {required AppUser user, required String password}) async {
    try {
      // check user already exist with email
      var existUser = await firestore
          .collection(_userCollection)
          .where('email', isEqualTo: user.email)
          .get();

      if (existUser.docs.isNotEmpty) {
        left(const FirestoreFailure.emailAlreadyInUse());
      }

      // create account with email and password
      UserCredential cred = await firebaseAuth.createUserWithEmailAndPassword(
          email: user.email, password: password);

      user = user.copyWith(id: cred.user!.uid);

      // create use to firestore
      firestore.collection(_userCollection).doc(user.id).set(user.toJson());

      return right(user);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        return const Left(FirestoreFailure.emailAlreadyInUse());
      } else if (e.code == 'invalid-email') {
        return const Left(FirestoreFailure.invalidEmail());
      } else {
        return const Left(FirestoreFailure.serverError());
      }
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return left(const FirestoreFailure.serverError());
    }
  }

  @override
  Future<Either<FirestoreFailure, AppUser>> deleteUser(
      {required AppUser user}) async {
    try {
      await firestore.collection(_userCollection).doc(user.id).delete();
      return right(user);
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return left(const FirestoreFailure.serverError());
    }
  }

  @override
  Future<Either<FirestoreFailure, AppUser>> toggleStatus(
      {required AppUser user}) async {
    try {
      user = user.copyWith(active: !user.active);
      await firestore
          .collection(_userCollection)
          .doc(user.id)
          .set(user.toJson());
      return right(user);
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return left(const FirestoreFailure.serverError());
    }
  }

  @override
  Future<Either<FirestoreFailure, AppUser>> updateUser(
      {required AppUser user, required String password}) async {
    try {
      await firestore
          .collection(_userCollection)
          .doc(user.id)
          .set(user.toJson());
      return right(user);
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return left(const FirestoreFailure.serverError());
    }
  }
}
