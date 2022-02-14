import 'package:get/get.dart';
import '../controllers/invoices_controller.dart';

class InvoicesBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<InvoicesController>(InvoicesController.new);
    // Get.put<InvoicesController>(InvoicesController());
  }
}
