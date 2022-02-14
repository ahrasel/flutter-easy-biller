import 'package:dartz/dartz.dart';
import 'package:easy_biller/app/data/failures/firestore_failure.dart';
import 'package:easy_biller/app/data/models/appuser/appuser.dart';

abstract class IAccountRepository {
  Future<Either<FirestoreFailure, AppUser>> currentUser();
  Future<Either<FirestoreFailure, Unit>> updatePassword({
    required String oldPassword,
    required String newPassword,
  });
}
