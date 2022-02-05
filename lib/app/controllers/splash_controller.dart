import 'package:easy_biller/app/controllers/base_controller.dart';
import 'package:get/get.dart';

import '../routes/app_routes.dart';

class SplashController extends BaseController {
  @override
  void onInit() {
    super.onInit();
    Future.delayed(const Duration(seconds: 3), () {
      if (isAuthenticated()) {
        Get.offAllNamed(AppRoutes.home);
      } else {
        Get.offAllNamed(AppRoutes.login);
      }
    });
  }
}
