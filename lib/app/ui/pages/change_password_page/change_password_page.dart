import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/change_password_controller.dart';
import '../../layouts/main/widgets/main_layout_view.dart';

class ChangePasswordPage extends GetView<ChangePasswordController> {
  final _newPasswordController = TextEditingController();

  final _confirmPasswordController = TextEditingController();
  final _oldPasswordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  ChangePasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MainLayoutView(
        child: Container(
          padding: const EdgeInsets.all(16),
          width: double.infinity,
          child: Form(
            key: _formKey,
            child: Obx(
              () => Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/logo.png', height: 80),
                  const SizedBox(height: 16),
                  Text(
                    'Update your account password',
                    style: Get.textTheme.headline5,
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    controller: _oldPasswordController,
                    obscureText: controller.oldPasswordObscure.value,
                    decoration: InputDecoration(
                        labelText: "Old Password",
                        prefixIcon: const Icon(Icons.lock),
                        suffixIcon: InkWell(
                          onTap: () => controller.toggleOldPassword(),
                          child: Icon(
                            controller.oldPasswordObscure.value
                                ? Icons.visibility
                                : Icons.visibility_off,
                          ),
                        )),
                    validator: (value) =>
                        controller.validateOldPassword(value!),
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    controller: _newPasswordController,
                    obscureText: controller.newPasswordObscure.value,
                    decoration: InputDecoration(
                        labelText: "New Password",
                        prefixIcon: const Icon(Icons.lock),
                        suffixIcon: InkWell(
                          onTap: () => controller.toggleNewPassword(),
                          child: Icon(
                            controller.newPasswordObscure.value
                                ? Icons.visibility
                                : Icons.visibility_off,
                          ),
                        )),
                    validator: (value) =>
                        controller.validateNewPassword(value!),
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    controller: _confirmPasswordController,
                    obscureText: controller.confirmPasswordObscure.value,
                    decoration: InputDecoration(
                      labelText: "Confirm Password",
                      prefixIcon: const Icon(Icons.lock),
                      suffixIcon: InkWell(
                        onTap: () => controller.toggleConfirmPassword(),
                        child: Icon(
                          controller.confirmPasswordObscure.value
                              ? Icons.visibility
                              : Icons.visibility_off,
                        ),
                      ),
                    ),
                    validator: (value) => controller.validateConfirmPassword(
                        value!, _newPasswordController.text),
                  ),
                  const SizedBox(height: 16),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          controller.updatePassword(
                              oldPassword: _oldPasswordController.text,
                              newPassword: _newPasswordController.text,
                              confirmPassword: _confirmPasswordController.text);
                        }
                      },
                      child: Text(
                        'Update Password',
                        style: Get.textTheme.subtitle1
                            ?.copyWith(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
}
