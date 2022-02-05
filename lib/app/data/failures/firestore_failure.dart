import 'package:freezed_annotation/freezed_annotation.dart';
part 'firestore_failure.freezed.dart';

@freezed
abstract class FirestoreFailure with _$FirestoreFailure {
  const factory FirestoreFailure.unexpected() = _Unexpected;
  const factory FirestoreFailure.insufficientPermission() = _InsufficientPermission;
  const factory FirestoreFailure.permissionDenied() = _PermissionDenied;
  const factory FirestoreFailure.tooManyRequests() = _TooManyRequests;
  const factory FirestoreFailure.serverError() = _ServerError;
  const factory FirestoreFailure.notFound() = _NotFound;
  const factory FirestoreFailure.invalidCredentials() = _InvalidCredentials;
  const factory FirestoreFailure.emailAlreadyInUse() = _EmailAlreadyInUse;
  const factory FirestoreFailure.userNotFound() = _UserNotFound;
  const factory FirestoreFailure.weakPassword() = _WeakPassword;
  const factory FirestoreFailure.operationNotAllowed() = _OperationNotAllowed;
}
