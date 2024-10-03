import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetHeightGetWidth extends StatefulWidget {
  const GetHeightGetWidth({super.key});

  @override
  State<GetHeightGetWidth> createState() => _GetHeightGetWidthState();
}

class _GetHeightGetWidthState extends State<GetHeightGetWidth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.red,
        height: Get.height * 0.5,
        width: 100,
        child: Center(
          child: Text(
            'Height: ${MediaQuery.of(context).size.height.toString()}\nWidth: ${MediaQuery.of(context).size.width.toString()}',
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
