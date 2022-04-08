import 'package:get/get.dart';
import '../controllers/users_details_controller.dart';

class UsersDetailsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UsersDetailsController>(UsersDetailsController.new);
    // Get.put<UsersDetailsController>(UsersDetailsController());
  }
}
