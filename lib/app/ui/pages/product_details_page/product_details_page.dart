import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/product_details_controller.dart';
import '../../layouts/main/widgets/main_layout_view.dart';

class ProductDetailsPage extends GetView<ProductDetailsController> {
  const ProductDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MainLayoutView(
      child: Center(
        child: Text('ProductDetails'),
      ),
    );
  }
}
