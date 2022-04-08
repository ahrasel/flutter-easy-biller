import 'package:get/get.dart';
import '../controllers/product_update_controller.dart';

class ProductUpdateBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProductUpdateController>(ProductUpdateController.new);
    // Get.put<ProductUpdateController>(ProductUpdateController());
  }
}
