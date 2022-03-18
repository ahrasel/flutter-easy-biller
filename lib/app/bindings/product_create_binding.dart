
import 'package:get/get.dart';
import '../controllers/product_create_controller.dart';


class ProductCreateBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProductCreateController>(() => ProductCreateController());
        // Get.put<ProductCreateController>(ProductCreateController());
  }
}