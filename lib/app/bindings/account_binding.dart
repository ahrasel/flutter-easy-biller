import 'package:easy_biller/app/data/provider/repositories/account_repository.dart';
import 'package:get/get.dart';
import '../controllers/account_controller.dart';

class AccountBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AccountController>(
        () => AccountController(accountRepository: AccountRepository()));
    // Get.put<AccountController>(AccountController());
  }
}
