import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Api/api_auth_service.dart';

class ControllerNewAccount extends GetxController {
  late TextEditingController usernameController;
  late TextEditingController passwordController;

  final isLoading = false.obs;

  @override
  void onInit() {
    usernameController = TextEditingController();
    passwordController = TextEditingController();
    super.onInit();
  }

  @override
  void onClose() {
    usernameController.dispose();
    passwordController.dispose();
    super.onClose();
  }

  Future<void> handleRegister(BuildContext context) async {
    final username = usernameController.text.trim();
    final password = passwordController.text.trim();

    if (username.isEmpty || password.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Please enter all fields')),
      );
      return;
    }

    isLoading.value = true;

    final result = await AuthService().registerUser(username, password);

    isLoading.value = false;

    if (result['success']) {
      debugPrint('✅ Register Success');
      debugPrint('🔐 Token: ${result['token']}');

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('✅ ${result['message']}')),
      );

      Future.delayed(Duration(seconds: 1), () {
        Navigator.pushReplacementNamed(context, '/login');
      });
    } else {
      debugPrint('❌ Register Failed');
      debugPrint('Error: ${result['message']}');

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('❌ ${result['message']}')),
      );
    }
  }
}
