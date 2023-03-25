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

class OrderDetailsScreen extends StatelessWidget {
  OrderDetailsScreen() : super();

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
      appBar: AppBar(
leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: Icon(
            Icons.arrow_back,
            size: 20,
            color: Colors.black,
          ),
        ),        backgroundColor: CustomColor.MaroonTheme,
        elevation: 0.0,
        title: CustomTextWidget(
          text: 'Order Details',
          fontSize: 14.0,
          fontFamily: '.SF Pro Display',
          fontWeight: FontWeight.bold,
          color: CustomColor.White,
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Stack(children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: 120,
            color: CustomColor.MaroonTheme,
          ),
          Column(
            children: [
              const SizedBox(
                height: 65,
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
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xFFF5F5F5),
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
                      height: 150,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              CustomTextWidget(
                                text: 'Estimate Arrival',
                                color: const Color(0xFF989898),
                                fontFamily: '.SF Pro Display',
                                fontSize: 12.0,
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                  flex: 2,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        flex: 2,
                                        child: Container(
                                          // height: 50,
                                          child: CustomTextWidget(
                                            text: '30-34 min',
                                            fontFamily: '.SF Pro Display',
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ],
                                  )),
                              Expanded(
                                  flex: 1,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        flex: 2,
                                        child: Container(
                                          height: 50,
                                          child: FadeInImage.assetNetwork(
                                              placeholder: Images.kTransparentImage,
                                              image:
                                                  'https://em-cdn.eatmubarak.pk/flutter/chef.png'),
                                        ),
                                      ),
                                    ],
                                  )),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                  flex: 1,
                                  child: Container(
                                    height: 8,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Color(0xFFF5F5F5),
                                      ),
                                      color: Color(0xFFFBC000),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(8.0),
                                        topRight: Radius.circular(8.0),
                                        bottomLeft: Radius.circular(8.0),
                                        bottomRight: Radius.circular(8.0),
                                      ),
                                    ),
                                  )),
                              Expanded(
                                  flex: 2,
                                  child: Container(
                                    height: 8,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Color(0xFFF5F5F5),
                                      ),
                                      color: Color(0xFFEDEDED),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(8.0),
                                        topRight: Radius.circular(8.0),
                                        bottomLeft: Radius.circular(8.0),
                                        bottomRight: Radius.circular(8.0),
                                      ),
                                    ),
                                  )),
                              Expanded(
                                  flex: 1,
                                  child: Container(
                                    height: 8,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Color(0xFFF5F5F5),
                                      ),
                                      color: Color(0xFFEDEDED),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(8.0),
                                        topRight: Radius.circular(8.0),
                                        bottomLeft: Radius.circular(8.0),
                                        bottomRight: Radius.circular(8.0),
                                      ),
                                    ),
                                  )),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                flex: 1,
                                child: CustomTextWidget(
                                  text:
                                      'It will take some time before it gets delivered to your doorstep.',
                                  fontFamily: '.SF Pro Display',
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.normal,
                                  color: const Color(0xFF989898),
                                ),
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
              const SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      color: const Color(0xFFF4F4F4),
                      height: 40,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          CustomTextWidget(
                            text: 'Order Details',
                            fontFamily: '.SF Pro Display',
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  // SizedBox(
                  //   width: 10,
                  // ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      color: Colors.white,
                      height: 120,
                      child: Column(
                        children: [
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
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                          flex: 1,
                                          child: CustomTextWidget(
                                            text: 'Delivery Type',
                                            fontFamily: '.SF Pro Display',
                                            fontSize: 13.0,
                                            fontWeight: FontWeight.normal,
                                            color: const Color(0xFF555555),
                                          )),
                                      SizedBox(
                                        width: 120,
                                      ),
                                      Expanded(
                                          flex: 1,
                                          child: CustomTextWidget(
                                            text: 'Delivery',
                                            fontFamily: '.SF Pro Display',
                                            fontSize: 13.0,
                                            fontWeight: FontWeight.normal,
                                            color: const Color(0xFF909090),
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
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                          flex: 1,
                                          child: CustomTextWidget(
                                            text: 'Payment Type',
                                            fontFamily: '.SF Pro Display',
                                            fontSize: 13.0,
                                            fontWeight: FontWeight.normal,
                                            color: const Color(0xFF555555),
                                          )),
                                      SizedBox(
                                        width: 120,
                                      ),
                                      Expanded(
                                          flex: 1,
                                          child: CustomTextWidget(
                                            text: 'Credit Card',
                                            fontFamily: '.SF Pro Display',
                                            fontSize: 13.0,
                                            fontWeight: FontWeight.normal,
                                            color: const Color(0xFF909090),
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
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                          flex: 1,
                                          child: CustomTextWidget(
                                            text: 'Loyalty Points',
                                            fontFamily: '.SF Pro Display',
                                            fontSize: 13.0,
                                            fontWeight: FontWeight.normal,
                                            color: const Color(0xFF555555),
                                          )),
                                      SizedBox(
                                        width: 120,
                                      ),
                                      Expanded(
                                          flex: 1,
                                          child: CustomTextWidget(
                                            text: '100.0',
                                            fontFamily: '.SF Pro Display',
                                            fontSize: 13.0,
                                            fontWeight: FontWeight.normal,
                                            color: const Color(0xFF909090),
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
                        ],
                      ),
                    ),
                  ),
                  // SizedBox(
                  //   width: 10,
                  // ),
                ],
              ),
              //  const SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      color: Colors.white,
                      height: 40,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          CustomTextWidget(
                            text: 'Payment Details',
                            fontFamily: '.SF Pro Display',
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      height: 160,
                      child: Column(
                        children: [
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
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                          flex: 1,
                                          child: CustomTextWidget(
                                            text: 'Full Name',
                                            fontFamily: '.SF Pro Display',
                                            fontSize: 13.0,
                                            fontWeight: FontWeight.normal,
                                            color: const Color(0xFF555555),
                                          )),
                                      SizedBox(
                                        width: 120,
                                      ),
                                      Expanded(
                                          flex: 1,
                                          child: CustomTextWidget(
                                            text: 'Dummy',
                                            fontFamily: '.SF Pro Display',
                                            fontSize: 13.0,
                                            fontWeight: FontWeight.normal,
                                            color: const Color(0xFF909090),
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
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                          flex: 1,
                                          child: CustomTextWidget(
                                            text: 'Mobile No',
                                            fontFamily: '.SF Pro Display',
                                            fontSize: 13.0,
                                            fontWeight: FontWeight.normal,
                                            color: const Color(0xFF555555),
                                          )),
                                      SizedBox(
                                        width: 120,
                                      ),
                                      Expanded(
                                          flex: 1,
                                          child: CustomTextWidget(
                                            text: '+923422060377',
                                            fontFamily: '.SF Pro Display',
                                            fontSize: 13.0,
                                            fontWeight: FontWeight.normal,
                                            color: const Color(0xFF909090),
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
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                          flex: 1,
                                          child: Container(
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                Expanded(
                                                  flex: 1,
                                                  child: Container(
                                                    height: 30,
                                                    child: CustomTextWidget(
                                                      text: 'Delivery Address',
                                                      fontFamily:
                                                          '.SF Pro Display',
                                                      fontSize: 13.0,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      color: const Color(
                                                          0xFF555555),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          )),
                                      SizedBox(
                                        width: 120,
                                      ),
                                      Expanded(
                                          flex: 1,
                                          child: Container(
                                            height: 50,
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                Expanded(
                                                  flex: 1,
                                                  child: CustomTextWidget(
                                                    text:
                                                        'Tariq RD, Block-15, Karachi',
                                                    fontFamily:
                                                        '.SF Pro Display',
                                                    fontSize: 13.0,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    color:
                                                        const Color(0xFF909090),
                                                  ),
                                                ),
                                              ],
                                            ),
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
                        ],
                      ),
                    ),
                  ),
                ],
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
                                                        CrossAxisAlignment
                                                            .start,
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
                                                                  FontWeight
                                                                      .w500,
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
                                                                  FontWeight
                                                                      .w500,
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
                                                                  FontWeight
                                                                      .w500,
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
                height: 100,
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
