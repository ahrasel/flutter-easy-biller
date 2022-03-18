import '../../layouts/main/widgets/main_layout_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/category_update_controller.dart';

class CategoryUpdatePage extends GetView<CategoryUpdateController> {
  @override
  Widget build(BuildContext context) {
    return MainLayoutView(
            child: Center(
        child: Text('CategoryUpdate'),
      ),
    );
  }
}
