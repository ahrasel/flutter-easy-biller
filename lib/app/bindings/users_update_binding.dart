import 'package:get/get.dart';
import '../controllers/users_update_controller.dart';

class UsersUpdateBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UsersUpdateController>(UsersUpdateController.new);
    // Get.put<UsersUpdateController>(UsersUpdateController());
  }
}
