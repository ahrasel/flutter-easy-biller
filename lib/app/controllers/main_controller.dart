import 'package:get/get.dart';

class MainController extends GetxController {
  var currentIndex = 0.obs;

  setCurrentIndex(int index) {
    currentIndex.value = index;
  }
}
