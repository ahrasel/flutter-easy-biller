import 'package:easy_biller/app/data/provider/repositories/account_repository.dart';
import 'package:get/get.dart';
import '../controllers/change_password_controller.dart';

class ChangePasswordBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ChangePasswordController>(
        () => ChangePasswordController(AccountRepository()));
    // Get.put<ChangePasswordController>(ChangePasswordController());
  }
}
