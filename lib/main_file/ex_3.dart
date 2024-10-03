import 'package:flutter/material.dart';
import 'package:flutter_get_x/controller/ex_3_controller.dart';
import 'package:get/get.dart';

class Ex3 extends StatefulWidget {
  Ex3({super.key});

  @override
  State<Ex3> createState() => _Ex3State();
}

class _Ex3State extends State<Ex3> {
  ExampleThreeController exampleThreeController =
      Get.put(ExampleThreeController());
  @override
  Widget build(BuildContext context) {
    print('Have a nice day');
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Text("Notificaiton"),
              Obx(() {
                return Switch(
                  value: exampleThreeController.notification.value,
                  onChanged: (value) {
                    exampleThreeController.setNotification = value;
                  },
                );
              })
            ],
          )
        ],
      ),
    );
  }
}
