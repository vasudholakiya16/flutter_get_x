import 'package:get/get.dart';

class ExampleTwoController extends GetxController {
  // double opacity = 0.4;
  RxDouble opacity = 0.4.obs;
  set setOpacity(double value) => opacity.value = value;
}
