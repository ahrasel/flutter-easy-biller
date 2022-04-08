import 'package:get/get.dart';
import '../controllers/category_list_controller.dart';

class CategoryListBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CategoryListController>(CategoryListController.new);
    // Get.put<CategoryListController>(CategoryListController());
  }
}
