import '../../layouts/main/widgets/main_layout_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/product_details_controller.dart';

class ProductDetailsPage extends GetView<ProductDetailsController> {
  @override
  Widget build(BuildContext context) {
    return MainLayoutView(
            child: Center(
        child: Text('ProductDetails'),
      ),
    );
  }
}
