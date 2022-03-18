import '../../layouts/main/widgets/main_layout_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/category_create_controller.dart';

class CategoryCreatePage extends GetView<CategoryCreateController> {
  @override
  Widget build(BuildContext context) {
    return MainLayoutView(
            child: Center(
        child: Text('CategoryCreate'),
      ),
    );
  }
}
