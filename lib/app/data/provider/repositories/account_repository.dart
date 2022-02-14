import 'package:dartz/dartz.dart';
import 'package:easy_biller/app/data/failures/firestore_failure.dart';
import 'package:easy_biller/app/data/models/appuser/appuser.dart';
import 'package:easy_biller/app/data/provider/repositories/i_account_repository.dart';
import 'package:easy_biller/app/data/provider/repositories/repository.dart';

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
      await firebaseAuth.currentUser!.updatePassword(newPassword);
      return right(unit);
    } catch (e) {
      return left(const FirestoreFailure.serverError());
    }
  }
}
