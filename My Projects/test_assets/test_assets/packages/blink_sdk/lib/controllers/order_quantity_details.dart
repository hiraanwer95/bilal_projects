import 'package:get/get.dart';

class OrderQuantityDetailsController extends GetxController {
  RxBool isAddToCart = false.obs;

  List<RxBool> isMealFlutterSwitches = [false.obs, false.obs, false.obs];
  List<RxBool> isAddOnsFlutterSwitches = [false.obs, false.obs, false.obs];

  RxInt flutterSwitchIndex = 0.obs;

  RxInt addToCartCounter = 0.obs;
  RxString addToCartString = "".obs;


  
}
