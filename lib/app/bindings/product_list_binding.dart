import 'package:get/get.dart';
import '../controllers/product_list_controller.dart';

class ProductListBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProductListController>(ProductListController.new);
    // Get.put<ProductListController>(ProductListController());
  }
}
