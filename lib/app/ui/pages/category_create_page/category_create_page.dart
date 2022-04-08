import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/category_create_controller.dart';
import '../../layouts/main/widgets/main_layout_view.dart';

class CategoryCreatePage extends GetView<CategoryCreateController> {
  const CategoryCreatePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MainLayoutView(
      child: Center(
        child: Text('CategoryCreate'),
      ),
    );
  }
}
