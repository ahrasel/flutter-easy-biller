import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controllers/main_controller.dart';

class StartLayout extends GetView<MainController> {
  final Widget child;
  const StartLayout({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Column(
          children: [
            Expanded(child: child),
          ],
        ),
      );
}
