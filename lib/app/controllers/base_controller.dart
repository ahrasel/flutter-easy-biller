import 'package:easy_biller/app/data/failures/firestore_failure.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BaseController extends GetxController {
  final FirebaseAuth firebaseAuth = Get.find<FirebaseAuth>();

  bool isAuthenticated() => firebaseAuth.currentUser != null;

  // sign out
  Future<void> signOut() async {
    await firebaseAuth.signOut();
  }

  void successSnackbar({required String message, String title = 'Success'}) {
    Get.snackbar(
      title,
      message,
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.green,
      colorText: Colors.white,
      borderRadius: 10,
      margin: const EdgeInsets.all(10),
      duration: const Duration(seconds: 2),
    );
  }

  void errorSnackbar({required String message, String title = 'Error'}) {
    Get.snackbar(
      title,
      message,
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.red,
      colorText: Colors.white,
      borderRadius: 10,
      margin: const EdgeInsets.all(10),
      duration: const Duration(seconds: 2),
    );
  }

  // ignore: prefer_expression_function_bodies
  String fireStoreErrorMessage(FirestoreFailure failure) {
    return failure.when(
      unexpected: () => 'unexpected error',
      insufficientPermission: () => 'insufficient permission',
      permissionDenied: () => 'permission denied',
      tooManyRequests: () => 'too many requests',
      serverError: () => 'server error',
      notFound: () => 'not found',
      invalidCredentials: () => 'invalid email or password',
      emailAlreadyInUse: () => 'email already in use',
      userNotFound: () => 'user not found',
      weakPassword: () => 'weak password',
      operationNotAllowed: () => 'operation not allowed',
      invalidEmail: () => 'invalid email',
      recordAlreadyExist: (m) => m,
    );
  }
}
