import 'package:flutter/material.dart';
import 'package:flutter_get_x/dilog_alert.dart';
import 'package:get/get.dart';

class NavigatorScreen extends StatefulWidget {
  final String title;
  const NavigatorScreen({super.key, required this.title});

  @override
  State<NavigatorScreen> createState() => _NavigatorScreenState();
}

class _NavigatorScreenState extends State<NavigatorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX Example Navigator ' + widget.title),
      ),
      body: Container(
        child: Column(
          children: [
            TextButton(
                onPressed: () {
                  Get.to(() => const DilogAlert());

                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => const DilogAlert()));
                },
                child: Text('Navigator Example')),
          ],
        ),
      ),
    );
  }
}
