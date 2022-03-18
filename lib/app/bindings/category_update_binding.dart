
import 'package:get/get.dart';
import '../controllers/category_update_controller.dart';


class CategoryUpdateBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CategoryUpdateController>(() => CategoryUpdateController());
        // Get.put<CategoryUpdateController>(CategoryUpdateController());
  }
}