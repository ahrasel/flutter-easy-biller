import 'package:easy_biller/app/controllers/base_controller.dart';
import 'package:easy_biller/app/routes/app_routes.dart';
import 'package:get/get.dart';

class MainController extends BaseController {
  var currentIndex = 0.obs;
  var appbarTitle = "Easy Biller".obs;

  setCurrentIndex(int index) {
    currentIndex.value = index;
  }

  onChangeMoreAction(int? value) {
    String routeName = '';
    switch (value) {
      case 5:
        routeName = AppRoutes.account;
        appbarTitle.value = "Profile";
        break;
      case 10:
        routeName = AppRoutes.changePassword;
        appbarTitle.value = "Change Password";

        break;
      case 15:
        routeName = AppRoutes.settings;
        appbarTitle.value = "Settings";

        break;
      case 25:
        signOut();
        break;
      default:
    }

    if (routeName.isNotEmpty) {
      Get.toNamed(routeName);
    }
  }
}
