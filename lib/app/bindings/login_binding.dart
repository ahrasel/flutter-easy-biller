import 'package:easy_biller/app/data/provider/repositories/auth_repository.dart';
import 'package:get/get.dart';
import '../controllers/login_controller.dart';

class LoginBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(() => LoginController(AuthRepository()));
  }
}
