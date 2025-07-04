import 'package:confirmticket/first_screen/first_screen.dart';
import 'package:confirmticket/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ControllerSplash extends GetxController{
  @override
  void onInit() {
    delay();
    super.onInit();
  }

  void delay(){
    Future.delayed(Duration(seconds : 3 ) , (){
      Get.off(FirstScreen());

    });
  }
}