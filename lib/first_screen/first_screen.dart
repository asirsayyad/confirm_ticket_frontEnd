import 'package:confirmticket/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller_firstscreen.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Controller_firstscreen controllerfirst = Get.put(Controller_firstscreen());
    return Scaffold(
      appBar: AppBar(
        title: Image.network(
          "assets/logo.png",
          height: 150, // Reduce this value to shrink the image
          fit: BoxFit.contain,
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),

      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: controllerfirst.Textfieldfirstfromfirstscreen,
              decoration: InputDecoration(
                label: Text("Enter From"),
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: controllerfirst.Textfieldsecondfromfirstscreen,
              decoration: InputDecoration(
                label: Text("Enter To"),
                border: OutlineInputBorder(),
              ),
            ),
          ),
          SizedBox(height: 15),
          ListTile(
            leading: Icon(Icons.calendar_month_outlined),
            title: Obx(() {
              return Text(controllerfirst.rxdate.value);
            }),
            onTap: () {
              controllerfirst.datetimemethod(context);
            },
          ),
          SizedBox(height: 15),
          ElevatedButton(
            onPressed: () {
              controllerfirst.notification();
              if (controllerfirst.Textfieldfirstfromfirstscreen.text.trim() != null &&
                  controllerfirst.Textfieldsecondfromfirstscreen.text.trim() !=null &&
                  controllerfirst.rxdate.value!= "Select Date") {
                Get.to(SplashScreen());
              }
            },
            child: Text("Search"),
          ),
        ],
      ),
    );
  }
}
