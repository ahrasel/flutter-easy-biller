import 'package:dartz/dartz.dart';
import 'package:easy_biller/app/data/models/appuser/appuser.dart';

import '../../failures/firestore_failure.dart';

abstract class IUserRepository {
  Future<Either<FirestoreFailure, AppUser>> createUser(
      {required AppUser user, required String password});
  Future<Either<FirestoreFailure, AppUser>> updateUser(
      {required AppUser user, required String password});
  Future<Either<FirestoreFailure, AppUser>> deleteUser({required AppUser user});
  Future<Either<FirestoreFailure, AppUser>> toggleStatus(
      {required AppUser user});
}
