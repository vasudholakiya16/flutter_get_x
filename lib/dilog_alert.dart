import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DilogAlert extends StatefulWidget {
  const DilogAlert({super.key});

  @override
  State<DilogAlert> createState() => _DilogAlertState();
}

class _DilogAlertState extends State<DilogAlert> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX Example Dialog Alert'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ListTile(
              title: Text('GetX Example Dialog Alert'),
              subtitle: Text('This is a dialog alert'),
              onTap: () {
                Get.defaultDialog(
                  title: 'GetX Example Dialog Alert',
                  middleText: 'This is a dialog alert',
                  textConfirm: 'Yes',
                  textCancel: 'No',
                  onConfirm: () {
                    Get.back();
                  },
                  confirm: TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text('Yes')),
                  cancel: TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text('No')),
                );
              },
            ),
            ListTile(
              title: Text('GetX Example Show Bottom Sheet'),
              subtitle: Text('This is a bottom sheet'),
              onTap: () {
                Get.bottomSheet(
                  Container(
                    child: Wrap(
                      children: <Widget>[
                        ListTile(
                          leading: Icon(Icons.wb_sunny),
                          title: Text('Light Theme'),
                          onTap: () {
                            Get.changeTheme(ThemeData.light());
                            Get.back();
                          },
                        ),
                        ListTile(
                          leading: Icon(Icons.nightlight_round),
                          title: Text('Dark Theme'),
                          onTap: () {
                            Get.changeTheme(ThemeData.dark());
                            Get.back();
                          },
                        ),
                      ],
                    ),
                  ),
                );

                // Get.defaultDialog(
                //   title: 'GetX Example Show Bottom Sheet',
                //   middleText: 'This is a Show Bottom Sheet',
                //   textConfirm: 'Yes',
                //   textCancel: 'No',
                //   onConfirm: () {
                //     Get.back();
                //   },
                //   confirm: TextButton(
                //       onPressed: () {
                //         Navigator.of(context).pop();
                //       },
                //       child: Text('Yes')),
                //   cancel: TextButton(
                //       onPressed: () {
                //         Navigator.of(context).pop();
                //       },
                //       child: Text('No')),
                // );
              },
            ),
            TextButton(
                onPressed: () {
                  // Navigator.of(context).pop();
                  Get.back();
                },
                child: Text('Back')),
          ],
        ),
      ),
    );
  }
}
