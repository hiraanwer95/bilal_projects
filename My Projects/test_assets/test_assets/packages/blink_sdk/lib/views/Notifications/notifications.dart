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
import '../../utils/CustomWidgets/CustomButton/custom_button.dart';
import '../../utils/CustomWidgets/InputTextField/input_text_field.dart';

class NotificationsScreen extends StatelessWidget {
  NotificationsScreen() : super();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // floatingActionButton: FloatingActionButton(
      //   child: FadeInImage.memoryNetwork(
      //     placeholder: kTransparentImage,
      //     image: 'https://em-cdn.eatmubarak.pk/flutter/cart.png',
      //     fit: BoxFit.contain,
      //     width: 35,
      //     height: 35,
      //   ),
      //   backgroundColor: Color(0xFFFBC000),
      // ),
      bottomNavigationBar: BottomNav(),
      appBar: AppBar(
        backgroundColor: CustomColor.White,
        elevation: 0.0,
        title: CustomTextWidget(
          text: 'Notifications',
          fontSize: 14.0,
          fontFamily: '.SF Pro Display',
          fontWeight: FontWeight.bold,
          color: CustomColor.Black,
        ),
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: Icon(
            Icons.arrow_back,
            size: 20,
            color: Colors.black,
          ),
        ),
      ),
      body: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: 8,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                SizedBox(
                  height: index == 0 ? 20 : 10,
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
                          //  width: MediaQuery.of(context).size.width *,
                          height: 90,
                          decoration: BoxDecoration(
                            color: index == 0
                                ? Colors.white
                                : const Color(0xFFF3F3F3),
                            //     color: Colors.black,
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(5.0),
                              topRight: Radius.circular(5.0),
                              bottomLeft: Radius.circular(5.0),
                              bottomRight: Radius.circular(5.0),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 3,
                                blurRadius: 7,
                                offset:
                                    Offset(0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              SizedBox(
                                width: 5,
                              ),
                              Expanded(
                                flex: 4,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(5.0),
                                  child: FadeInImage.assetNetwork(
                                    placeholder: Images.kTransparentImage,
                                    image:
                                        'https://em-cdn.eatmubarak.pk/flutter/restaurant.png',
                                    fit: BoxFit.fitWidth,
                                    height: 80.0,
                                    width: 80,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Expanded(
                                flex: 6,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: index == 0
                                        ? Colors.white
                                        : const Color(0xFFF3F3F3),
                                    borderRadius: const BorderRadius.only(
                                      // topLeft: Radius.circular(8.0),
                                      topRight: Radius.circular(8.0),
                                      // bottomLeft: Radius.circular(8.0),
                                      bottomRight: Radius.circular(8.0),
                                    ),
                                  ),
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 20.0,
                                      ),
                                      Expanded(
                                          flex: 1,
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            //   mainAxisAlignment: MainAxisAlignment.start,

                                            children: [
                                              Expanded(
                                                flex: 3,
                                                child: Container(
                                                  // color: Colors.yellow,
                                                  child: CustomTextWidget(
                                                    text: '3x Deals',
                                                    color: Colors.black,
                                                    fontFamily:
                                                        '.SF Pro Display',
                                                    fontSize: 13.0,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                  flex: 6,
                                                  child: Container(
                                                    // color: Colors.red,
                                                    decoration: BoxDecoration(
                                                      color: index == 0
                                                          ? Colors.white
                                                          : const Color(
                                                              0xFFF3F3F3),
                                                      borderRadius:
                                                          const BorderRadius
                                                              .only(
                                                        // topLeft: Radius.circular(8.0),
                                                        topRight:
                                                            Radius.circular(
                                                                8.0),
                                                        // bottomLeft: Radius.circular(8.0),
                                                        bottomRight:
                                                            Radius.circular(
                                                                8.0),
                                                      ),
                                                    ),
                                                    child: CustomTextWidget(
                                                      text: '2h ago',
                                                      fontSize: 9.0,
                                                      fontFamily:
                                                          '.SF Pro Display',
                                                      color: Color(0xFF929292),
                                                      textAlignment:
                                                          TextAlign.left,
                                                    ),
                                                  )),

                                              //  SizedBox(width: 10,),
                                            ],
                                          )),
                                      Expanded(
                                        flex: 2,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: index == 0
                                                ? Colors.white
                                                : const Color(0xFFF3F3F3),
                                            borderRadius:
                                                const BorderRadius.only(
                                              // topLeft: Radius.circular(8.0),
                                              topRight: Radius.circular(8.0),
                                              // bottomLeft: Radius.circular(8.0),
                                              bottomRight: Radius.circular(8.0),
                                            ),
                                          ),
                                          child: CustomTextWidget(
                                            text:
                                                '2 smashed beef patties with shredded pickes...',
                                            color: Color(0xFF909090),
                                            fontFamily: '.SF Pro Display',
                                            fontSize: 11.0,
                                            fontWeight: FontWeight.normal,
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
                      width: 10,
                    ),
                  ],
                ),
              ],
            );
          }),
    );
  }
}
