import 'package:easy_biller/app/controllers/base_controller.dart';
import 'package:easy_biller/app/data/failures/firestore_failure.dart';
import 'package:easy_biller/app/data/models/appuser/appuser.dart';
import 'package:easy_biller/app/data/provider/repositories/i_account_repository.dart';
import 'package:easy_biller/app/data/provider/repositories/i_auth_repository.dart';
import 'package:get/get.dart';

class UpdateProfileController extends BaseController {
  final IAccountRepository accountRepository;

  UpdateProfileController(this.accountRepository);

  validateFirstName(String s) {
    if (s.isEmpty) {
      return 'First Name is required';
    }
    return null;
  }

  validateLastName(String s) {
    if (s.isEmpty) {
      return 'Last Name is required';
    }
    return null;
  }

  validateEmail(String s) {
    if (s.isEmpty) {
      return 'Email is required';
    }
    return null;
  }

  validatePhoneNumber(String s) {
    if (s.isEmpty) {
      return 'Phone Number is required';
    }
    return null;
  }

  validateAddress(String s) {
    if (s.isEmpty) {
      return 'Address is required';
    }
    return null;
  }

  validateDob(String s) {
    if (s.isEmpty) {
      return 'Date of Birth is required';
    }
    return null;
  }

  void updateUser() {
    print('update user');
  }

  Future<AppUser> get user async {
    var res = await accountRepository.currentUser();
    var result = res.fold((l) => l, (r) => r);

    if (result is AppUser) {
      return result;
    }

    if (result is FirestoreFailure) {
      Get.back();
      fireStoreErrorMessage(result);
    }
    return Future.value(AppUser.empty());
  }
}
