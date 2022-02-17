import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/update_profile_controller.dart';
import '../../layouts/main/widgets/main_layout_view.dart';

class UpdateProfilePage extends GetView<UpdateProfileController> {
  @override
  Widget build(BuildContext context) => const MainLayoutView(
        child: Center(
          child: Text('UpdateProfile'),
        ),
      );
}
