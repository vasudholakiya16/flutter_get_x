import 'package:get/get.dart';

class ExampleThreeController extends GetxController {
  RxBool notification = false.obs;
  set setNotification(bool value) {
    notification.value = value;
    print('Notification: ${notification.value}');
  }
}
