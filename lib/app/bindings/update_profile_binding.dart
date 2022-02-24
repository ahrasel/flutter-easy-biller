import 'package:easy_biller/app/data/provider/repositories/account_repository.dart';
import 'package:get/get.dart';
import '../controllers/update_profile_controller.dart';

class UpdateProfileBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UpdateProfileController>(
        () => UpdateProfileController(AccountRepository()));
    // Get.put<UpdateProfileController>(UpdateProfileController());
  }
}
