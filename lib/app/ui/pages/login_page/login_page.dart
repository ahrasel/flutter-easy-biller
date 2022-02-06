import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/login_controller.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _emailController = TextEditingController();
    var _passwordController = TextEditingController();
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Easy Biller', style: Get.textTheme.headline3),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Form(
                child: Column(
              children: [
                FormField(builder: (FormFieldState state) {
                  return TextFormField(
                    controller: _emailController,
                    decoration: const InputDecoration(
                      labelText: 'Email',
                    ),
                    validator: (value) => controller.validateEmail(value),
                  );
                }),
                const SizedBox(height: 10),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Login', style: Get.textTheme.headline6),
                  ),
                ),
              ],
            )),
          )
        ],
      ),
    ));
  }
}
