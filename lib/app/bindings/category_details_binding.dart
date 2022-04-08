import 'package:get/get.dart';
import '../controllers/category_details_controller.dart';

class CategoryDetailsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CategoryDetailsController>(CategoryDetailsController.new);
    // Get.put<CategoryDetailsController>(CategoryDetailsController());
  }
}
