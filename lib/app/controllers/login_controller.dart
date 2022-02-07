import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

import '../data/failures/firestore_failure.dart';
import '../data/models/appuser/appuser.dart';
import '../data/provider/repositories/auth_repository.dart';
import '../data/provider/repositories/i_auth_repository.dart';
import '../routes/app_routes.dart';
import 'base_controller.dart';

class LoginController extends BaseController {
  IAuthRepository? _authRepository;
  var obscureText = true.obs;

  LoginController(AuthRepository authRepository) {
    _authRepository = authRepository;
  }

  // login with email and password
  void login({required String email, required String password}) async {
    try {
      var response = await _authRepository!
          .loginWithEmailAndPassword(email: email, password: password);
      var result = response.fold((l) => l, (r) => r);

      if (result is AppUser) {
        successSnackbar(message: 'Login Successful', title: 'User Login');
        Get.offAllNamed(AppRoutes.home);
      }

      if (result is FirestoreFailure) {
        if (kDebugMode) {
          print(result);
        }
      }
    } catch (e) {
      // show error message
      if (kDebugMode) {
        print(e);
      }
    }
  }

  String? validateEmail(String email) {
    if (email.isEmpty) {
      return 'Email is required';
    }
    return null;
  }

  String? validatePassword(String password) {
    if (password.isEmpty) {
      return 'Password is required';
    }
    return null;
  }

  void togglePassword() {
    obscureText.value = !obscureText.value;
  }
}
