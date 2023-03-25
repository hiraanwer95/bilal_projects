import 'dart:async';

import 'package:blink_sdk/controllers/welcome_controller.dart';
import 'package:blink_sdk/routes/app_pages.dart';
import 'package:blink_sdk/routes/app_routes.dart';
import 'package:blink_sdk/theme/colors.dart';
import 'package:blink_sdk/theme/icons.dart';
import 'package:blink_sdk/utils/SharedPreferences/get_shared_preferences.dart';
import 'package:blink_sdk/views/Login/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:bordered_text/bordered_text.dart';
import 'package:transparent_image/transparent_image.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen() : super();

  routing() async {
    WelcomeController _welcomeController = Get.isRegistered<WelcomeController>()
        ? Get.find()
        : Get.put(WelcomeController());
    GetSharedPreferences _getSharedPreferences = GetSharedPreferences();

    final isRestaurantBranchIdProvided =
        await _getSharedPreferences.getInt("restaurantBranchId");

    if (isRestaurantBranchIdProvided != null) {
      _welcomeController.restaurantBranchId.value =
          isRestaurantBranchIdProvided;

      _welcomeController.lastDeliveryTypeSelected.value =
          await _getSharedPreferences.getString("lastDeliveryTypeSelected");
      // getAtFromTo(_welcomeController.lastDeliveryTypeSelected.value);
      _welcomeController.areaNameSelected.value =
          await _getSharedPreferences.getString("areaNameSelected");
      _welcomeController.branchNameSelected.value =
          await _getSharedPreferences.getString("branchNameSelected");

      print(
          "Restaurant Branch ID :: ${_welcomeController.restaurantBranchId.value}");

      print(
          "Area Name Selected ID :: ${_welcomeController.areaNameSelected.value}");

      print(
          " Branch Name Selected ID :: ${_welcomeController.branchNameSelected.value}");

      Timer(const Duration(seconds: 3), () => Get.toNamed(AppRoutes.NEW_HOME));
    } else {
      Timer(const Duration(seconds: 3), () => Get.toNamed(AppRoutes.WELCOME));
    }
  }

  @override
  Widget build(BuildContext context) {
    routing();

    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width * 1,
        height: MediaQuery.of(context).size.height * 1,
        color: CustomColor.MaroonTheme,
        child: Center(
          child: Image.asset(
            Images.Logo,
            //  fit: BoxFit.cover,
            width: 250,
            height: 250,
          ),
        ),
      ),
      //   floatingActionButton: BorderedText(
      //     strokeWidth: 4.0,
      //     strokeColor: Colors.transparent,
      //     child: const Text(
      //   "Powered by BLINK CO.",
      //   style:  TextStyle(
      //       color: Colors.white,
      //       fontSize: 18.0,
      //       fontWeight: FontWeight.w400,
      //       fontFamily: '.SF Pro Display',
      //       decoration: TextDecoration.none),
      // ),
      //   ),

      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Expanded(
          //   flex: 2,
          //   child: CustomTextWidget(
          //     text: "Hey Welcome to BurgerLab!",
          //     fontFamily: '.SF Pro Display',
          //     fontSize: 35.0,
          //     color: CustomColor.WelcomeColor,
          //     fontWeight: FontWeight.bold,
          //   ),
          // ),

          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'Powered by ',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                      fontWeight: FontWeight.w400,
                      fontFamily: '.SF Pro Display',
                      decoration: TextDecoration.none),
                ),
                WidgetSpan(
                  child: Image.asset(
                    Images.Leaf,
                    //  fit: BoxFit.cover,
                    width: 40,
                    height: 40,
                  ),
                ),
                TextSpan(
                  text: 'BLINK CO. ',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 17.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: '.SF Pro Display',
                      decoration: TextDecoration.none),
                ),
              ],
            ),
          ),
        ],
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
