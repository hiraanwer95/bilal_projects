import 'package:blink_sdk/controllers/home_controller.dart';
import 'package:blink_sdk/routes/app_routes.dart';
import 'package:blink_sdk/theme/colors.dart';
import 'package:blink_sdk/utils/CustomWidgets/CustomText/custom_text.dart';
import 'package:blink_sdk/views/WelcomeScreen/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:transparent_image/transparent_image.dart';

import '../../controllers/welcome_controller.dart';
import '../../theme/icons.dart';
import '../CustomWidgets/CustomButton/custom_button.dart';
import '../CustomWidgets/InputTextField/input_text_field.dart';

class BottomSheetCustom {
  var dropdownValue = 'One';

  final WelcomeController _welcome = Get.find();
  final HomeController _homeController = Get.isRegistered<HomeController>()
      ? Get.find()
      : Get.put(HomeController());

  myProfileBottomSheet(BuildContext context) {
    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (context) {
          return Container(
            color: Color(0xFF737373),
            //height: 1000,
            child: Container(
              height: MediaQuery.of(context).size.height * 1.05,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(8.0),
                  topRight: Radius.circular(8.0),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          GestureDetector(
                            onTap: () => Navigator.pop(context),
                            child: FadeInImage.assetNetwork(
                              width: 30,
                              height: 30,
                              placeholder: Images.kTransparentImage,
                              image:
                                  'https://em-cdn.eatmubarak.pk/flutter/down-arrow.png',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Container(
                          child: Column(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.grey,
                                radius: 70.0,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              CustomTextWidget(
                                isUnderline: true,
                                text: 'upload your picture',
                                fontSize: 13.0,
                                color: const Color(0xFF909090),
                                fontFamily: '.SF Pro Display',
                                fontWeight: FontWeight.normal,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.start,
                  //   mainAxisSize: MainAxisSize.max,
                  //   children: [
                  //     SizedBox(
                  //       width: 20,
                  //     ),
                  //     Expanded(
                  //       flex: 2,
                  //       child: CustomTextWidget(
                  //         text: 'Full Name',
                  //         fontSize: 13.0,
                  //         color: Colors.black,
                  //         fontFamily: '.SF Pro Display',
                  //         fontWeight: FontWeight.w600,
                  //       ),
                  //     ),
                  //     SizedBox(
                  //       width: 20,
                  //     ),
                  //   ],
                  // ),
                  // SizedBox(
                  //   height: 4,
                  // ),
                  Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xFFECECEC),
                            border: Border.all(
                              color: Color(0xFFECECEC),
                            ),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(6.0),
                              topRight: Radius.circular(6.0),
                              bottomLeft: Radius.circular(6.0),
                              bottomRight: Radius.circular(6.0),
                            ),
                          ),
                          height: 50,
                          child: InputTextField(
                            height: 13.0,
                            width: 13.0,
                            hintText: 'Enter your full name',
                            hintTextColor: const Color(0xFFA0A0A0),
                            fillColor: Colors.white,
                            strokeColor: Colors.transparent,
                            roundedCornerRadius: 0.0,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        flex: 2,
                        child: CustomTextWidget(
                          text: 'Name cannot be longer than 25 letters.',
                          fontSize: 12.0,
                          color: const Color(0xFFA0A0A0),
                          fontFamily: '.SF Pro Display',
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                    ],
                  ),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.start,
                  //   mainAxisSize: MainAxisSize.max,
                  //   children: [
                  //     SizedBox(
                  //       width: 20,
                  //     ),
                  //     Expanded(
                  //       flex: 2,
                  //       child: CustomTextWidget(
                  //         text: 'Email',
                  //         fontSize: 13.0,
                  //         color: Colors.black,
                  //         fontFamily: '.SF Pro Display',
                  //         fontWeight: FontWeight.w600,
                  //       ),
                  //     ),
                  //     SizedBox(
                  //       width: 20,
                  //     ),
                  //   ],
                  // ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xFFECECEC),
                            border: Border.all(
                              color: Color(0xFFECECEC),
                            ),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(6.0),
                              topRight: Radius.circular(6.0),
                              bottomLeft: Radius.circular(6.0),
                              bottomRight: Radius.circular(6.0),
                            ),
                          ),
                          height: 50,
                          child: InputTextField(
                            height: 13.0,
                            width: 13.0,
                            hintText: 'Enter your email',
                            hintTextColor: const Color(0xFFA0A0A0),
                            fillColor: Colors.white,
                            strokeColor: Colors.transparent,
                            roundedCornerRadius: 0.0,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                    ],
                  ),
                  // SizedBox(
                  //   height: 4,
                  // ),
                  // SizedBox(
                  //   height: 4,
                  // ),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.start,
                  //   mainAxisSize: MainAxisSize.max,
                  //   children: [
                  //     SizedBox(
                  //       width: 20,
                  //     ),
                  //     Expanded(
                  //       flex: 2,
                  //       child: CustomTextWidget(
                  //         text: 'Phone Number',
                  //         fontSize: 13.0,
                  //         color: Colors.black,
                  //         fontFamily: '.SF Pro Display',
                  //         fontWeight: FontWeight.w600,
                  //       ),
                  //     ),
                  //   ],
                  // ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(
                          // width: 322, // OK
                          height: 50, // Ok

                          child: Center(
                            child: DropdownButton<String>(
                              value: "+ 91",
                              underline: SizedBox(),
                              onChanged: (newValue) {
                                dropdownValue = newValue ?? "";
                              },
                              items: <String>[
                                '+ 91',
                                '+ 93',
                                '+ 92',
                                '+ 44'
                              ].map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem(
                                  value: value,
                                  child: CustomTextWidget(
                                    text: value,
                                    fontFamily: '.SF Pro Display',
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.bold,
                                    color: const Color(0xFF9A9A9A),
                                  ),
                                );
                              }).toList(),
                            ),
                          ),
                          // Ok

                          decoration: BoxDecoration(
                            border: Border.all(
                                color: CustomColor.ModalScreenBtnStrokeColor,
                                width: 1.0),
                            color: const Color(0xFFF8F8F8),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(6.0),
                              topRight: Radius.circular(6.0),
                              bottomLeft: Radius.circular(6.0),
                              bottomRight: Radius.circular(6.0),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Expanded(
                        flex: 8,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xFFECECEC),
                            border: Border.all(
                              color: Color(0xFFECECEC),
                            ),
                            borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(6.0),
                              bottomRight: Radius.circular(6.0),
                            ),
                          ),
                          height: 50,
                          child: InputTextField(
                            isNumberInputType: true,
                            height: 13.0,
                            width: 13.0,
                            hintText: 'Enter your phone number',
                            hintTextColor: const Color(0xFFA0A0A0),
                            fillColor: Colors.white,
                            strokeColor: Colors.transparent,
                            roundedCornerRadius: 0.0,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                    ],
                  ),

                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xFFECECEC),
                            border: Border.all(
                              color: Color(0xFFECECEC),
                            ),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(6.0),
                              topRight: Radius.circular(6.0),
                              bottomLeft: Radius.circular(6.0),
                              bottomRight: Radius.circular(6.0),
                            ),
                          ),
                          height: 50,
                          child: InputTextField(
                            height: 13.0,
                            width: 13.0,
                            hintText: 'Enter your password',
                            hintTextColor: const Color(0xFFA0A0A0),
                            fillColor: Colors.white,
                            strokeColor: Colors.transparent,
                            roundedCornerRadius: 0.0,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        flex: 2,
                        child: CustomTextWidget(
                          text: 'Password must be 8 characters.',
                          fontSize: 12.0,
                          color: const Color(0xFFA0A0A0),
                          fontFamily: '.SF Pro Display',
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xFFECECEC),
                            border: Border.all(
                              color: Color(0xFFECECEC),
                            ),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(6.0),
                              topRight: Radius.circular(6.0),
                              bottomLeft: Radius.circular(6.0),
                              bottomRight: Radius.circular(6.0),
                            ),
                          ),
                          height: 50,
                          child: InputTextField(
                            height: 13.0,
                            width: 13.0,
                            hintText: 'Re-enter password',
                            hintTextColor: const Color(0xFFA0A0A0),
                            fillColor: Colors.white,
                            strokeColor: Colors.transparent,
                            roundedCornerRadius: 0.0,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                spreadRadius: 3,
                                blurRadius: 7,
                                offset:
                                    Offset(0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                          height: 60,
                          child: Row(
                            children: [
                              Expanded(
                                flex: 2,
                                child: Container(
                                  height: 50,
                                  child: CustomButton(
                                      onPressed: () => Get.toNamed(
                                          AppRoutes.CONGRATULATIONS),
                                      btnTextFontSize: 16.0,
                                      btnBackgroundColor:
                                          CustomColor.MaroonTheme,
                                      borderRadius: 4.0,
                                      btnText: 'Register',
                                      btnTextColor: CustomColor.White,
                                      btnTextFontFamily: '.SF Pro Display'),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(
                          height: 30,
                          child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    child: Center(
                                      child: CustomTextWidget(
                                        text: 'Continue as Guest',
                                        fontFamily: '.SF Pro Display',
                                        fontSize: 15.0,
                                        color: Color(0xFFA9A9A9),
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                ),
                              ]),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          );
        });
  }

  loginWithPhoneNumberOTPBottomSheet(BuildContext context) {
    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (context) {
          return Container(
            color: Color(0xFF737373),
            //height: 1000,
            child: Container(
              height: 690,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(8.0),
                  topRight: Radius.circular(8.0),
                ),
              ),
              child: Column(
                children: [
                  // const SizedBox(
                  //   height: 10,
                  // ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          GestureDetector(
                            onTap: () => Navigator.pop(context),
                            child: FadeInImage.assetNetwork(
                              width: 30,
                              height: 30,
                              placeholder: Images.kTransparentImage,
                              image:
                                  'https://em-cdn.eatmubarak.pk/flutter/down-arrow.png',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Container(
                      color: Colors.white,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            flex: 2,
                            child: Image.asset(
                              Images.Logo,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                  // const SizedBox(
                  //   height: 10,
                  // ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      color: Colors.white,
                      child: Column(
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              SizedBox(
                                width: 20,
                              ),
                              Expanded(
                                flex: 2,
                                child: CustomTextWidget(
                                  text: 'OTP Verification',
                                  fontFamily: '.SF Pro Display',
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              SizedBox(
                                width: 20,
                              ),
                              Expanded(
                                flex: 2,
                                child: CustomTextWidget(
                                  text:
                                      'We${"'"}ve sent a OTP pin to your number.',
                                  fontFamily: '.SF Pro Display',
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.normal,
                                  color: const Color(0xFF909090),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  // const SizedBox(
                  //   height: 5,
                  // ),

                  // const SizedBox(
                  //   height: 10,
                  // ),
                  Expanded(
                    flex: 1,
                    child: GestureDetector(
                      child: Container(
                        child: Row(
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                // width: 322, // OK
                                height: 50, // Ok

                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: const Color(0xFFE2E2E2),
                                      width: 1.0),
                                  color: Colors.white,
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(6.0),
                                    topRight: Radius.circular(6.0),
                                    bottomLeft: Radius.circular(6.0),
                                    bottomRight: Radius.circular(6.0),
                                  ),
                                ),

                                child: InputTextField(
                                  // isSearch: _homeController,
                                  // controller: searchController,
                                  isNextNodeFocus: true,
                                  isNumberInputType: true,
                                  isTextAlignLeft: false,
                                  isTextFieldFontBlack: true,
                                  height: 30.0,
                                  hintText: '0',
                                  hintTextColor: Colors.black,
                                  fillColor: Colors.transparent,
                                  strokeColor: Colors.transparent,
                                  roundedCornerRadius: 30.0,
                                  hintTextSize: 15.0,
                                  textFontSize: 15.0,
                                  isPrefixIcon: false,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                // width: 322, // OK
                                height: 50, // Ok

                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: const Color(0xFFE2E2E2),
                                      width: 1.0),
                                  color: Colors.white,
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(6.0),
                                    topRight: Radius.circular(6.0),
                                    bottomLeft: Radius.circular(6.0),
                                    bottomRight: Radius.circular(6.0),
                                  ),
                                ),

                                child: InputTextField(
                                  // isSearch: _homeController,
                                  // controller: searchController,
                                  isTextAlignLeft: false,
                                  isNumberInputType: true,
                                  isNextNodeFocus: true,

                                  isTextFieldFontBlack: true,
                                  height: 30.0,
                                  hintText: '0',
                                  hintTextColor: Colors.black,
                                  fillColor: Colors.transparent,
                                  strokeColor: Colors.transparent,
                                  roundedCornerRadius: 30.0,
                                  hintTextSize: 15.0,
                                  textFontSize: 15.0,
                                  isPrefixIcon: false,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                // width: 322, // OK
                                height: 50, // Ok

                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: const Color(0xFFE2E2E2),
                                      width: 1.0),
                                  color: Colors.white,
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(6.0),
                                    topRight: Radius.circular(6.0),
                                    bottomLeft: Radius.circular(6.0),
                                    bottomRight: Radius.circular(6.0),
                                  ),
                                ),

                                child: InputTextField(
                                  // isSearch: _homeController,
                                  // controller: searchController,
                                  isTextAlignLeft: false,
                                  isNumberInputType: true,
                                  isNextNodeFocus: true,

                                  isTextFieldFontBlack: true,
                                  height: 30.0,
                                  hintText: '0',
                                  hintTextColor: Colors.black,
                                  fillColor: Colors.transparent,
                                  strokeColor: Colors.transparent,
                                  roundedCornerRadius: 30.0,
                                  hintTextSize: 15.0,
                                  textFontSize: 15.0,
                                  isPrefixIcon: false,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                // width: 322, // OK
                                height: 50, // Ok

                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: const Color(0xFFE2E2E2),
                                      width: 1.0),
                                  color: Colors.white,
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(6.0),
                                    topRight: Radius.circular(6.0),
                                    bottomLeft: Radius.circular(6.0),
                                    bottomRight: Radius.circular(6.0),
                                  ),
                                ),

                                child: InputTextField(
                                  // isSearch: _homeController,
                                  // controller: searchController,
                                  isTextAlignLeft: false,
                                  isNumberInputType: true,
                                  isNextNodeFocus: true,

                                  isTextFieldFontBlack: true,
                                  height: 30.0,
                                  hintText: '0',
                                  hintTextColor: Colors.black,
                                  fillColor: Colors.transparent,
                                  strokeColor: Colors.transparent,
                                  roundedCornerRadius: 30.0,
                                  hintTextSize: 15.0,
                                  textFontSize: 15.0,
                                  isPrefixIcon: false,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Expanded(
                    flex: 1,
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                        myProfileBottomSheet(context);
                      },
                      child: Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            flex: 2,
                            child: Container(
                              //   width: 50, // OK
                              height: 50, // Ok
                              decoration: BoxDecoration(
                                color: CustomColor.MaroonTheme,
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(6.0),
                                  topRight: Radius.circular(6.0),
                                  bottomLeft: Radius.circular(6.0),
                                  bottomRight: Radius.circular(6.0),
                                ),
                              ),

                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CustomTextWidget(
                                    text: 'Continue',
                                    fontSize: 16.0,
                                    color: Colors.white,
                                    fontFamily: '.SF Pro Display',
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 150,
                  ),
                ],
              ),
            ),
          );
        });
  }

  loginWithPhoneNumberBottomSheet(BuildContext context) {
    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (context) {
          return Container(
            color: Color(0xFF737373),
            //height: 1000,
            child: Container(
              height: 690,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(8.0),
                  topRight: Radius.circular(8.0),
                ),
              ),
              child: Column(
                children: [
                  // const SizedBox(
                  //   height: 10,
                  // ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          GestureDetector(
                            onTap: () => Navigator.pop(context),
                            child: FadeInImage.assetNetwork(
                              width: 30,
                              height: 30,
                              placeholder: Images.kTransparentImage,
                              image:
                                  'https://em-cdn.eatmubarak.pk/flutter/down-arrow.png',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Container(
                      color: Colors.white,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            flex: 2,
                            child: Image.asset(
                              Images.Logo,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                  // const SizedBox(
                  //   height: 10,
                  // ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      color: Colors.white,
                      child: Column(
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              SizedBox(
                                width: 20,
                              ),
                              Expanded(
                                flex: 2,
                                child: CustomTextWidget(
                                  text: 'Email phone number',
                                  fontFamily: '.SF Pro Display',
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              SizedBox(
                                width: 20,
                              ),
                              Expanded(
                                flex: 2,
                                child: CustomTextWidget(
                                  text:
                                      'you${"'"}ll receive a 4 digits code for phone no verification.',
                                  fontFamily: '.SF Pro Display',
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.normal,
                                  color: const Color(0xFF909090),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  // const SizedBox(
                  //   height: 5,
                  // ),

                  // const SizedBox(
                  //   height: 10,
                  // ),
                  Expanded(
                    flex: 1,
                    child: GestureDetector(
                      child: Container(
                        child: Row(
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              flex: 2,
                              child: Container(
                                // width: 322, // OK
                                height: 50,
                                padding: EdgeInsets.only(
                                  left: 6,
                                ), // Ok

                                // ignore: sort_child_properties_last
                                child: DropdownButton<String>(
                                  value: "+91",
                                  underline: const SizedBox(),
                                  onChanged: (newValue) {
                                    dropdownValue = newValue ?? "";
                                  },
                                  items: <String>['+91', '+ 93', '+ 92', '+ 44']
                                      .map<DropdownMenuItem<String>>(
                                          (String value) {
                                    return DropdownMenuItem(
                                      value: value,
                                      child: CustomTextWidget(
                                        text: value,
                                        fontFamily: '.SF Pro Display',
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black.withOpacity(0.5),
                                      ),
                                    );
                                  }).toList(),
                                ),
// Ok

                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color:
                                          CustomColor.ModalScreenBtnStrokeColor,
                                      width: 1.0),
                                  color: const Color(0xFFF8F8F8),
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(6.0),
                                    topRight: Radius.circular(6.0),
                                    bottomLeft: Radius.circular(6.0),
                                    bottomRight: Radius.circular(6.0),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              flex: 8,
                              child: Container(
                                // width: 322, // OK
                                height: 50, // Ok

                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: const Color(0xFFE2E2E2),
                                      width: 1.0),
                                  color: Colors.white,
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(6.0),
                                    topRight: Radius.circular(6.0),
                                    bottomLeft: Radius.circular(6.0),
                                    bottomRight: Radius.circular(6.0),
                                  ),
                                ),

                                child: InputTextField(
                                  // isSearch: _homeController,
                                  // controller: searchController,
                                  isTextFieldFontBlack: true,
                                  height: 30.0,
                                  hintText: 'Search',
                                  hintTextColor: Colors.black.withOpacity(0.5),
                                  fillColor: Colors.transparent,
                                  strokeColor: Colors.transparent,
                                  roundedCornerRadius: 30.0,
                                  hintTextSize: 15.0,
                                  textFontSize: 15.0,
                                  isPrefixIcon: false,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  // const SizedBox(
                  //   height: 10,
                  // ),
                  Expanded(
                    flex: 1,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          flex: 2,
                          child: InkWell(
                            onTap: () {
                              Navigator.pop(context);
                              loginWithPhoneNumberOTPBottomSheet(context);
                            },
                            child: Container(
                              //   width: 50, // OK
                              height: 50, // Ok
                              decoration: BoxDecoration(
                                color: CustomColor.MaroonTheme,
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(10.0),
                                  topRight: Radius.circular(10.0),
                                  bottomLeft: Radius.circular(10.0),
                                  bottomRight: Radius.circular(10.0),
                                ),
                              ),

                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CustomTextWidget(
                                    text: 'Continue',
                                    fontSize: 20.0,
                                    color: Colors.white,
                                    fontFamily: '.SF Pro Display',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),

                  Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(
                          height: 30,
                          child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  flex: 2,
                                  child: const Divider(
                                    color: Color(0xFFE8E8E8),
                                    thickness: 1,
                                    indent: 1,
                                    endIndent: 10,
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    child: Center(
                                      child: CustomTextWidget(
                                        text: 'OR',
                                        fontFamily: '.SF Pro Display',
                                        fontSize: 15.0,
                                        color: Color(0xFFA9A9A9),
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: const Divider(
                                    color: Color(0xFFE8E8E8),
                                    thickness: 1,
                                    indent: 1,
                                    endIndent: 10,
                                  ),
                                ),
                              ]),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),

                  Expanded(
                    flex: 1,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            //   width: 50, // OK
                            height: 50, // Ok
                            decoration: BoxDecoration(
                              color: CustomColor.Black,
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(10.0),
                                topRight: Radius.circular(10.0),
                                bottomLeft: Radius.circular(10.0),
                                bottomRight: Radius.circular(10.0),
                              ),
                            ),

                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomTextWidget(
                                  text: 'Sign in with Apple',
                                  fontSize: 20.0,
                                  color: Colors.white,
                                  fontFamily: '.SF Pro Display',
                                  fontWeight: FontWeight.w600,
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          );
        });
  }

  supportCenterBottomSheet(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            color: Color(0xFF737373),
            height: 400,
            child: Container(
              height: 400,
              decoration: BoxDecoration(
                color: Theme.of(context).canvasColor,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(8.0),
                  topRight: Radius.circular(8.0),
                ),
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          GestureDetector(
                            onTap: () => Navigator.pop(context),
                            child: FadeInImage.assetNetwork(
                              width: 30,
                              height: 30,
                              placeholder: Images.kTransparentImage,
                              image:
                                  'https://em-cdn.eatmubarak.pk/flutter/down-arrow.png',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 6,
                    child: Container(
                      child: Row(
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            flex: 2,
                            child: Image.network(
                              _homeController.supportScreenData["logo"]!.value,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          CustomTextWidget(
                            text: 'Support Center',
                            fontFamily: '.SF Pro Display',
                            fontSize: 13.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          CustomTextWidget(
                            text: 'For queries, please contact us at',
                            fontFamily: '.SF Pro Display',
                            fontSize: 12.0,
                            fontWeight: FontWeight.normal,
                            color: const Color(0xFF909090),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  _homeController.supportScreenData["email"]?.value != ""
                      ? Expanded(
                          flex: 2,
                          child: GestureDetector(
                            onTap: () {
                              print("kk mart!");
                              Get.toNamed(AppRoutes.NEW_HOME);
                            },
                            child: Container(
                              child: Row(
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
                                            color: CustomColor
                                                .ModalScreenBtnStrokeColor,
                                            width: 1.0),
                                        color: const Color(0xFFEA4335),
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
                                            offset: Offset(0,
                                                3), // changes position of shadow
                                          ),
                                        ],
                                      ),

                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          FadeInImage.assetNetwork(
                                            placeholder:
                                                Images.kTransparentImage,
                                            image:
                                                'https://em-cdn.eatmubarak.pk/flutter/mail.png',
                                            fit: BoxFit.fill,
                                            width: 30,
                                            height: 30,
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          CustomTextWidget(
                                            text: 'info@burgerlab.com.pk',
                                            fontSize: 13.0,
                                            color: Colors.white,
                                            fontFamily: '.SF Pro Display',
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      : Container(),
                  const SizedBox(
                    height: 10,
                  ),
                  _homeController.supportScreenData["contact"]!.value != ""
                      ? Expanded(
                          flex: 2,
                          child: Row(
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                flex: 2,
                                child: Container(
                                  //   width: 50, // OK
                                  height: 50, // Ok
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: CustomColor.LocateOnMapBtnColor,
                                        width: 1.0),
                                    color: CustomColor.White,
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(6.0),
                                      topRight: Radius.circular(6.0),
                                      bottomLeft: Radius.circular(6.0),
                                      bottomRight: Radius.circular(6.0),
                                    ),
                                  ),

                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      FadeInImage.assetNetwork(
                                        placeholder: Images.kTransparentImage,
                                        image:
                                            'https://em-cdn.eatmubarak.pk/flutter/phone.png',
                                        fit: BoxFit.fill,
                                        width: 30,
                                        height: 30,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      CustomTextWidget(
                                        text: '021-111-121-493',
                                        fontSize: 13.0,
                                        color: const Color(0xFF424242),
                                        fontFamily: '.SF Pro Display',
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                            ],
                          ),
                        )
                      : Container(),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          );
        });
  }

  showBottomSheetHomeDelivery(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            color: Color(0xFF737373),
            height: 422,
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).canvasColor,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 25,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            flex: 1,
                            child: GestureDetector(
                              onTap: () => Navigator.pop(context),
                              child: FadeInImage.assetNetwork(
                                width: 30,
                                height: 30,
                                placeholder: Images.kTransparentImage,
                                image:
                                    'https://em-cdn.eatmubarak.pk/flutter/cross-bg.png',
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 40,
                          ),
                          Expanded(
                            flex: 5,
                            child: Container(
                              child: CustomTextWidget(
                                text: 'Select your location',
                                fontSize: 20.0,
                                fontFamily: '.SF Pro Display',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      InkWell(
                        onTap: () => _welcome
                            .showCustomDialogForCityHomeDelivery(context),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            SizedBox(
                              width: 18,
                            ),
                            Expanded(
                              flex: 2,
                              child: Container(
                                height: 60, // Ok
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: CustomColor
                                          .WelcomeScreenBtnStrokeColor,
                                      width: 2.0),
                                  color: CustomColor.WelcomeScreenBtnColor,
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(12.0),
                                    topRight: Radius.circular(12.0),
                                    bottomLeft: Radius.circular(12.0),
                                    bottomRight: Radius.circular(12.0),
                                  ),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    SizedBox(
                                      width: 18,
                                    ),
                                    Expanded(
                                        flex: 8,
                                        child: Container(
                                          color: Colors.transparent,
                                          child: Obx(() {
                                            return CustomTextWidget(
                                              text: _welcome.cityNameSelected
                                                          .value !=
                                                      ""
                                                  ? _welcome
                                                      .cityNameSelected.value
                                                  : 'Select your city',
                                              color: _welcome.cityNameSelected
                                                          .value !=
                                                      ""
                                                  ? Colors.black
                                                  : Color(0xFFA0A0A0),
                                              fontFamily: '.SF Pro Display',
                                              fontSize: 18.0,
                                              fontWeight: FontWeight.w400,
                                            );
                                          }),
                                        )),
                                    Expanded(
                                      flex: 2,
                                      child: Container(
                                        color: Colors.transparent,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            FadeInImage.assetNetwork(
                                              width: 30,
                                              height: 30,
                                              placeholder:
                                                  Images.kTransparentImage,
                                              image:
                                                  'https://em-cdn.eatmubarak.pk/flutter/down-arrow.png',
                                            ),
                                            SizedBox(
                                              width: 18,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 18,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      InkWell(
                        onTap: () =>
                            _welcome.showCustomDialogForAreaNames(context),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            SizedBox(
                              width: 18,
                            ),
                            Expanded(
                              flex: 2,
                              child: Container(
                                height: 60, // Ok
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: CustomColor
                                          .WelcomeScreenBtnStrokeColor,
                                      width: 2.0),
                                  color: CustomColor.WelcomeScreenBtnColor,
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(12.0),
                                    topRight: Radius.circular(12.0),
                                    bottomLeft: Radius.circular(12.0),
                                    bottomRight: Radius.circular(12.0),
                                  ),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    SizedBox(
                                      width: 18,
                                    ),
                                    Expanded(
                                      flex: 8,
                                      child: Container(
                                          color: Colors.transparent,
                                          child: Obx(() {
                                            return CustomTextWidget(
                                              text: _welcome.areaNameSelected
                                                          .value ==
                                                      ""
                                                  ? "Select your area"
                                                  : _welcome
                                                      .areaNameSelected.value,
                                              color: _welcome.areaNameSelected
                                                          .value ==
                                                      ""
                                                  ? Color(0xFFA0A0A0)
                                                  : Colors.black,
                                              fontFamily: '.SF Pro Display',
                                              fontSize: 18.0,
                                              fontWeight: FontWeight.w400,
                                            );
                                          })),
                                    ),
                                    Expanded(
                                      flex: 2,
                                      child: Container(
                                        color: Colors.transparent,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            FadeInImage.assetNetwork(
                                              width: 30,
                                              height: 30,
                                              placeholder:
                                                  Images.kTransparentImage,
                                              image:
                                                  'https://em-cdn.eatmubarak.pk/flutter/down-arrow.png',
                                            ),
                                            SizedBox(
                                              width: 18,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 18,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      InkWell(
                        onTap: () {
                          // _welcome.cityNameSelected.value = "";
                          // _welcome.areaNameSelected.value = "";
                          // _welcome.branchNameSelected.value = "";
                          _homeController.isBannerReceived.value = false;
                          _homeController.isSectionReceived.value = false;
                          _homeController.listOfSelectedSectionItems.length = 0;

                          final isGoToHome =
                              _welcome.areaNameSelected.value == "" ||
                                  _welcome.cityNameSelected.value == "";

                          if (isGoToHome) {
                            print("One of the values are empty. ");
                          } else {
                            Get.toNamed(AppRoutes.NEW_HOME);
                          }
                        },
                        child: Row(
                          children: [
                            SizedBox(
                              width: 18,
                            ),
                            Expanded(
                              flex: 2,
                              child: Container(
                                // width: 322, // OK
                                height: 65, // Ok
// Ok

                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color:
                                          CustomColor.ModalScreenBtnStrokeColor,
                                      width: 1.0),
                                  color: CustomColor.MaroonTheme,
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(12.0),
                                    topRight: Radius.circular(12.0),
                                    bottomLeft: Radius.circular(12.0),
                                    bottomRight: Radius.circular(12.0),
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 3,
                                      blurRadius: 7,
                                      offset: Offset(
                                          0, 3), // changes position of shadow
                                    ),
                                  ],
                                ),

                                child: Center(
                                  child: CustomTextWidget(
                                    text: 'Confirm',
                                    color: CustomColor.White,
                                    fontFamily: '.SF Pro Display',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 22.0,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 18,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 18,
                          ),
                          Expanded(
                            flex: 2,
                            child: Container(
                                //   width: 50, // OK
                                height: 65, // Ok
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: CustomColor.LocateOnMapBtnColor,
                                      width: 1.0),
                                  // color: CustomColor.White,
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(12.0),
                                    topRight: Radius.circular(12.0),
                                    bottomLeft: Radius.circular(12.0),
                                    bottomRight: Radius.circular(12.0),
                                  ),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    FadeInImage.assetNetwork(
                                      placeholder: Images.kTransparentImage,
                                      image:
                                          'https://em-cdn.eatmubarak.pk/flutter/map-marker.png',
                                      width: 50,
                                      height: 30,
                                    ),
                                    CustomTextWidget(
                                      text: 'Locate on Map',
                                      color: Color(0xFF424242).withOpacity(0.5),
                                      fontFamily: '.SF Pro Display',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 20.0,
                                    ),
                                  ],
                                )),
                          ),
                          SizedBox(
                            width: 18,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        });
  }

  showBottomSheetPickUp(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            color: Color(0xFF737373),
            height: 422,
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).canvasColor,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 25,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            flex: 1,
                            child: GestureDetector(
                              onTap: () => Navigator.pop(context),
                              // child: Container(
                              //   // width: 30,
                              //   // height: 30,
                              //   decoration: const BoxDecoration(
                              //     shape: BoxShape.circle,
                              //     color: CustomColor.ModalSheetCrossIconColor,
                              //   ),
                              //   child: const Center(
                              //       child: CustomTextWidget(
                              //     text: 'X',
                              //     //fontSize: 22.0,
                              //     fontFamily: '.SF Pro Display',
                              //   )),
                              // ),
                              child: FadeInImage.assetNetwork(
                                width: 30,
                                height: 30,
                                placeholder: Images.kTransparentImage,
                                image:
                                    'https://em-cdn.eatmubarak.pk/flutter/cross-bg.png',
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 40,
                          ),
                          Expanded(
                            flex: 5,
                            child: Container(
                              child: CustomTextWidget(
                                text: 'Select your location',
                                fontSize: 20.0,
                                fontFamily: '.SF Pro Display',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      InkWell(
                        onTap: () =>
                            _welcome.showCustomDialogForCityPickUp(context),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            SizedBox(
                              width: 18,
                            ),
                            Expanded(
                              flex: 2,
                              child: Container(
                                height: 60, // Ok
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: CustomColor
                                          .WelcomeScreenBtnStrokeColor,
                                      width: 2.0),
                                  color: CustomColor.WelcomeScreenBtnColor,
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(12.0),
                                    topRight: Radius.circular(12.0),
                                    bottomLeft: Radius.circular(12.0),
                                    bottomRight: Radius.circular(12.0),
                                  ),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    SizedBox(
                                      width: 18,
                                    ),
                                    Expanded(
                                        flex: 8,
                                        child: Container(
                                          color: Colors.transparent,
                                          child: Obx(() {
                                            return CustomTextWidget(
                                              text: _welcome.cityNameSelected
                                                          .value !=
                                                      ""
                                                  ? _welcome
                                                      .cityNameSelected.value
                                                  : 'Select your city',
                                              color: _welcome.cityNameSelected
                                                          .value !=
                                                      ""
                                                  ? Colors.black
                                                  : Color(0xFFA0A0A0),
                                              fontFamily: '.SF Pro Display',
                                              fontSize: 18.0,
                                              fontWeight: FontWeight.w400,
                                            );
                                          }),
                                        )),
                                    Expanded(
                                      flex: 2,
                                      child: Container(
                                        color: Colors.transparent,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            FadeInImage.assetNetwork(
                                              width: 30,
                                              height: 30,
                                              placeholder:
                                                  Images.kTransparentImage,
                                              image:
                                                  'https://em-cdn.eatmubarak.pk/flutter/down-arrow.png',
                                            ),
                                            SizedBox(
                                              width: 18,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 18,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      InkWell(
                        onTap: () =>
                            _welcome.showCustomDialogForBranchNames(context),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            SizedBox(
                              width: 18,
                            ),
                            Expanded(
                              flex: 2,
                              child: Container(
                                height: 60, // Ok
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: CustomColor
                                          .WelcomeScreenBtnStrokeColor,
                                      width: 2.0),
                                  color: CustomColor.WelcomeScreenBtnColor,
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(12.0),
                                    topRight: Radius.circular(12.0),
                                    bottomLeft: Radius.circular(12.0),
                                    bottomRight: Radius.circular(12.0),
                                  ),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    SizedBox(
                                      width: 18,
                                    ),
                                    Expanded(
                                      flex: 8,
                                      child: Container(
                                          color: Colors.transparent,
                                          child: Obx(() {
                                            return CustomTextWidget(
                                              text: _welcome.branchNameSelected
                                                          .value ==
                                                      ""
                                                  ? "Select your branch"
                                                  : _welcome
                                                      .branchNameSelected.value,
                                              color: _welcome.branchNameSelected
                                                          .value ==
                                                      ""
                                                  ? Color(0xFFA0A0A0)
                                                  : Colors.black,
                                              fontFamily: '.SF Pro Display',
                                              fontSize: 18.0,
                                              fontWeight: FontWeight.w400,
                                            );
                                          })),
                                    ),
                                    Expanded(
                                      flex: 2,
                                      child: Container(
                                        color: Colors.transparent,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            FadeInImage.assetNetwork(
                                              width: 30,
                                              height: 30,
                                              placeholder:
                                                  Images.kTransparentImage,
                                              image:
                                                  'https://em-cdn.eatmubarak.pk/flutter/down-arrow.png',
                                            ),
                                            SizedBox(
                                              width: 18,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 18,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      GestureDetector(
                        onTap: () {
                          // _welcome.cityNameSelected.value = "";
                          // _welcome.areaNameSelected.value = "";
                          // _welcome.branchNameSelected.value = "";
                          _homeController.isBannerReceived.value = false;
                          _homeController.isSectionReceived.value = false;
                          _homeController.listOfSelectedSectionItems.length = 0;

                          final isGoToHome =
                              _welcome.branchNameSelected.value == "" ||
                                  _welcome.cityNameSelected.value == "";

                          if (isGoToHome) {
                            print("One of the values are empty. ");
                          } else {
                            Get.toNamed(AppRoutes.NEW_HOME);
                          }
                        },
                        child: Row(
                          children: [
                            SizedBox(
                              width: 18,
                            ),
                            Expanded(
                              flex: 2,
                              child: Container(
                                // width: 322, // OK
                                height: 65, // Ok
// Ok

                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color:
                                          CustomColor.ModalScreenBtnStrokeColor,
                                      width: 1.0),
                                  color: CustomColor.MaroonTheme,
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(12.0),
                                    topRight: Radius.circular(12.0),
                                    bottomLeft: Radius.circular(12.0),
                                    bottomRight: Radius.circular(12.0),
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 3,
                                      blurRadius: 7,
                                      offset: Offset(
                                          0, 3), // changes position of shadow
                                    ),
                                  ],
                                ),

                                child: Center(
                                  child: CustomTextWidget(
                                    text: 'Confirm',
                                    color: CustomColor.White,
                                    fontFamily: '.SF Pro Display',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 22.0,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 18,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 18,
                          ),
                          Expanded(
                            flex: 2,
                            child: Container(
                                //   width: 50, // OK
                                height: 65, // Ok
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: CustomColor.LocateOnMapBtnColor,
                                      width: 1.0),
                                  // color: CustomColor.White,
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(12.0),
                                    topRight: Radius.circular(12.0),
                                    bottomLeft: Radius.circular(12.0),
                                    bottomRight: Radius.circular(12.0),
                                  ),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    FadeInImage.assetNetwork(
                                      placeholder: Images.kTransparentImage,
                                      image:
                                          'https://em-cdn.eatmubarak.pk/flutter/map-marker.png',
                                      width: 50,
                                      height: 30,
                                    ),
                                    CustomTextWidget(
                                      text: 'Locate on Map',
                                      color: Color(0xFF424242).withOpacity(0.5),
                                      fontFamily: '.SF Pro Display',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 20.0,
                                    ),
                                  ],
                                )),
                          ),
                          SizedBox(
                            width: 18,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        });
  }

  showBottomSheetDineIn(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            color: Color(0xFF737373),
            height: 422,
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).canvasColor,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 25,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            flex: 1,
                            child: GestureDetector(
                              onTap: () => Navigator.pop(context),
                              // child: Container(
                              //   // width: 30,
                              //   // height: 30,
                              //   decoration: const BoxDecoration(
                              //     shape: BoxShape.circle,
                              //     color: CustomColor.ModalSheetCrossIconColor,
                              //   ),
                              //   child: const Center(
                              //       child: CustomTextWidget(
                              //     text: 'X',
                              //     //fontSize: 22.0,
                              //     fontFamily: '.SF Pro Display',
                              //   )),
                              // ),
                              child: FadeInImage.assetNetwork(
                                width: 30,
                                height: 30,
                                placeholder: Images.kTransparentImage,
                                image:
                                    'https://em-cdn.eatmubarak.pk/flutter/cross-bg.png',
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 40,
                          ),
                          Expanded(
                            flex: 5,
                            child: Container(
                              child: CustomTextWidget(
                                text: 'Select your location',
                                fontSize: 20.0,
                                fontFamily: '.SF Pro Display',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      InkWell(
                        onTap: () =>
                            _welcome.showCustomDialogForCityDineIn(context),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            SizedBox(
                              width: 18,
                            ),
                            Expanded(
                              flex: 2,
                              child: Container(
                                height: 60, // Ok
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: CustomColor
                                          .WelcomeScreenBtnStrokeColor,
                                      width: 2.0),
                                  color: CustomColor.WelcomeScreenBtnColor,
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(12.0),
                                    topRight: Radius.circular(12.0),
                                    bottomLeft: Radius.circular(12.0),
                                    bottomRight: Radius.circular(12.0),
                                  ),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    SizedBox(
                                      width: 18,
                                    ),
                                    Expanded(
                                        flex: 8,
                                        child: Container(
                                          color: Colors.transparent,
                                          child: Obx(() {
                                            return CustomTextWidget(
                                              text: _welcome.cityNameSelected
                                                          .value !=
                                                      ""
                                                  ? _welcome
                                                      .cityNameSelected.value
                                                  : 'Select your city',
                                              color: Color(0xFFA0A0A0),
                                              fontFamily: '.SF Pro Display',
                                              fontSize: 18.0,
                                              fontWeight: FontWeight.w400,
                                            );
                                          }),
                                        )),
                                    Expanded(
                                      flex: 2,
                                      child: Container(
                                        color: Colors.transparent,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            FadeInImage.assetNetwork(
                                              width: 30,
                                              height: 30,
                                              placeholder:
                                                  Images.kTransparentImage,
                                              image:
                                                  'https://em-cdn.eatmubarak.pk/flutter/down-arrow.png',
                                            ),
                                            SizedBox(
                                              width: 18,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 18,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      InkWell(
                        onTap: () => _welcome
                            .showCustomDialogForBranchNamesDineIn(context),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            SizedBox(
                              width: 18,
                            ),
                            Expanded(
                              flex: 2,
                              child: Container(
                                height: 60, // Ok
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: CustomColor
                                          .WelcomeScreenBtnStrokeColor,
                                      width: 2.0),
                                  color: CustomColor.WelcomeScreenBtnColor,
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(12.0),
                                    topRight: Radius.circular(12.0),
                                    bottomLeft: Radius.circular(12.0),
                                    bottomRight: Radius.circular(12.0),
                                  ),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    SizedBox(
                                      width: 18,
                                    ),
                                    Expanded(
                                      flex: 8,
                                      child: Container(
                                          color: Colors.transparent,
                                          child: Obx(() {
                                            return CustomTextWidget(
                                              text: _welcome.branchNameSelected
                                                          .value ==
                                                      ""
                                                  ? "Select your branch"
                                                  : _welcome
                                                      .branchNameSelected.value,
                                              color: Color(0xFFA0A0A0),
                                              fontFamily: '.SF Pro Display',
                                              fontSize: 18.0,
                                              fontWeight: FontWeight.w400,
                                            );
                                          })),
                                    ),
                                    Expanded(
                                      flex: 2,
                                      child: Container(
                                        color: Colors.transparent,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            FadeInImage.assetNetwork(
                                              width: 30,
                                              height: 30,
                                              placeholder:
                                                  Images.kTransparentImage,
                                              image:
                                                  'https://em-cdn.eatmubarak.pk/flutter/down-arrow.png',
                                            ),
                                            SizedBox(
                                              width: 18,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 18,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      GestureDetector(
                        onTap: () {
                          // _welcome.cityNameSelected.value = "";
                          // _welcome.areaNameSelected.value = "";
                          // _welcome.branchNameSelected.value = "";
                          _homeController.isBannerReceived.value = false;
                          _homeController.isSectionReceived.value = false;
                          _homeController.listOfSelectedSectionItems.length = 0;
                          final isGoToHome =
                              _welcome.branchNameSelected.value == "" ||
                                  _welcome.areaNameSelected.value == "" ||
                                  _welcome.cityNameSelected.value == "";

                          if (isGoToHome) {
                            print("One of the values are empty. ");
                          } else {
                            Get.toNamed(AppRoutes.NEW_HOME);
                            Get.to(Controller());
                          }
                        },
                        child: Row(
                          children: [
                            SizedBox(
                              width: 18,
                            ),
                            Expanded(
                              flex: 2,
                              child: Container(
                                // width: 322, // OK
                                height: 65, // Ok
// Ok

                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color:
                                          CustomColor.ModalScreenBtnStrokeColor,
                                      width: 1.0),
                                  color: CustomColor.MaroonTheme,
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(12.0),
                                    topRight: Radius.circular(12.0),
                                    bottomLeft: Radius.circular(12.0),
                                    bottomRight: Radius.circular(12.0),
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 3,
                                      blurRadius: 7,
                                      offset: Offset(
                                          0, 3), // changes position of shadow
                                    ),
                                  ],
                                ),

                                child: Center(
                                  child: CustomTextWidget(
                                    text: 'Confirm',
                                    color: CustomColor.White,
                                    fontFamily: '.SF Pro Display',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 22.0,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 18,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 18,
                          ),
                          Expanded(
                            flex: 2,
                            child: Container(
                                //   width: 50, // OK
                                height: 65, // Ok
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: CustomColor.LocateOnMapBtnColor,
                                      width: 1.0),
                                  // color: CustomColor.White,
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(12.0),
                                    topRight: Radius.circular(12.0),
                                    bottomLeft: Radius.circular(12.0),
                                    bottomRight: Radius.circular(12.0),
                                  ),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    FadeInImage.assetNetwork(
                                      placeholder: Images.kTransparentImage,
                                      image:
                                          'https://em-cdn.eatmubarak.pk/flutter/map-marker.png',
                                      width: 50,
                                      height: 30,
                                    ),
                                    CustomTextWidget(
                                      text: 'Locate on Map',
                                      color: Color(0xFF424242).withOpacity(0.5),
                                      fontFamily: '.SF Pro Display',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 20.0,
                                    ),
                                  ],
                                )),
                          ),
                          SizedBox(
                            width: 18,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        });
  }
}
