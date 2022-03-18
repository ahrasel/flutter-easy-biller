import '../../layouts/main/widgets/main_layout_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/client_create_controller.dart';

class ClientCreatePage extends GetView<ClientCreateController> {
  @override
  Widget build(BuildContext context) {
    return MainLayoutView(
            child: Center(
        child: Text('ClientCreate'),
      ),
    );
  }
}
