import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller_new_account.dart';

class CreateNewAccountScreen extends StatelessWidget {
  const CreateNewAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ControllerNewAccount controllerNewAcc =Get.put(ControllerNewAccount());
    return Scaffold(
      appBar: AppBar(
        title: Text("Create New Account"),
        centerTitle: true,
      ),body: Column(children: [
      SizedBox(height: 10),

      Padding(
         padding: const EdgeInsets.all(8.0),
         child: TextField(
              controller: controllerNewAcc.textEditingControllernewusername,
              decoration: InputDecoration(
                icon: Icon(Icons.person),
                labelText: "Enter Username",

              ),

               ),
       ),
      SizedBox(height: 10),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
              controller:  controllerNewAcc.textEditingControllernewpassword,
              decoration: InputDecoration(
                icon: Icon(Icons.password),
                labelText: "Enter Password",
              ),
            ),
      ),
      SizedBox(height: 10),

      Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          decoration: InputDecoration(
            icon: Icon(Icons.password),
            labelText: "Please Re-Enter Your Password",
          ),
        ),
      ),
      SizedBox(height: 10,),
      ElevatedButton(onPressed: (){}, child:Text("create new account"))
    ]
    )


    );
  }
}
