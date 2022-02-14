import '../../layouts/main/widgets/main_layout_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/change_password_controller.dart';

class ChangePasswordPage extends GetView<ChangePasswordController> {
  @override
  Widget build(BuildContext context) {
    return MainLayoutView(
            child: Center(
        child: Text('ChangePassword'),
      ),
    );
  }
}
