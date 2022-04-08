// ignore_for_file: lines_longer_than_80_chars

import 'package:easy_biller/app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/account_controller.dart';
import '../../layouts/main/widgets/main_layout_view.dart';

class AccountPage extends GetView<AccountController> {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MainLayoutView(
        child: Obx(
          () => Column(
            children: [
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: const BoxDecoration(color: Colors.blue),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('assets/images/avatar.jpg'),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      '${controller.user.value.firstName} ${controller.user.value.lastName}',
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      controller.user.value.email,
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          primary: Colors.green,
                          onPrimary: Colors.green,
                        ),
                        onPressed: null,
                        child: Text(
                          'Active',
                          style: Get.textTheme.subtitle1!
                              .copyWith(color: Colors.amberAccent),
                        )),
                  ],
                ),
              ),
              _infoListItem(
                text: controller.user.value.phoneNumber,
                title: 'Contact',
                icon: Icons.phone,
              ),
              _infoListItem(
                text: controller.user.value.gender ?? 'Not Available',
                title: 'Gender',
                icon: Icons.male,
              ),
              _infoListItem(
                text: controller.user.value.dob != null
                    ? controller.user.value.dob.toString()
                    : 'Not Available',
                title: 'Date of birth',
                icon: Icons.date_range,
              ),
              _infoListItem(
                text: controller.user.value.address ?? 'Not Available',
                title: 'Address',
                icon: Icons.location_city,
              ),
              Container(
                padding: const EdgeInsets.all(16),
                width: double.infinity,
                height: 80,
                child: ElevatedButton(
                  onPressed: () => Get.toNamed(AppRoutes.updateProfile),
                  child: const Text('Edit Profile'),
                ),
              ),
            ],
          ),
        ),
      );

  Container _infoListItem({
    required String title,
    required String text,
    required IconData icon,
  }) =>
      Container(
        width: double.infinity,
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              children: [
                Icon(
                  icon,
                  size: 40,
                  color: Colors.blue,
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: Get.textTheme.subtitle2,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      text,
                      style: Get.textTheme.subtitle1,
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      );
}
