import 'package:get/get.dart';
import '../controllers/category_update_controller.dart';

class CategoryUpdateBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CategoryUpdateController>(CategoryUpdateController.new);
    // Get.put<CategoryUpdateController>(CategoryUpdateController());
  }
}
