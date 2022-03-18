import '../../layouts/main/widgets/main_layout_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/users_update_controller.dart';

class UsersUpdatePage extends GetView<UsersUpdateController> {
  @override
  Widget build(BuildContext context) {
    return MainLayoutView(
            child: Center(
        child: Text('UsersUpdate'),
      ),
    );
  }
}