import 'package:get/get_navigation/src/root/internacionalization.dart';

class Language extends Translations {
  static Map<String, Map<String, String>> translations = {
    'en': {
      'title': 'Flutter Demo',
      'have_a_nice_day': 'Have a nice day !',
    },
    'hi': {
      'title': 'फ्लटर डेमो',
      'have_a_nice_day': 'अच्छा दिन हो !',
    },
  };

  @override
  Map<String, Map<String, String>> get keys => translations;
}
