import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../Train_Availability_Screen/train_availabilityscreen.dart';

class Controller_firstscreen extends GetxController {
  late TextEditingController Textfieldfirstfromfirstscreen;
  late TextEditingController Textfieldsecondfromfirstscreen;
  RxString rxdate = "Select Date".obs;
  @override
  void onInit() {
    Textfieldfirstfromfirstscreen = TextEditingController();
    Textfieldsecondfromfirstscreen = TextEditingController();
    super.onInit();
  }

  void datetimemethod(dynamic context) async {
    DateTime datetimecurrent = DateTime.now();
    int currentyear = datetimecurrent.year;

    DateTime? date = await showDatePicker(
      context: context,
      initialDate: DateTime.now().add(Duration(days: 1)),
      firstDate: DateTime.now().add(Duration(days: 1)),
      lastDate: DateTime(2100),
    );

    if (date != null) {
      rxdate.value = "${DateFormat('d MMMM y').format(date)}";
    }
  }

  void notification() {
    //for snackbar or notifications in first page
    if (Textfieldfirstfromfirstscreen.text == "") {
      Get.snackbar(
        "Error",
        "Please Enter From",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.black,
        colorText: Colors.white,
      );
    } else if (Textfieldsecondfromfirstscreen.text == "") {
      Get.snackbar(
        "Error",
        "Please Enter To",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.black,
        colorText: Colors.white,
      );
    } else if (rxdate.value == "Select Date") {
      Get.snackbar(
        "Error",
        "Please Select Date",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.black,
        colorText: Colors.white,
      );
    } else if (Textfieldfirstfromfirstscreen.text.trim() != null &&
        Textfieldsecondfromfirstscreen.text.trim() != null &&
        rxdate.value != "Select Date") {
      Get.to(TrainAvailabilityscreen());
    }
  }
}
