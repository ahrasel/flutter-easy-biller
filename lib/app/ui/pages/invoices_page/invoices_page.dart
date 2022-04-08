import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/invoices_controller.dart';
import '../../layouts/main/widgets/main_layout_view.dart';

class InvoicesPage extends GetView<InvoicesController> {
  const InvoicesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MainLayoutView(
      child: Center(
        child: Text('Invoices'),
      ),
    );
  }
}
