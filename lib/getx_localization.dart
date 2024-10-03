import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetxLocalization extends StatefulWidget {
  const GetxLocalization({super.key});

  @override
  State<GetxLocalization> createState() => _GetxLocalizationState();
}

class _GetxLocalizationState extends State<GetxLocalization> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            ListTile(
              title: Text('message'.tr),
              subtitle: Text('Name'.tr),
            )
          ],
        ),
      ),
    );
  }
}
