
import 'package:get/get.dart';
import '../controllers/category_create_controller.dart';


class CategoryCreateBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CategoryCreateController>(() => CategoryCreateController());
        // Get.put<CategoryCreateController>(CategoryCreateController());
  }
}