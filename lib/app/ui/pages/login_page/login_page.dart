import 'package:easy_biller/app/controllers/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _emailController = TextEditingController();
    var _passwordController = TextEditingController();
    var _formKey = GlobalKey<FormState>();
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/logo.png',
            height: 100,
          ),
          const SizedBox(height: 10),
          Text('Login to your account', style: Get.textTheme.subtitle1),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      controller: _emailController,
                      decoration: const InputDecoration(
                        labelText: 'Email',
                        prefixIcon: Icon(Icons.email),
                      ),
                      validator: (value) => controller.validateEmail(value!),
                    ),
                    const SizedBox(height: 10),
                    Obx(() => TextFormField(
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          obscureText: controller.obscureText.value,
                          controller: _passwordController,
                          decoration: InputDecoration(
                            labelText: 'Password',
                            prefixIcon: const Icon(Icons.lock),
                            suffixIcon: InkWell(
                                onTap: () => controller.togglePassword(),
                                child: Icon(controller.obscureText.value
                                    ? Icons.visibility
                                    : Icons.visibility_off)),
                          ),
                          validator: (value) =>
                              controller.validatePassword(value!),
                        )),
                    const SizedBox(height: 10),
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            controller.login(
                                email: _emailController.text,
                                password: _passwordController.text);
                          }
                        },
                        child: Text('Login', style: Get.textTheme.headline6),
                      ),
                    ),
                    const SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.lock, color: Colors.blue),
                        const SizedBox(width: 10),
                        Text(
                          'Forgot password?',
                          style: Get.textTheme.subtitle2!.copyWith(
                            color: Colors.blue,
                          ),
                        ),
                      ],
                    ),
                  ],
                )),
          )
        ],
      ),
    ));
  }
}
