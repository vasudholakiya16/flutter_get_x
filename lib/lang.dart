import 'package:get/get_navigation/src/root/internacionalization.dart';

class Languages extends Translations {
  static Map<String, Map<String, String>> translations = {
    'en_US': {
      'message': 'What is your name?',
      'Name': 'My name is Vasu',
    },
  };

  @override
  Map<String, Map<String, String>> get keys => throw UnimplementedError();
}
