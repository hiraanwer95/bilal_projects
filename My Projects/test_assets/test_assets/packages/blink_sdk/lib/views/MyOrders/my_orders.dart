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

class MyOrders extends StatelessWidget {
  MyOrders(this.listOfRestaurantPics) : super();

  List<dynamic> listOfRestaurantPics;

  @override
  Widget build(BuildContext context) {
    listOfRestaurantPics = [
      'https://em-cdn.eatmubarak.pk/flutter/restaurant.png',
      'https://em-cdn.eatmubarak.pk/flutter/restaurant.png',
    ];

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
      appBar: AppBar(
        backgroundColor: CustomColor.White,
        elevation: 0.0,
        title: CustomTextWidget(
          text: 'My Orders',
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
        ),      ),
      body: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: 5,
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
                          height: 120,
                          decoration: BoxDecoration(
                            color: index == 0
                                ? Colors.white
                                : const Color(0xFFF3F3F3),
                            //     color: Colors.black,
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
                                offset:
                                    Offset(0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 4,
                                child: Container(),
                                // child: Center(
                                //   child: ClipRRect(
                                //     borderRadius: BorderRadius.circular(12.0),
                                //     child: FadeInImage.memoryNetwork(
                                //       placeholder: kTransparentImage,
                                //       image:
                                //           'https://em-cdn.eatmubarak.pk/flutter/restaurant.png',
                                //       fit: BoxFit.fitWidth,
                                //       height: 100.0,
                                //       width: 100,
                                //     ),
                                //   ),
                                // ),
                              ),
                              Expanded(
                                flex: 6,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: index == 0
                                        ? Colors.white
                                        : const Color(0xFFF4F4F4),
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
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: [
                                              Expanded(
                                                flex: 9,
                                                child: CustomTextWidget(
                                                  text:
                                                      'American Double Cheese',
                                                  color: Colors.black,
                                                  fontFamily: '.SF Pro Display',
                                                  fontSize: 13.0,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              Expanded(
                                                flex: 1,
                                                child: ContentInsideColor(
                                                  shape: BoxShape.circle,
                                                  roundContainerOutsideColor:
                                                      index == 0
                                                          ? Color(0xFF00D1B2)
                                                          : index == 1
                                                              ? Color(
                                                                  0xFF209CEE)
                                                              : index == 2
                                                                  ? Color(
                                                                      0xFFFF3860)
                                                                  : Color(
                                                                      0xFF00D1B2),
                                                  icon: Icons.circle,
                                                  iconColor: Colors.white,
                                                  iconSize: 12.0,
                                                ),
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                            ],
                                          )),
                                      Expanded(
                                        flex: 1,
                                        child: Container(
                                          color: index == 0
                                              ? Colors.white
                                              : const Color(0xFFF3F3F3),
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
                                      Expanded(
                                        flex: 1,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            // SizedBox(
                                            //   width: 5,
                                            // ),
                                            Expanded(
                                              flex: 2,
                                              child: CustomButton(
                                                  btnTextFontSize:
                                                      index == 2 ? 10.0 : 14.0,
                                                  btnBackgroundColor:
                                                      Color(0xFFDBDBDB),
                                                  borderRadius: 4.0,
                                                  btnText: 'View Details',
                                                  btnTextColor:
                                                      CustomColor.Black,
                                                  btnTextFontFamily:
                                                      '.SF Pro Display'),
                                            ),

                                            SizedBox(
                                              width: 10.0,
                                            ),

                                            index == 2
                                                ? Expanded(
                                                    flex: 2,
                                                    child: CustomButton(
                                                        btnTextFontSize:
                                                            index == 2
                                                                ? 10.0
                                                                : 14.0,
                                                        btnBackgroundColor:
                                                            Color(0xFFED3030),
                                                        borderRadius: 4.0,
                                                        btnText: 'Re-Order',
                                                        btnTextColor:
                                                            CustomColor.White,
                                                        btnTextFontFamily:
                                                            '.SF Pro Display'),
                                                  )
                                                : Container(),

                                            SizedBox(
                                              width: 10.0,
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10.0,
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
