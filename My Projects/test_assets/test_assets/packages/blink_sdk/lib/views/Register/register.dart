import 'package:blink_sdk/utils/CustomWidgets/InputTextField/input_text_field.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

import '../../theme/colors.dart';
import '../../theme/icons.dart';
import '../../utils/CustomWidgets/BottomNavigationBar/bottom_navigation_bar.dart';
import '../../utils/CustomWidgets/ContentInsideCircle/content_inside_circle.dart';
import '../../utils/CustomWidgets/CustomButton/custom_button.dart';
import '../../utils/CustomWidgets/CustomText/custom_text.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBody: true,
      appBar: AppBar(
leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: Icon(
            Icons.arrow_back,
            size: 20,
            color: Colors.black,
          ),
        ),        backgroundColor: CustomColor.White,
        elevation: 0.0,
        title: CustomTextWidget(
          text: 'Register',
          fontSize: 14.0,
          fontFamily: '.SF Pro Display',
          fontWeight: FontWeight.bold,
          color: CustomColor.Black,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 30,
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
                    text: 'Full Name',
                    fontSize: 13.0,
                    color: Colors.black,
                    fontFamily: '.SF Pro Display',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
              ],
            ),
            SizedBox(
              height: 4,
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
                      hintText: 'Enter your full name',
                      hintTextColor: const Color(0xFFA0A0A0),
                      fillColor: const Color(0xFFF5F5F5),
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
              height: 4,
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
                    text: 'Email',
                    fontSize: 13.0,
                    color: Colors.black,
                    fontFamily: '.SF Pro Display',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
              ],
            ),
            SizedBox(
              height: 4,
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
                      fillColor: const Color(0xFFF5F5F5),
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
              height: 4,
            ),

            SizedBox(
              height: 4,
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
                    text: 'Phone Number',
                    fontSize: 13.0,
                    color: Colors.black,
                    fontFamily: '.SF Pro Display',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 4,
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
                      color: Color(0xFFEAEAEA),
                      border: Border.all(
                        color: Color(0xFFECECEC),
                      ),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(6.0),
                        bottomLeft: Radius.circular(6.0),
                      ),
                    ),
                    height: 50,
                    child: Center(
                      child: CustomTextWidget(
                        text: '+92',
                        fontFamily: '.SF Pro Display',
                        fontSize: 14.0,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                      ),
                    ),
                  ),
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
                      fillColor: const Color(0xFFF5F5F5),
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
              height: 4,
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
                    text: 'Password',
                    fontSize: 13.0,
                    color: Colors.black,
                    fontFamily: '.SF Pro Display',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
              ],
            ),
            SizedBox(
              height: 4,
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
                      fillColor: const Color(0xFFF5F5F5),
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
              height: 4,
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
                    text: 'Confirm Password',
                    fontSize: 13.0,
                    color: Colors.black,
                    fontFamily: '.SF Pro Display',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
              ],
            ),
            SizedBox(
              height: 4,
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
                      hintText: 'Confirm new password',
                      hintTextColor: const Color(0xFFA0A0A0),
                      fillColor: const Color(0xFFF5F5F5),
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
                          offset: Offset(0, 3), // changes position of shadow
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
                                btnTextFontSize: 16.0,
                                btnBackgroundColor: CustomColor.MaroonTheme,
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
              height: 20,
            ), //here's where the divider will come
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFF3C5997),
                      border: Border.all(
                        color: Color(0xFFF5F5F5),
                      ),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(6.0),
                        topRight: Radius.circular(6.0),
                        bottomLeft: Radius.circular(6.0),
                        bottomRight: Radius.circular(6.0),
                      ),
                    ),
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FadeInImage.assetNetwork(
                          placeholder: Images.kTransparentImage,
                          image:
                              'https://em-cdn.eatmubarak.pk/flutter/facebook.png',
                          fit: BoxFit.contain,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        CustomTextWidget(
                          text: 'Register with Facebook',
                          fontSize: 13.0,
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

            SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
