import 'package:blink_sdk/controllers/welcome_controller.dart';
import 'package:get/get.dart';

class LanguagFilterHelper {
  List<String> listOfLanguages = [];

  languageFilter(String? text, int languageSelectedIndex) {
    listOfLanguages = text!.split('|');

    if (listOfLanguages.length > 1) {
      return listOfLanguages[languageSelectedIndex];
    }

    return listOfLanguages[0];
  }

  emptyLanguageFilter() {
    listOfLanguages.length = 0;
  }
}
