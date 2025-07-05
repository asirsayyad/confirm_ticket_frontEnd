import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:confirmticket/first_screen/first_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../app_barscreen/appbar_screen.dart';

class FirstWelcomeScreen extends StatelessWidget {
  const FirstWelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Appbar_Screen appbar_screen=Get.put(Appbar_Screen());
    return Scaffold(
      appBar: appbar_screen.appbarmethod(),

    body: Stack(
        //stack is used cuz we using text over the image
        children: [
          Image.network(
            "assets/train.jpg",
            width: double.infinity,
            height:
                double.infinity, //this helps to fit the image properly to page
            fit: BoxFit.cover, //this helps to fit the image properly to page
          ),
          Center(
            child: AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText(
                  'Welcome To RH Solution Confirm Ticket',
                  textStyle: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
                  speed: Duration(milliseconds: 100),
                ),
              ],
              totalRepeatCount: 1, // Runs once
              pause: Duration(milliseconds: 1000),
              displayFullTextOnTap: true,  //if u click here the animation will stop and text will show fully
              repeatForever: true, //this is for loop repeatation
            ),
          ),
        ],
      ),
    );
  }
}
