import '../../layouts/main/widgets/main_layout_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/client_update_controller.dart';

class ClientUpdatePage extends GetView<ClientUpdateController> {
  @override
  Widget build(BuildContext context) {
    return MainLayoutView(
            child: Center(
        child: Text('ClientUpdate'),
      ),
    );
  }
}
