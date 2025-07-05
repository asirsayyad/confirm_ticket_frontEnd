import 'package:confirmticket/app_barscreen/appbar_screen.dart';
import 'package:confirmticket/first_welcome_screen/first_welcome_screen.dart';
import 'package:confirmticket/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Train_Availability_Screen/train_availabilityscreen.dart';
import 'controller_firstscreen.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Controller_firstscreen controllerfirst = Get.put(Controller_firstscreen());
    Appbar_Screen appbar_screen = Get.put(Appbar_Screen());
    return Scaffold(
      appBar: appbar_screen.appbarmethod(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: controllerfirst.Textfieldfirstfromfirstscreen,
              decoration: InputDecoration(
                icon: Icon(Icons.train),
                label: Text("Enter From"),
                border: UnderlineInputBorder(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: controllerfirst.Textfieldsecondfromfirstscreen,
              decoration: InputDecoration(
                icon: Icon(Icons.train),
                label: Text("Enter To"),
                border: UnderlineInputBorder(),
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
            },
            child: Text("Search"),
          ),
        ],
      ),
    );
  }
}
