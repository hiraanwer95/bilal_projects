import 'dart:async';
import 'dart:math';

import 'package:blink_sdk/controllers/home_controller.dart';
import 'package:blink_sdk/controllers/my_profile_controller.dart';
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

class MyProfileScreen extends StatelessWidget {
  MyProfileController _myProfileController = Get.find();
  HomeController _homeController = Get.find();


  MyProfileScreen() : super();
  bool status = false;

  @override
  Widget build(BuildContext context) {
    _homeController.currentScreen.value = "PROFILE";

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
      bottomNavigationBar: BottomNav(),
      appBar: AppBar(
        backgroundColor: CustomColor.White,
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: Icon(
            Icons.arrow_back,
            size: 20,
            color: Colors.black,
          ),
        ),
        elevation: 0.0,
        title: CustomTextWidget(
          text: 'My Profile',
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
                  flex: 10,
                  child: Container(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                          child: CustomTextWidget(
                        text: 'Christopher Jaxon',
                        fontWeight: FontWeight.w600,
                        fontFamily: '.SF Pro Display',
                        fontSize: 18.0,
                      ))
                    ],
                  )),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  flex: 10,
                  child: Container(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                          child: CustomTextWidget(
                        text: '+923422060377',
                        fontWeight: FontWeight.w600,
                        fontFamily: '.SF Pro Display',
                        fontSize: 12.0,
                        color: const Color(0xFF921A21),
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
                  flex: 10,
                  child: Container(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Obx(() {
                          List<bool> _isOpen;
                          return ExpansionPanelList(
                            expansionCallback: (index, isExpanded) {
                              _myProfileController.isExpandedPersonalInfo[index]
                                  .value = !isExpanded;
                            },
                            children: [
                              ExpansionPanel(
                                backgroundColor: const Color(0xFFF4F4F4),
                                headerBuilder:
                                    (BuildContext context, bool isExpanded) {
                                  return Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Expanded(
                                        flex: 9,
                                        child: CustomTextWidget(
                                          text: 'Personal Information',
                                          fontFamily: '.SF Pro Display',
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: FadeInImage.assetNetwork(
                                          width: 15,
                                          height: 15,
                                          placeholder: Images.kTransparentImage,
                                          image:
                                              'https://em-cdn.eatmubarak.pk/flutter/pencil.png',
                                        ),
                                      ),
                                    ],
                                  );
                                },
                                body: Row(
                                  children: [
                                    // SizedBox(
                                    //   width: 10,
                                    // ),
                                    Expanded(
                                      flex: 2,
                                      child: Column(
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              SizedBox(width: 10),
                                              Expanded(
                                                flex: 2,
                                                child: Container(
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Expanded(
                                                          flex: 7,
                                                          child:
                                                              CustomTextWidget(
                                                            text: 'Name',
                                                            fontFamily:
                                                                '.SF Pro Display',
                                                            fontSize: 13.0,
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                            color: Colors.black,
                                                          )),
                                                      Expanded(
                                                          flex: 3,
                                                          child:
                                                              CustomTextWidget(
                                                            text: 'Delivery',
                                                            fontFamily:
                                                                '.SF Pro Display',
                                                            fontSize: 13.0,
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                            color: const Color(
                                                                0xFF909090),
                                                          )),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              SizedBox(width: 20),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              SizedBox(width: 10),
                                              Expanded(
                                                flex: 2,
                                                child: Container(
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Expanded(
                                                          flex: 7,
                                                          child: CustomTextWidget(
                                                              text: 'Phone No',
                                                              fontFamily:
                                                                  '.SF Pro Display',
                                                              fontSize: 13.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .normal,
                                                              color: Colors
                                                                  .black)),
                                                      Expanded(
                                                          flex: 3,
                                                          child:
                                                              CustomTextWidget(
                                                            text:
                                                                '+923422060377',
                                                            fontFamily:
                                                                '.SF Pro Display',
                                                            fontSize: 13.0,
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                            color: const Color(
                                                                0xFF909090),
                                                          )),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              SizedBox(width: 20),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              SizedBox(width: 10),
                                              Expanded(
                                                flex: 2,
                                                child: Container(
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Expanded(
                                                          flex: 7,
                                                          child: CustomTextWidget(
                                                              text: 'Email',
                                                              fontFamily:
                                                                  '.SF Pro Display',
                                                              fontSize: 13.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .normal,
                                                              color: Colors
                                                                  .black)),
                                                      Expanded(
                                                          flex: 3,
                                                          child:
                                                              CustomTextWidget(
                                                            text:
                                                                'bilalm@blinkco.io',
                                                            fontFamily:
                                                                '.SF Pro Display',
                                                            fontSize: 13.0,
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                            color: const Color(
                                                                0xFF909090),
                                                          )),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              SizedBox(width: 20),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                        ],
                                      ),
                                    ),
                                    // SizedBox(
                                    //   width: 10,
                                    // ),
                                  ],
                                ),
                                isExpanded: _myProfileController
                                    .isExpandedPersonalInfo[0].value,
                              ),
                            ],
                          );
                        }),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  )),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                  width: 8,
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                      height: 60, // Ok

                      decoration: BoxDecoration(
                        color: CustomColor.WelcomeScreenBtnColor,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(3.0),
                          topRight: Radius.circular(3.0),
                          bottomLeft: Radius.circular(3.0),
                          bottomRight: Radius.circular(3.0),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            flex: 7,
                            child: GestureDetector(
                              onTap: (() =>
                                  Get.toNamed(AppRoutes.NOTIFICATIONS)),
                              child: Container(
                                  color: Colors.transparent,
                                  child: CustomTextWidget(
                                    text: 'Notifications',
                                    color: CustomColor.Black,
                                    fontFamily: '.SF Pro Display',
                                    fontSize: 13.0,
                                    fontWeight: FontWeight.bold,
                                  )),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Container(
                              color: Colors.transparent,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                    child: Container(
                                      color: Colors.transparent,
                                      child: FadeInImage.assetNetwork(
                                        width: 20,
                                        height: 20,
                                        placeholder: Images.kTransparentImage,
                                        image:
                                            'https://em-cdn.eatmubarak.pk/flutter/arrow.png',
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      )),
                ),
                SizedBox(
                  width: 8,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                  width: 8,
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                      height: 60, // Ok

                      decoration: BoxDecoration(
                        color: CustomColor.WelcomeScreenBtnColor,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(3.0),
                          topRight: Radius.circular(3.0),
                          bottomLeft: Radius.circular(3.0),
                          bottomRight: Radius.circular(3.0),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            flex: 7,
                            child: GestureDetector(
                              onTap: () => Get.toNamed(AppRoutes.MY_ORDERS),
                              child: Container(
                                  color: Colors.transparent,
                                  child: CustomTextWidget(
                                    text: 'My Orders',
                                    color: CustomColor.Black,
                                    fontFamily: '.SF Pro Display',
                                    fontSize: 13.0,
                                    fontWeight: FontWeight.bold,
                                  )),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Container(
                              color: Colors.transparent,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                    child: Container(
                                      color: Colors.transparent,
                                      child: FadeInImage.assetNetwork(
                                        width: 20,
                                        height: 20,
                                        placeholder: Images.kTransparentImage,
                                        image:
                                            'https://em-cdn.eatmubarak.pk/flutter/arrow.png',
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      )),
                ),
                SizedBox(
                  width: 8,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                  width: 8,
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                      height: 60, // Ok

                      decoration: BoxDecoration(
                        color: CustomColor.WelcomeScreenBtnColor,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(3.0),
                          topRight: Radius.circular(3.0),
                          bottomLeft: Radius.circular(3.0),
                          bottomRight: Radius.circular(3.0),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            flex: 7,
                            child: GestureDetector(
                              onTap: () => Get.toNamed(AppRoutes.FAVORITES),
                              child: Container(
                                  color: Colors.transparent,
                                  child: CustomTextWidget(
                                    text: 'Favorite',
                                    color: CustomColor.Black,
                                    fontFamily: '.SF Pro Display',
                                    fontSize: 13.0,
                                    fontWeight: FontWeight.bold,
                                  )),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Container(
                              color: Colors.transparent,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                    child: Container(
                                      color: Colors.transparent,
                                      child: FadeInImage.assetNetwork(
                                        width: 20,
                                        height: 20,
                                        placeholder: Images.kTransparentImage,
                                        image:
                                            'https://em-cdn.eatmubarak.pk/flutter/arrow.png',
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      )),
                ),
                SizedBox(
                  width: 8,
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
                  flex: 10,
                  child: Container(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Obx(() {
                          List<bool> _isOpen;
                          return ExpansionPanelList(
                            expansionCallback: (index, isExpanded) {
                              _myProfileController.isExpandedBenefits[index]
                                  .value = !isExpanded;
                            },
                            children: [
                              ExpansionPanel(
                                backgroundColor: const Color(0xFFF4F4F4),
                                headerBuilder:
                                    (BuildContext context, bool isExpanded) {
                                  return Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Expanded(
                                        flex: 9,
                                        child: CustomTextWidget(
                                          text: 'Benefits',
                                          fontFamily: '.SF Pro Display',
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  );
                                },
                                body: Row(
                                  children: [
                                    Expanded(
                                      flex: 2,
                                      child: Column(
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              SizedBox(width: 10),
                                              Expanded(
                                                flex: 2,
                                                child: Container(
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Expanded(
                                                          flex: 8,
                                                          child:
                                                              CustomTextWidget(
                                                            text: 'Wallet',
                                                            fontFamily:
                                                                '.SF Pro Display',
                                                            fontSize: 13.0,
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                            color: Colors.black,
                                                          )),
                                                      Expanded(
                                                        flex: 2,
                                                        child: Container(
                                                          decoration:
                                                              BoxDecoration(
                                                            color: const Color(
                                                                0xFFFBC000),
                                                            borderRadius:
                                                                const BorderRadius
                                                                    .only(
                                                              topLeft: Radius
                                                                  .circular(
                                                                      5.0),
                                                              topRight: Radius
                                                                  .circular(
                                                                      5.0),
                                                              bottomLeft: Radius
                                                                  .circular(
                                                                      5.0),
                                                              bottomRight:
                                                                  Radius
                                                                      .circular(
                                                                          5.0),
                                                            ),
                                                          ),
                                                          height: 30,
                                                          child: Center(
                                                            child:
                                                                CustomTextWidget(
                                                              text: 'EDIT',
                                                              fontFamily:
                                                                  '.SF Pro Display',
                                                              fontSize: 12.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              color:
                                                                  Colors.white,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              SizedBox(width: 20),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              SizedBox(width: 10),
                                              Expanded(
                                                flex: 2,
                                                child: Container(
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Expanded(
                                                          flex: 7,
                                                          child: CustomTextWidget(
                                                              text:
                                                                  'Loyalty Points',
                                                              fontFamily:
                                                                  '.SF Pro Display',
                                                              fontSize: 13.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .normal,
                                                              color: Colors
                                                                  .black)),
                                                      Expanded(
                                                        flex: 3,
                                                        child: Container(
                                                          decoration:
                                                              BoxDecoration(
                                                            color: const Color(
                                                                0xFFFBC000),
                                                            borderRadius:
                                                                const BorderRadius
                                                                    .only(
                                                              topLeft: Radius
                                                                  .circular(
                                                                      5.0),
                                                              topRight: Radius
                                                                  .circular(
                                                                      5.0),
                                                              bottomLeft: Radius
                                                                  .circular(
                                                                      5.0),
                                                              bottomRight:
                                                                  Radius
                                                                      .circular(
                                                                          5.0),
                                                            ),
                                                          ),
                                                          height: 30,
                                                          child: Center(
                                                            child:
                                                                CustomTextWidget(
                                                              text:
                                                                  '100 Points',
                                                              fontFamily:
                                                                  '.SF Pro Display',
                                                              fontSize: 12.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              color:
                                                                  Colors.white,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              SizedBox(width: 20),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              SizedBox(width: 10),
                                              Expanded(
                                                flex: 2,
                                                child: Container(
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Expanded(
                                                          flex: 7,
                                                          child: CustomTextWidget(
                                                              text: 'Email',
                                                              fontFamily:
                                                                  '.SF Pro Display',
                                                              fontSize: 13.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .normal,
                                                              color: Colors
                                                                  .black)),
                                                      Expanded(
                                                          flex: 3,
                                                          child:
                                                              CustomTextWidget(
                                                            text:
                                                                'bilalm@blinkco.io',
                                                            fontFamily:
                                                                '.SF Pro Display',
                                                            fontSize: 13.0,
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                            color: const Color(
                                                                0xFF909090),
                                                          )),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              SizedBox(width: 20),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                        ],
                                      ),
                                    ),
                                    // SizedBox(
                                    //   width: 10,
                                    // ),
                                  ],
                                ),
                                isExpanded: _myProfileController
                                    .isExpandedBenefits[0].value,
                              ),
                            ],
                          );
                        }),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  )),
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
                  flex: 10,
                  child: Container(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Obx(() {
                          List<bool> _isOpen;
                          return ExpansionPanelList(
                            expansionCallback: (index, isExpanded) {
                              _myProfileController.isExpandedHelpSupport[index]
                                  .value = !isExpanded;
                            },
                            children: [
                              ExpansionPanel(
                                backgroundColor: const Color(0xFFF4F4F4),
                                headerBuilder:
                                    (BuildContext context, bool isExpanded) {
                                  return Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Expanded(
                                        flex: 9,
                                        child: CustomTextWidget(
                                          text: 'Help & Support',
                                          fontFamily: '.SF Pro Display',
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  );
                                },
                                body: Row(
                                  children: [
                                    Expanded(
                                      flex: 2,
                                      child: Column(
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              SizedBox(width: 10),
                                              Expanded(
                                                flex: 2,
                                                child: Container(
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Expanded(
                                                          flex: 9,
                                                          child:
                                                              CustomTextWidget(
                                                            text:
                                                                'Privacy Policy',
                                                            fontFamily:
                                                                '.SF Pro Display',
                                                            fontSize: 13.0,
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                            color: Colors.black,
                                                          )),
                                                      Expanded(
                                                        flex: 1,
                                                        child: Container(
                                                          color: Colors
                                                              .transparent,
                                                          child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .end,
                                                            children: [
                                                              SizedBox(
                                                                width: 10,
                                                              ),
                                                              Expanded(
                                                                child:
                                                                    Container(
                                                                  color: Colors
                                                                      .transparent,
                                                                  child: FadeInImage
                                                                      .assetNetwork(
                                                                    width: 20,
                                                                    height: 20,
                                                                    placeholder:
                                                                        Images
                                                                            .kTransparentImage,
                                                                    image:
                                                                        'https://em-cdn.eatmubarak.pk/flutter/arrow.png',
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              SizedBox(width: 20),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              SizedBox(width: 10),
                                              Expanded(
                                                flex: 2,
                                                child: Container(
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Expanded(
                                                          flex: 9,
                                                          child: CustomTextWidget(
                                                              text:
                                                                  'Terms & Conditions',
                                                              fontFamily:
                                                                  '.SF Pro Display',
                                                              fontSize: 13.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .normal,
                                                              color: Colors
                                                                  .black)),
                                                      Expanded(
                                                        flex: 1,
                                                        child: Container(
                                                          color: Colors
                                                              .transparent,
                                                          child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .end,
                                                            children: [
                                                              SizedBox(
                                                                width: 10,
                                                              ),
                                                              Expanded(
                                                                child:
                                                                    Container(
                                                                  color: Colors
                                                                      .transparent,
                                                                  child: FadeInImage
                                                                      .assetNetwork(
                                                                    width: 20,
                                                                    height: 20,
                                                                    placeholder:
                                                                        Images
                                                                            .kTransparentImage,
                                                                    image:
                                                                        'https://em-cdn.eatmubarak.pk/flutter/arrow.png',
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              SizedBox(width: 20),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                isExpanded: _myProfileController
                                    .isExpandedHelpSupport[0].value,
                              ),
                            ],
                          );
                        }),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  )),
                ),
              ],
            ),
            SizedBox(
              height: 120,
            ),
          ],
        ),
      ),
    );
  }
}
