
import 'package:get/get.dart';
import '../controllers/client_update_controller.dart';


class ClientUpdateBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ClientUpdateController>(() => ClientUpdateController());
        // Get.put<ClientUpdateController>(ClientUpdateController());
  }
}