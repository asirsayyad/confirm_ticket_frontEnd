import 'package:confirmticket/first_screen/first_screen.dart';
import 'package:confirmticket/first_welcome_screen/first_welcome_screen.dart';
import 'package:confirmticket/schedule_screen/schedule_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../app_barscreen/appbar_screen.dart';

class TrainAvailabilityscreen extends StatelessWidget {
  const TrainAvailabilityscreen({super.key});

  @override
  Widget build(BuildContext context) {
    Appbar_Screen appbar_screen=Get.put(Appbar_Screen());
    return Scaffold(
        appBar: appbar_screen.appbarmethod(),

body: Column(children: [ ElevatedButton(onPressed: (){  Get.to(ScheduleScreen());
    }, child:Text("schedule")

),])

    );
  }
}
