import '../../layouts/main/widgets/main_layout_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/product_update_controller.dart';

class ProductUpdatePage extends GetView<ProductUpdateController> {
  @override
  Widget build(BuildContext context) {
    return MainLayoutView(
            child: Center(
        child: Text('ProductUpdate'),
      ),
    );
  }
}
