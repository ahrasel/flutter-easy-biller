import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/settings_controller.dart';
import '../../layouts/main/widgets/main_layout_view.dart';

class SettingsPage extends GetView<SettingsController> {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MainLayoutView(
      child: Center(
        child: Text('Settings'),
      ),
    );
  }
}
