import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/category_update_controller.dart';
import '../../layouts/main/widgets/main_layout_view.dart';

class CategoryUpdatePage extends GetView<CategoryUpdateController> {
  const CategoryUpdatePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MainLayoutView(
      child: Center(
        child: Text('CategoryUpdate'),
      ),
    );
  }
}
