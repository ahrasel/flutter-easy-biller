import 'package:easy_biller/app/ui/layouts/main/widgets/home_layout_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/home_controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => HomeLayoutView(
        child: Center(
          child: Text('Home', style: Get.textTheme.subtitle1),
        ),
      );
}
