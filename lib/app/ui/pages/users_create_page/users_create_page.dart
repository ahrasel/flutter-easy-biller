import '../../layouts/main/widgets/main_layout_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/users_create_controller.dart';

class UsersCreatePage extends GetView<UsersCreateController> {
  @override
  Widget build(BuildContext context) {
    return MainLayoutView(
            child: Center(
        child: Text('UsersCreate'),
      ),
    );
  }
}
