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
import 'package:flutter_switch/flutter_switch.dart';

import '../../utils/CustomWidgets/BottomNavigationBar/bottom_navigation_bar.dart';
import '../../utils/CustomWidgets/Card/card.dart';
import '../../utils/CustomWidgets/CustomButton/custom_button.dart';
import '../../utils/CustomWidgets/InputTextField/input_text_field.dart';

class CheckoutScreen extends StatelessWidget {
  CheckoutScreen() : super();
  bool status = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBody: true,
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   backgroundColor: const Color(0xFFFBC000),
      //   child: FadeInImage.memoryNetwork(
      //     placeholder: kTransparentImage,
      //     image: 'https://em-cdn.eatmubarak.pk/flutter/cart.png',
      //     fit: BoxFit.contain,
      //     width: 35,
      //     height: 35,
      //   ),
      // ),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: Icon(
            Icons.arrow_back,
            size: 20,
            color: Colors.black,
          ),
        ),
        backgroundColor: CustomColor.White,
        elevation: 0.0,
        title:  CustomTextWidget(
          text: 'Checkout',
          fontSize: 14.0,
          fontFamily: '.SF Pro Display',
          fontWeight: FontWeight.bold,
          color: CustomColor.Black,
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  flex: 9,
                  child: Container(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                          child: CustomTextWidget(
                        text: '01. Delivery Details',
                        fontWeight: FontWeight.bold,
                        fontFamily: '.SF Pro Display',
                        fontSize: 14.0,
                      ))
                    ],
                  )),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: FadeInImage.assetNetwork(
                          placeholder: Images.kTransparentImage,
                          image:
                              'https://em-cdn.eatmubarak.pk/flutter/pencil.png',
                        ),
                      )
                    ],
                  )),
                ),
                SizedBox(
                  width: 60,
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  flex: 7,
                  child: Container(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                          child: CustomTextWidget(
                        text: 'Full Name',
                        fontWeight: FontWeight.normal,
                        fontFamily: '.SF Pro Display',
                        fontSize: 12.0,
                      ))
                    ],
                  )),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                          child: CustomTextWidget(
                        text: 'Dummy',
                        fontWeight: FontWeight.normal,
                        fontFamily: '.SF Pro Display',
                        fontSize: 12.0,
                        color: Color(0xFF909090),
                      ))
                    ],
                  )),
                ),
                SizedBox(
                  width: 5,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  flex: 7,
                  child: Container(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                          child: CustomTextWidget(
                        text: 'Mobile No',
                        fontWeight: FontWeight.normal,
                        fontFamily: '.SF Pro Display',
                        fontSize: 12.0,
                      ))
                    ],
                  )),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                          child: CustomTextWidget(
                        text: '+923422060377',
                        fontWeight: FontWeight.normal,
                        fontFamily: '.SF Pro Display',
                        fontSize: 12.0,
                        color: Color(0xFF909090),
                      ))
                    ],
                  )),
                ),
                SizedBox(
                  width: 5,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  flex: 7,
                  child: Container(
                      height: 30,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                              child: CustomTextWidget(
                            text: 'Delivery Address',
                            fontWeight: FontWeight.normal,
                            fontFamily: '.SF Pro Display',
                            fontSize: 12.0,
                          ))
                        ],
                      )),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                          child: CustomTextWidget(
                        text: 'Tariq RD, Block 2, Karachi...',
                        fontWeight: FontWeight.normal,
                        fontFamily: '.SF Pro Display',
                        fontSize: 12.0,
                        color: Color(0xFF909090),
                      ))
                    ],
                  )),
                ),
                SizedBox(
                  width: 5,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    height: 150,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.transparent,
                      ),
                      color: Colors.white,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(8.0),
                        topRight: Radius.circular(8.0),
                        bottomLeft: Radius.circular(8.0),
                        bottomRight: Radius.circular(8.0),
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
                    child: Column(
                      children: [
                        Expanded(
                          flex: 7,
                          child: Center(
                              child: CustomTextWidget(
                            text: 'Google Maps API gets integrated here.',
                            fontFamily: '.SF Pro Display',
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                          )),
                        ),
                        Expanded(
                          flex: 3,
                          child: Container(
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                    flex: 7,
                                    child: CustomTextWidget(
                                      text:
                                          'Tariq RD, PECHS, Block-2, Karachi...',
                                      fontFamily: '.SF Pro Display',
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.normal,
                                      color: const Color(0xFF717171),
                                    )),
                                Expanded(
                                    flex: 3,
                                    child: Container(
                                        height: 50,
                                        color: Colors.white,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            SizedBox(
                                              width: 15,
                                            ),
                                            Expanded(
                                              flex: 2,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: Colors.pink
                                                      .withOpacity(0.1),
                                                  borderRadius:
                                                      const BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(5.0),
                                                    topRight:
                                                        Radius.circular(5.0),
                                                    bottomLeft:
                                                        Radius.circular(5.0),
                                                    bottomRight:
                                                        Radius.circular(5.0),
                                                  ),
                                                ),
                                                height: 30,
                                                child: Center(
                                                  child: CustomTextWidget(
                                                    text: 'EDIT',
                                                    fontFamily:
                                                        '.SF Pro Display',
                                                    fontSize: 12.0,
                                                    fontWeight: FontWeight.bold,
                                                    color:
                                                        const Color(0xFF921621),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 15,
                                            ),
                                          ],
                                        ))),
                              ],
                            ),
                          ),
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
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    height: 50,
                    child: InputTextField(
                      hintText: 'Floor',
                      hintTextColor: const Color(0xFFAFAFAF),
                      fillColor: const Color(0xFFECECEC),
                      strokeColor: const Color(0xFFEAEAEA),
                      roundedCornerRadius: 6.0,
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    height: 50,
                    child: InputTextField(
                      hintText: 'Additional Information/ Direction for rider',
                      hintTextColor: const Color(0xFFAFAFAF),
                      fillColor: const Color(0xFFECECEC),
                      strokeColor: const Color(0xFFEAEAEA),
                      roundedCornerRadius: 6.0,
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  flex: 9,
                  child: Container(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                          child: CustomTextWidget(
                        text: '02. Select Payment Type',
                        fontWeight: FontWeight.bold,
                        fontFamily: '.SF Pro Display',
                        fontSize: 14.0,
                      ))
                    ],
                  )),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 90,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.transparent,
                      ),
                      color: Colors.white,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(4.0),
                        topRight: Radius.circular(4.0),
                        bottomLeft: Radius.circular(4.0),
                        bottomRight: Radius.circular(4.0),
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
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(
                            child: FadeInImage.assetNetwork(
                              placeholder: Images.kTransparentImage,
                              image:
                                  'https://em-cdn.eatmubarak.pk/flutter/cod.png',
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                              child: CustomTextWidget(
                            text: 'Cash on Delivery (COD)',
                            color: const Color(0xFFA3A3A3),
                            fontFamily: '.SF Pro Display',
                            fontSize: 10.0,
                            fontWeight: FontWeight.normal,
                          )),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 90,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.transparent,
                      ),
                      color: Colors.white,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(4.0),
                        topRight: Radius.circular(4.0),
                        bottomLeft: Radius.circular(4.0),
                        bottomRight: Radius.circular(4.0),
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
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(
                            child: FadeInImage.assetNetwork(
                              placeholder: Images.kTransparentImage,
                              image:
                                  'https://em-cdn.eatmubarak.pk/flutter/card.png',
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                              child: CustomTextWidget(
                            text: 'Credit/ Debit Card',
                            color: const Color(0xFFA3A3A3),
                            fontFamily: '.SF Pro Display',
                            fontSize: 10.0,
                            fontWeight: FontWeight.normal,
                          )),
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
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  flex: 9,
                  child: Container(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                          child: CustomTextWidget(
                        text: '03. Wallet',
                        fontWeight: FontWeight.bold,
                        fontFamily: '.SF Pro Display',
                        fontSize: 14.0,
                      ))
                    ],
                  )),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  flex: 8,
                  child: Container(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                          child: CustomTextWidget(
                        text: 'Use Wallet: Rs. 0',
                        fontWeight: FontWeight.normal,
                        fontFamily: '.SF Pro Display',
                        fontSize: 13.0,
                        color: const Color(0xFFA0A0A0),
                      ))
                    ],
                  )),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Expanded(
                          child: FlutterSwitch(
                            inactiveColor: const Color(0xFFDCDCDC),
                            width: 55.0,
                            height: 25.0,
                            valueFontSize: 12.0,
                            toggleSize: 18.0,
                            value: status,
                            toggleColor: Colors.white,
                            onToggle: (val) {
                              status = val;
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  flex: 9,
                  child: Container(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                          child: CustomTextWidget(
                        text: '04. Loyalty Points',
                        fontWeight: FontWeight.bold,
                        fontFamily: '.SF Pro Display',
                        fontSize: 14.0,
                      ))
                    ],
                  )),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  flex: 8,
                  child: Container(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                          child: CustomTextWidget(
                        text: 'Use Loyalty Points: 0.00',
                        fontWeight: FontWeight.normal,
                        fontFamily: '.SF Pro Display',
                        fontSize: 13.0,
                        color: const Color(0xFFA0A0A0),
                      ))
                    ],
                  )),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Expanded(
                          child: FlutterSwitch(
                            inactiveColor: const Color(0xFFDCDCDC),
                            width: 55.0,
                            height: 25.0,
                            valueFontSize: 12.0,
                            toggleSize: 18.0,
                            value: status,
                            toggleColor: Colors.white,
                            onToggle: (val) {
                              status = val;
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  flex: 9,
                  child: Container(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                          child: CustomTextWidget(
                        text: '05. Delivery Time',
                        fontWeight: FontWeight.bold,
                        fontFamily: '.SF Pro Display',
                        fontSize: 14.0,
                      ))
                    ],
                  )),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  flex: 7,
                  child: Container(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                          child: CustomTextWidget(
                        text: 'ASAP',
                        fontWeight: FontWeight.normal,
                        fontFamily: '.SF Pro Display',
                        fontSize: 13.0,
                        color: const Color(0xFFA0A0A0),
                      ))
                    ],
                  )),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Expanded(
                            child: RotatedBox(
                          quarterTurns: 1,
                          child: CustomTextWidget(
                            text: '>',
                            fontFamily: '.SF Pro Display',
                            fontSize: 12.0,
                            fontWeight: FontWeight.normal,
                            color: const Color(0xFF909090),
                          ),
                        )),
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
                  width: 10,
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xFFF5F5F5),
                      ),
                      color: const Color(0xFFF4F4F4),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(8.0),
                        topRight: Radius.circular(8.0),
                        bottomLeft: Radius.circular(8.0),
                        bottomRight: Radius.circular(8.0),
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
                    height: 210,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 100,
                            ),
                            Expanded(
                                flex: 1,
                                child: Center(
                                  child: Container(
                                    child: CustomTextWidget(
                                      text: 'Items List',
                                      fontFamily: '.SF Pro Display',
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                )),
                            SizedBox(
                              width: 100,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Column(
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Expanded(
                                    flex: 2,
                                    child: Container(
                                      height: 80,
                                      color: Colors.transparent,
                                      child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Expanded(
                                              flex: 2,
                                              child: Container(
                                                color: Colors.transparent,
                                                child: Center(
                                                    child: ContentInsideColor(
                                                  height: 30.0,
                                                  roundContainerOutsideColor:
                                                      Color(0xFFE3E3E3),
                                                  isDigit: false,
                                                  text: '1',
                                                  shape: BoxShape.circle,
                                                )),
                                              ),
                                            ),
                                            Expanded(
                                              flex: 8,
                                              child: Container(
                                                color: Colors.transparent,
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    SizedBox(
                                                      height: 19,
                                                    ),

                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Expanded(
                                                          flex: 4,
                                                          child:
                                                              CustomTextWidget(
                                                            text:
                                                                'American Double Cheese',
                                                            fontFamily:
                                                                '.SF Pro Display',
                                                            fontSize: 12.0,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          width: 30,
                                                        ),
                                                        Expanded(
                                                          flex: 1,
                                                          child:
                                                              CustomTextWidget(
                                                            text: '450',
                                                            fontFamily:
                                                                '.SF Pro Display',
                                                            fontSize: 12.0,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                        ),
                                                      ],
                                                    ),

                                                    SizedBox(
                                                      height: 10,
                                                    ),
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Expanded(
                                                          flex: 1,
                                                          child:
                                                              CustomTextWidget(
                                                            text:
                                                                '2 smashed beef with shredded patties pickles, caramalized, onions....',
                                                            fontFamily:
                                                                '.SF Pro Display',
                                                            fontSize: 10.0,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            color: Color(
                                                                0xFF929292),
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
                                                    //   Expanded(),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ]),
                                    ))
                              ],
                            ),
                          ],
                        ),
                        const Divider(
                          color: Color(0xFFE8E8E8),
                          thickness: 1,
                          indent: 20,
                          endIndent: 20,
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                height: 20,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    CustomTextWidget(
                                      text: 'Subtotal',
                                      fontFamily: '.SF Pro Display',
                                      fontWeight: FontWeight.normal,
                                      fontSize: 11.0,
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                height: 20,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    CustomTextWidget(
                                      text: '800.00',
                                      fontFamily: '.SF Pro Display',
                                      fontWeight: FontWeight.normal,
                                      fontSize: 11.0,
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                // color:Colors.red,
                                height: 30,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Expanded(
                                      //  flex: 1,
                                      child: Container(
                                        child: CustomTextWidget(
                                          text: 'Grand Total',
                                          fontFamily: '.SF Pro Display',
                                          fontWeight: FontWeight.normal,
                                          fontSize: 14.0,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      //    flex: 1,
                                      child: Container(
                                        child: CustomTextWidget(
                                          text: '(Inc. 13% Tax)',
                                          fontFamily: '.SF Pro Display',
                                          fontWeight: FontWeight.normal,
                                          color: Colors.grey,
                                          fontSize: 14.0,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                height: 20,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    CustomTextWidget(
                                      text: '800.00',
                                      fontFamily: '.SF Pro Display',
                                      fontWeight: FontWeight.normal,
                                      fontSize: 14.0,
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                          ],
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
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    height: 50,
                    child: InputTextField(
                      hintText: 'Enter promo code here (if any)',
                      hintTextColor: const Color(0xFFAFAFAF),
                      fillColor: const Color(0xFFECECEC),
                      strokeColor: const Color(0xFFEAEAEA),
                      roundedCornerRadius: 6.0,
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                 CustomTextWidget(
                  text: 'Earn 4.80 on this order!',
                  fontSize: 14.0,
                  fontFamily: '.SF Pro Display',
                  fontWeight: FontWeight.normal,
                  color: CustomColor.Black,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    //   color: Colors.blue,
                    height: 50,

                    child: CustomButton(
                      btnTextFontSize: 14.0,
                      btnBackgroundColor: CustomColor.MaroonTheme,
                      borderRadius: 8.0,
                      btnText: 'Confirm Order',
                      btnTextColor: CustomColor.White,
                      btnTextFontFamily: '.SF Pro Display',
                      onPressed: () => Get.toNamed(AppRoutes.CONGRATULATIONS),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
            SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}
