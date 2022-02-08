import '../../layouts/main/widgets/main_layout_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/invoices_controller.dart';

class InvoicesPage extends GetView<InvoicesController> {
  @override
  Widget build(BuildContext context) {
    return MainLayoutView(
            child: Center(
        child: Text('Invoices'),
      ),
    );
  }
}
