// lib/login_controller.dart
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class LoginController1 extends GetxController {
  var isLoading = false.obs;
  var errorMessage = ''.obs;

  Future<void> login(String email, String password) async {
    isLoading.value = true;
    errorMessage.value = '';

    try {
      final response = await http.post(
        Uri.parse(
            'http://localhost:3000/login'), // Update with your server's URL
        headers: {'Content-Type': 'application/json'},
        body: json.encode({'email': email, 'password': password}),
      );

      if (response.statusCode == 200) {
        final responseData = json.decode(response.body);
        // Handle successful login (e.g., store token, navigate to another screen)
        print('Login successful: ${responseData['token']}');
      } else {
        final responseData = json.decode(response.body);
        errorMessage.value = responseData['message'];
      }
    } catch (e) {
      errorMessage.value = 'An error occurred. Please try again.';
    } finally {
      isLoading.value = false;
    }
  }
}
