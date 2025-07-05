import 'package:confirmticket/app_barscreen/appbar_screen.dart';
import 'package:flutter/material.dart';

class ScheduleScreen extends StatelessWidget {
  const ScheduleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Appbar_Screen appBar_screen=Appbar_Screen();
    return Scaffold(
      appBar: appBar_screen.appbarmethod(),

    );
  }
}
