import 'package:get/get.dart';
import '../controllers/client_create_controller.dart';

class ClientCreateBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ClientCreateController>(ClientCreateController.new);
    // Get.put<ClientCreateController>(ClientCreateController());
  }
}
