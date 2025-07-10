import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class Controller_login extends GetxController{
  late TextEditingController textEditingControllerusername;
  late TextEditingController textEditingControllerpassword;


  @override
  void onInit() {
    textEditingControllerusername=TextEditingController();
    textEditingControllerpassword=TextEditingController();

    super.onInit();
  }
}