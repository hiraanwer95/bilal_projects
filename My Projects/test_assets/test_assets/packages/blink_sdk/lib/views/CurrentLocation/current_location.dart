import 'dart:async';
import 'dart:math';

import 'package:blink_sdk/routes/app_pages.dart';
import 'package:blink_sdk/routes/app_routes.dart';
import 'package:blink_sdk/theme/colors.dart';
import 'package:blink_sdk/theme/icons.dart';
import 'package:blink_sdk/utils/CustomWidgets/ContentInsideCircle/content_inside_circle.dart';
import 'package:blink_sdk/utils/CustomWidgets/CustomText/custom_text.dart';
import 'package:blink_sdk/views/Login/login.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:bordered_text/bordered_text.dart';
import 'package:transparent_image/transparent_image.dart';

import '../../utils/CustomWidgets/BottomNavigationBar/bottom_navigation_bar.dart';
import '../../utils/CustomWidgets/Card/card.dart';
import '../../utils/CustomWidgets/CustomButton/custom_button.dart';
import '../../utils/CustomWidgets/InputTextField/input_text_field.dart';

class CurrentLocationScreen extends StatelessWidget {
  CurrentLocationScreen() : super();

  TextEditingController gmapController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 60,
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  flex: 2,
                  child: ContentInsideColor(
                      isDigit: false,
                      width: 40.0,
                      height: 40.0,
                      shape: BoxShape.circle,
                      roundContainerOutsideColor: Colors.white,
                      icon: Icons.favorite,
                      iconColor: Colors.white,
                      text: '<',
                      iconSize: 20.0),
                ),
                Expanded(
                  flex: 9,
                  child: InputTextField(
                    controller: gmapController,
                    height: 50.0,
                    hintText: 'Tariq RD, P.E.C.H.S, Block-2..',
                    hintTextColor: Colors.black,
                    fillColor: Colors.white,
                    strokeColor: const Color(0xFFEAEAEA),
                    roundedCornerRadius: 30.0,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
              ],
            ),
            SizedBox(
              height: 350,
            ),
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    // width: 322, // OK
                    height: 50, // Ok
// Ok

                    decoration: BoxDecoration(
                      border: Border.all(
                          color: CustomColor.ModalScreenBtnStrokeColor,
                          width: 1.0),
                      color: CustomColor.MaroonTheme,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(6.0),
                        topRight: Radius.circular(6.0),
                        bottomLeft: Radius.circular(6.0),
                        bottomRight: Radius.circular(6.0),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),

                    child:  Center(
                      child: CustomTextWidget(
                        text: 'Confirm',
                        color: CustomColor.White,
                        fontFamily: '.SF Pro Display',
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
            SizedBox(height: 20),
          ],
        ));
  }
}
