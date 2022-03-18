import '../../layouts/main/widgets/main_layout_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/client_details_controller.dart';

class ClientDetailsPage extends GetView<ClientDetailsController> {
  @override
  Widget build(BuildContext context) {
    return MainLayoutView(
            child: Center(
        child: Text('ClientDetails'),
      ),
    );
  }
}
