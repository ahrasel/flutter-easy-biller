
import 'package:get/get.dart';
import '../controllers/client_details_controller.dart';


class ClientDetailsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ClientDetailsController>(() => ClientDetailsController());
        // Get.put<ClientDetailsController>(ClientDetailsController());
  }
}