import 'package:confirmticket/first_screen/first_screen.dart';
import 'package:confirmticket/login_sceen/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../first_welcome_screen/first_welcome_screen.dart';

class Appbar_Screen extends GetxController{
  AppBar appbarmethod(){
    return AppBar(
      title: GestureDetector(
        //used for image tap
        onTap: () {
          // Image tapped – no action yet
          Get.offAll(FirstWelcomeScreen());
        },
        child: Image.asset(
          "assets/logo.png",
          height: 150,
          fit: BoxFit.contain,
        ),
      ),
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
      actions: [
        TextButton.icon(
          //textButton .icon best for app bar button it provid icon and text
          onPressed: () {
            Get.to(FirstScreen());
            // Action when Login is tapped
            debugPrint("Book Ticket tapped");
          },
          icon: const Icon(Icons.confirmation_num, color: Colors.black),
          label: const Text(
            "Book Tickets Here",
            style: TextStyle(color: Colors.black),
          ),
        ),
        SizedBox(width: 8),

        TextButton.icon(
          onPressed: () {
            // Action when book ticket is tapped
            debugPrint("Login tapped");
            Get.to(LoginScreen());
          },
          icon: const Icon(Icons.person, color: Colors.black),
          label: const Text("Login", style: TextStyle(color: Colors.black)),
        ),
        SizedBox(width: 100),
      ],
    );
  }
}