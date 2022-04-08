import 'package:get/get.dart';
import '../controllers/users_create_controller.dart';

class UsersCreateBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UsersCreateController>(UsersCreateController.new);
    // Get.put<UsersCreateController>(UsersCreateController());
  }
}
