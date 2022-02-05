import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../controllers/navigation_controller.dart';
import '../../controllers/main_controller.dart';
import 'package:get/get.dart';

import '../../controllers/splash_controller.dart';

class DependencyInjection {
  static void init() {
    Get.lazyPut<FirebaseAuth>(() => FirebaseAuth.instance);
    Get.lazyPut<FirebaseFirestore>(() => FirebaseFirestore.instance);
    Get.lazyPut<MainController>(() => MainController());
    Get.lazyPut<NavigationController>(() => NavigationController());
    Get.put<SplashController>(SplashController());
  }
}
