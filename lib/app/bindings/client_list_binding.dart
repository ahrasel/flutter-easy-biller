import 'package:get/get.dart';
import '../controllers/client_list_controller.dart';

class ClientListBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ClientListController>(ClientListController.new);
    // Get.put<ClientListController>(ClientListController());
  }
}
