import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/unknown_route_controller.dart';
import '../../layouts/main/widgets/main_layout_view.dart';

class UnknownRoutePage extends GetView<UnknownRouteController> {
  const UnknownRoutePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => const MainLayoutView(
        child: Center(
          child: Text('UnknownRoute'),
        ),
      );
}
