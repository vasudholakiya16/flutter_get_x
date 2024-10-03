import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_get_x/controller/ex_5_controller.dart';
import 'package:get/get.dart';

class Ex5 extends StatefulWidget {
  const Ex5({super.key});

  @override
  State<Ex5> createState() => _Ex5State();
}

class _Ex5State extends State<Ex5> {
  Example5Controller example5Controller = Get.put(Example5Controller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Obx(() {
            return Column(
              children: [
                CircleAvatar(
                  backgroundImage: example5Controller.imagePath.isNotEmpty
                      ? FileImage(
                          File(
                            example5Controller.imagePath.toString(),
                          ),
                        )
                      : null,
                ),
                ElevatedButton(
                  onPressed: () {
                    example5Controller.getImage();
                  },
                  child: Text('Select Image'),
                ),
              ],
            );
          })
        ],
      ),
    );
  }
}
