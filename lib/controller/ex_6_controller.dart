import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_get_x/main_file/ex_7.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

class LoginController extends GetxController {
  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;
  final nameController = TextEditingController().obs;

  RxBool loginStatus = false.obs;

  void login() async {
    try {
      print('Logging in...');
      // Prepare the request body
      Map<String, dynamic> newData = {
        'email': emailController.value.text,
        'password': passwordController.value.text,
        'userName': nameController.value.text,
      };

      // Send the POST request
      final response = await post(
        Uri.parse("http://localhost:3000/registration"),
        body: jsonEncode(newData),
        headers: {
          'Content-Type': 'application/json',
        },
      );

      var data = jsonDecode(response.body);
      print(response.statusCode);
      print(data);

      // Check response status
      if (response.statusCode == 200) {
        print("Login Success");
        Get.snackbar('LogIn Success', 'Welcome',
            snackPosition: SnackPosition.BOTTOM);
        Get.to(LoginScreen());
      } else {
        loginStatus.value = false;
        Get.snackbar('LogIn Failed', 'Invalid Email or Password',
            snackPosition: SnackPosition.BOTTOM);
      }
    } catch (e) {
      loginStatus.value = false;
      Get.snackbar('Error', e.toString(), snackPosition: SnackPosition.BOTTOM);
    }
  }

  void loginPg() {}
}
