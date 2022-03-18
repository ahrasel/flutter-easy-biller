import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../../../controllers/splash_controller.dart';
import '../../layouts/main/start_layout.dart';

class SplashPage extends GetView<SplashController> {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => StartLayout(
        child: Center(
          // child: Image.asset(
          //   'assets/images/logo.png',
          //   width: 200,
          //   height: 200,
          // ),
          child: Lottie.asset(
            'assets/animations/pay-bills-animation.json',
            width: 100,
            height: 100,
          ),
        ),
      );
}
