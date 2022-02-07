import 'package:dartz/dartz.dart';
import 'package:easy_biller/app/data/models/appuser/appuser.dart';
import 'package:easy_biller/app/data/provider/repositories/repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../../failures/firestore_failure.dart';
import 'i_auth_repository.dart';

class AuthRepository extends Repository implements IAuthRepository {
  Stream<User?> get authState => firebaseAuth.authStateChanges();

  // login with email and password
  @override
  Future<Either<FirestoreFailure, AppUser>> loginWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      final user = await firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);

      final docRef = firestore.collection('users').doc(user.user?.uid);
      final doc = await docRef.get();

      if (doc.exists) {
        return Right(AppUser.fromDocument(doc));
      } else {
        return const Left(FirestoreFailure.notFound());
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        return const Left(FirestoreFailure.userNotFound());
      } else if (e.code == 'wrong-password') {
        return const Left(FirestoreFailure.invalidCredentials());
      } else {
        return const Left(FirestoreFailure.serverError());
      }
    }
  }
}
