import 'package:flutter/material.dart';
import 'package:flutter_get_x/controller/counter_controller.dart';
import 'package:get/get.dart';

class Ex1 extends StatefulWidget {
  const Ex1({super.key});

  @override
  State<Ex1> createState() => _Ex1State();
}

class _Ex1State extends State<Ex1> {
  final CounterController counterController = Get.put(CounterController());

  // @override
  // void initState() {
  //   super.initState();
  //   Timer.periodic(Duration(seconds: 3), (timer) {
  //     print('Timer is running');
  //     x++;
  //     setState(() {});
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    print('Ex1 build');
    return Scaffold(
      appBar: AppBar(
        title: Text('Ex1'),
      ),
      body: Column(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Obx(() {
                  print('Counter');
                  return Text('Counter: ${counterController.counter.value}');
                }),
                ElevatedButton(
                  onPressed: () {
                    counterController.incrementCounter();
                  },
                  child: Text('Increment x'),
                ),
                // Expanded(
                //   child: ListView.builder(
                //     itemCount: 100,
                //     itemBuilder: (context, index) {
                //       return ListTile(
                //         title: Text('Item $index'),
                //       );
                //     },
                //   ),
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
