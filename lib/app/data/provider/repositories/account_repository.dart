import 'package:dartz/dartz.dart';
import 'package:easy_biller/app/data/failures/firestore_failure.dart';
import 'package:easy_biller/app/data/models/appuser/appuser.dart';
import 'package:easy_biller/app/data/provider/repositories/i_account_repository.dart';
import 'package:easy_biller/app/data/provider/repositories/repository.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AccountRepository extends Repository implements IAccountRepository {
  @override
  Future<Either<FirestoreFailure, AppUser>> currentUser() async {
    try {
      var snapshot = await firestore
          .collection('users')
          .doc(firebaseAuth.currentUser!.uid)
          .get();
      return right(AppUser.fromDocument(snapshot));
    } catch (e) {
      return left(const FirestoreFailure.serverError());
    }
  }

  @override
  Future<Either<FirestoreFailure, Unit>> updatePassword(
      {required String oldPassword, required String newPassword}) async {
    try {
      // verify old password
      await firebaseAuth.currentUser!.reauthenticateWithCredential(
        EmailAuthProvider.credential(
          email: firebaseAuth.currentUser!.email!,
          password: oldPassword,
        ),
      );

      await firebaseAuth.currentUser!.updatePassword(newPassword);
      return right(unit);
    } on FirebaseAuthException catch (e) {
      return left(FirestoreFailure.recordAlreadyExist(message: e.message!));
    } catch (e) {
      return left(const FirestoreFailure.serverError());
    }
  }
}
