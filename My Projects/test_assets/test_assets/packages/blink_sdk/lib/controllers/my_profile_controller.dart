import 'package:get/get.dart';

class MyProfileController extends GetxController {
  List<RxBool> isExpandedPersonalInfo = [false.obs];

  List<RxBool> isExpandedBenefits = [false.obs];

  List<RxBool> isExpandedHelpSupport = [false.obs];

  expandTheExpandedList() {
    // if (isExpanded.value) {
    //   isExpanded.value = false;
    // } else {
    //   isExpanded.value = true;
    // }
  }
}
