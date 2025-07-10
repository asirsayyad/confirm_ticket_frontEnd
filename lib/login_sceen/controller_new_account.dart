import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ControllerNewAccount extends GetxController{
  late TextEditingController textEditingControllernewusername;
  late TextEditingController textEditingControllernewpassword;


  @override
  void onInit() {
    textEditingControllernewusername=TextEditingController();
    textEditingControllernewpassword=TextEditingController();

    super.onInit();
  }
}