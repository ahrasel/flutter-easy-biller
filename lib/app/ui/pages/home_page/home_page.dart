import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/home_controller.dart';
import '../../layouts/main/widgets/main_layout_view.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => const MainLayoutView(
        child: Center(
          child: Text('Home'),
        ),
      );
}
