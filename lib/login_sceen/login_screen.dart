import 'package:confirmticket/app_barscreen/appbar_screen.dart';
import 'package:confirmticket/login_sceen/controller_login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'create_new_account_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  @override
  Widget build(BuildContext context) {

    Appbar_Screen appbar_screen = Get.put(Appbar_Screen());
    Controller_login controllerlogin =Get.put(Controller_login());

    return Scaffold(
      appBar: appbar_screen.appbarmethod(),
      body: Center(
        // Center aligns the entire column vertically
        child: Column(
          children: [
            SizedBox(height: 100), // Push content down a bit
            CircleAvatar(radius: 40, child: Icon(Icons.person, size: 50)),
            SizedBox(height: 20),
            Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              elevation: 2,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                child: TextField(
                  controller: controllerlogin.textEditingControllerusername,
                  decoration: InputDecoration(
                    icon: Icon(Icons.person),
                    labelText: "Enter Username",
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              elevation: 2,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                child: TextField(
                  controller:  controllerlogin.textEditingControllerpassword,
                  decoration: InputDecoration(
                    icon: Icon(Icons.password_rounded),
                    labelText: "Enter Password",
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            SizedBox(height: 2,),
            InkWell(
              onTap: () {
                Get.to(CreateNewAccountScreen());
              },
              child: Text(
                "Create New Account",
                style: TextStyle(
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
            SizedBox(height: 10),


            ElevatedButton(onPressed: (){}, child: Text("Login"))
          ],
        ),
      ),
    );
  }
}
