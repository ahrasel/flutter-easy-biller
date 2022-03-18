import '../../layouts/main/widgets/main_layout_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/category_details_controller.dart';

class CategoryDetailsPage extends GetView<CategoryDetailsController> {
  @override
  Widget build(BuildContext context) {
    return MainLayoutView(
            child: Center(
        child: Text('CategoryDetails'),
      ),
    );
  }
}
