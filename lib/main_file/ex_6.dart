import 'package:flutter/material.dart';
import 'package:flutter_get_x/controller/ex_6_controller.dart';
import 'package:get/get.dart';

class Ex6 extends StatefulWidget {
  const Ex6({super.key});

  @override
  State<Ex6> createState() => _Ex6State();
}

class _Ex6State extends State<Ex6> {
  LoginController loginController = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Generate a login form
            TextFormField(
              controller: loginController.nameController.value,
              decoration: InputDecoration(
                labelText: 'Name',
                hintText: 'Enter your name',
              ),
            ),
            TextFormField(
              controller: loginController.emailController.value,
              decoration: InputDecoration(
                labelText: 'Email',
                hintText: 'Enter your email',
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              controller: loginController.passwordController.value,
              decoration: InputDecoration(
                labelText: 'Password',
                hintText: 'Enter your password',
              ),
            ),
            SizedBox(height: 20),
            Obx(
              () => InkWell(
                onTap: () {
                  loginController.login();
                },
                child: loginController.loginStatus.value
                    ? CircularProgressIndicator()
                    : Container(
                        height: 50,
                        child: Text('Register'),
                        // color: Colors.blue,
                      ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
// ashish123@gmail.com
// ashish1234@