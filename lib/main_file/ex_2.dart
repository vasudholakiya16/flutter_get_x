import 'package:flutter/material.dart';
import 'package:flutter_get_x/controller/ex_2_controller.dart';
import 'package:get/get.dart';

class Ex2 extends StatefulWidget {
  Ex2({Key? key}) : super(key: key);

  @override
  State<Ex2> createState() => _Ex2State();
}

class _Ex2State extends State<Ex2> {
  ExampleTwoController exampleTwoController = Get.put(ExampleTwoController());
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print('Ex2 build');
    return Scaffold(
      body: Column(
        children: [
          Obx(() {
            return Container(
              height: 200,
              width: 200,
              color: Colors.red.withOpacity(exampleTwoController.opacity.value),
            );
          }),
          Obx(() {
            return Slider(
                value: exampleTwoController.opacity.value,
                onChanged: (value) {
                  print(value);
                  exampleTwoController.setOpacity = value;
                });
          }),
        ],
      ),
    );
  }
}
