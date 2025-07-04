import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

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
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
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
      );
    } else if (Textfieldsecondfromfirstscreen.text == "") {
      Get.snackbar(
        "Error",
        "Please Enter To",
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }
}
