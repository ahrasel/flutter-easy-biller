import 'package:dartz/dartz.dart';
import 'package:easy_biller/app/controllers/base_controller.dart';
import 'package:easy_biller/app/data/failures/firestore_failure.dart';
import 'package:easy_biller/app/data/provider/repositories/i_account_repository.dart';
import 'package:get/get.dart';

class ChangePasswordController extends BaseController {
  final IAccountRepository accountRepository;
  var newPasswordObscure = true.obs;

  var confirmPasswordObscure = true.obs;
  var oldPasswordObscure = true.obs;

  ChangePasswordController(this.accountRepository);

  toggleNewPassword() {
    newPasswordObscure.value = !newPasswordObscure.value;
  }

  toggleConfirmPassword() {
    confirmPasswordObscure.value = !confirmPasswordObscure.value;
  }

  Future<void> updatePassword({
    required String oldPassword,
    required String newPassword,
    required String confirmPassword,
  }) async {
    var res = await accountRepository.updatePassword(
        oldPassword: oldPassword, newPassword: newPassword);

    var result = res.fold((l) => l, (r) => r);

    if (result is Unit) {
      Get.back();
      successSnackbar(message: 'Password updated successfully');
    }

    if (result is FirestoreFailure) {
      var message = fireStoreErrorMessage(result);
      errorSnackbar(message: message);
    }
  }

  validateNewPassword(String newPassword) {
    if (newPassword.isEmpty) {
      return 'New password can\'t be empty';
    }
    return null;
  }

  validateConfirmPassword(String confirmPassword, String newPassword) {
    if (confirmPassword.isEmpty) {
      return 'confirm password can\'t be empty';
    } else if (newPassword != confirmPassword) {
      return 'Password not matched!';
    } else {
      return null;
    }
  }

  toggleOldPassword() {
    oldPasswordObscure.value = !oldPasswordObscure.value;
  }

  validateOldPassword(String s) {
    if (s.isEmpty) {
      return 'Old password can\'t be empty';
    }
    return null;
  }
}
