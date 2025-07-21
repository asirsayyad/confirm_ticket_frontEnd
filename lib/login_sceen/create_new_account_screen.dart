import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controller_new_account.dart';

class CreateNewAccountScreen extends StatelessWidget {
  const CreateNewAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ControllerNewAccount controllerNewAcc = Get.put(ControllerNewAccount());

    return Scaffold(
      appBar: AppBar(
        title: Text("Create New Account"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: controllerNewAcc.usernameController,
                decoration: InputDecoration(
                  icon: Icon(Icons.person),
                  labelText: "Enter Username",
                ),
              ),
            ),

            SizedBox(height: 10),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: controllerNewAcc.passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  icon: Icon(Icons.password),
                  labelText: "Enter Password",
                ),
              ),
            ),

            SizedBox(height: 10),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  icon: Icon(Icons.password),
                  labelText: "Please Re-Enter Your Password",
                ),
              ),
            ),

            SizedBox(height: 20),

            Obx(() => ElevatedButton(
              onPressed: controllerNewAcc.isLoading.value
                  ? null
                  : () => controllerNewAcc.handleRegister(context),
              child: controllerNewAcc.isLoading.value
                  ? SizedBox(
                width: 20,
                height: 20,
                child: CircularProgressIndicator(color: Colors.white, strokeWidth: 2),
              )
                  : Text("Create New Account"),
            )),
          ],
        ),
      ),
    );
  }
}
