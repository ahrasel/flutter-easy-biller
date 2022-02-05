import '../../controllers/navigation_controller.dart';
import '../../controllers/main_controller.dart';
import 'package:get/get.dart';

import '../../controllers/splash_controller.dart';

class DependencyInjection {
  static void init() {
    Get.put<SplashController>(SplashController());
    Get.lazyPut<MainController>(() => MainController());
    Get.lazyPut<NavigationController>(() => NavigationController());
  }
}
