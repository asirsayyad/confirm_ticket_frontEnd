import 'package:confirmticket/first_screen/controller_firstscreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller_splashScreen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ControllerSplash controllersplash = Get.put(ControllerSplash());
    return Scaffold(
      body: Center(
        child: Image.network(
          "assets/logo.png",
          height: 300, // Reduce this value to shrink the image
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
