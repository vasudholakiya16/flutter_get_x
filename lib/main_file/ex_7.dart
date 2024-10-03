// lib/login_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_get_x/controller/ex_7_controller.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  final LoginController1 loginController = Get.put(LoginController1());
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() {
              if (loginController.errorMessage.isNotEmpty) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: Text(
                    loginController.errorMessage.value,
                    style: TextStyle(color: Colors.red),
                  ),
                );
              }
              return Container(); // Return an empty container if no error
            }),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(labelText: 'Email'),
            ),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            SizedBox(height: 20),
            Obx(() {
              return ElevatedButton(
                onPressed: loginController.isLoading.value
                    ? null
                    : () => loginController.login(
                          _emailController.text,
                          _passwordController.text,
                        ),
                child: loginController.isLoading.value
                    ? CircularProgressIndicator(color: Colors.white)
                    : Text('Login'),
              );
            }),
          ],
        ),
      ),
    );
  }
}
