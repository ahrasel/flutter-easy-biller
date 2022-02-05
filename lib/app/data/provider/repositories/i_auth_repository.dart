import 'package:dartz/dartz.dart';

import '../../failures/firestore_failure.dart';
import '../../models/appuser/appuser.dart';

abstract class IAuthRepository {
  Future<Either<FirestoreFailure, AppUser>> loginWithEmailAndPassword(
      {required String email, required String password});
}
