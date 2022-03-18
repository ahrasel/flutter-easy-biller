
import 'package:get/get.dart';
import '../controllers/users_list_controller.dart';


class UsersListBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UsersListController>(() => UsersListController());
        // Get.put<UsersListController>(UsersListController());
  }
}