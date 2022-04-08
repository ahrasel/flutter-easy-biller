import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/users_list_controller.dart';
import '../../layouts/main/widgets/main_layout_view.dart';

class UsersListPage extends GetView<UsersListController> {
  const UsersListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MainLayoutView(
      child: Center(
        child: Text('UsersList'),
      ),
    );
  }
}
