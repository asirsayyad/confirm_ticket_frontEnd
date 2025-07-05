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
      backgroundColor: Colors.grey[100], // Light background
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              elevation: 2,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                child: TextField(
                  controller: controllerfirst.Textfieldfirstfromfirstscreen,
                  decoration: InputDecoration(
                    icon: Icon(Icons.train),
                    labelText: "Enter From",
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
                  controller: controllerfirst.Textfieldsecondfromfirstscreen,
                  decoration: InputDecoration(
                    icon: Icon(Icons.train),
                    labelText: "Enter To",
                    border: InputBorder.none,
                  ),
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

            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 12),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              ),
              onPressed: () {
                controllerfirst.notification();
              },
              child: Text("Search", style: TextStyle(fontSize: 16)),
            ),

          ],
        ),
      ),
    );
  }
}
