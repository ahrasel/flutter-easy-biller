import 'package:easy_biller/app/controllers/base_controller.dart';
import 'package:easy_biller/app/data/models/appuser/appuser.dart';
import 'package:easy_biller/app/data/provider/repositories/account_repository.dart';
import 'package:get/get.dart';

class AccountController extends BaseController {
  var user = AppUser.empty().obs;
  var isLoading = true.obs;
  final AccountRepository accountRepository;

  AccountController({required this.accountRepository});

  @override
  void onInit() {
    super.onInit();
    accountRepository.currentUser().then((value) {
      var result = value.fold((l) => l, (r) => r);

      if (result != AppUser) {
        user.value = result as AppUser;
        isLoading.value = false;
      }
    });
  }
}
