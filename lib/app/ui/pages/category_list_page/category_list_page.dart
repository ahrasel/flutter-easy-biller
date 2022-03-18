import '../../layouts/main/widgets/main_layout_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/category_list_controller.dart';

class CategoryListPage extends GetView<CategoryListController> {
  @override
  Widget build(BuildContext context) {
    return MainLayoutView(
            child: Center(
        child: Text('CategoryList'),
      ),
    );
  }
}
