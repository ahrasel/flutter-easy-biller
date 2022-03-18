import '../../layouts/main/widgets/main_layout_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/product_create_controller.dart';

class ProductCreatePage extends GetView<ProductCreateController> {
  @override
  Widget build(BuildContext context) {
    return MainLayoutView(
            child: Center(
        child: Text('ProductCreate'),
      ),
    );
  }
}
