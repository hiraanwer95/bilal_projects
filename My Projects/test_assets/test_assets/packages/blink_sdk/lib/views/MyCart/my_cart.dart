import 'dart:async';
import 'dart:math';

import 'package:blink_sdk/routes/app_pages.dart';
import 'package:blink_sdk/routes/app_routes.dart';
import 'package:blink_sdk/theme/colors.dart';
import 'package:blink_sdk/theme/icons.dart';
import 'package:blink_sdk/utils/BottomSheet/bottom_sheet_modal.dart';
import 'package:blink_sdk/utils/CustomWidgets/ContentInsideCircle/content_inside_circle.dart';
import 'package:blink_sdk/utils/CustomWidgets/CustomText/custom_text.dart';
import 'package:blink_sdk/views/Login/login.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';
import 'package:bordered_text/bordered_text.dart';
import 'package:transparent_image/transparent_image.dart';

import '../../utils/CustomWidgets/BottomNavigationBar/bottom_navigation_bar.dart';
import '../../utils/CustomWidgets/CustomButton/custom_button.dart';
import '../../utils/CustomWidgets/InputTextField/input_text_field.dart';

class MyCartScreen extends StatelessWidget {
  final BottomSheetCustom _bottomSheetCustom = BottomSheetCustom();
  MyCartScreen(
  ) : super();

  @override
  Widget build(BuildContext context) {
    List<int> listOfItems = [1, 2, 3, 4, 5];

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
          text: 'My Cart',
          fontSize: 20.0,
          fontFamily: '.SF Pro Display',
          fontWeight: FontWeight.w700,
          color: CustomColor.Black,
        ),
        // leading: IconButton(
        //   onPressed: () => Navigator.of(context).pop(),
        //   icon: Icon(
        //     Icons.arrow_back,
        //     size: 30,
        //     color: Colors.black,
        //   ),
        // ),
      ),
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(children: [
            for (int i in listOfItems)
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
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Expanded(
                                    flex: 2,
                                    child: Container(
                                      color: Colors.white,
                                      child: Center(
                                          child: ContentInsideColor(
                                        height: 30.0,
                                        roundContainerOutsideColor:
                                            Color(0xFFE3E3E3),
                                        isDigit: false,
                                        text: '1',
                                        shape: BoxShape.circle,
                                        fontSize: 14.0,
                                      )),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 6,
                                    child: Container(
                                      color: Colors.transparent,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            height: 10,
                                          ),

                                          Expanded(
                                            flex: 3,
                                            child: CustomTextWidget(
                                              text: 'American Double Cheese',
                                              fontFamily: '.SF Pro Display',
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),

                                          SizedBox(
                                            height: 2,
                                          ),
                                          Expanded(
                                            flex: 7,
                                            child: CustomTextWidget(
                                              text:
                                                  '2 smashed beef with shredded patties pickles, caramalized, onions....',
                                              fontFamily: '.SF Pro Display',
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xFF929292),
                                            ),
                                          ),

                                          SizedBox(
                                            height: 7,
                                          ),

                                          //   Expanded(),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 4,
                                    child: Container(
                                      color: Colors.transparent,
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Expanded(
                                              flex: 1,
                                              child: Container(
                                                color: Colors.transparent,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    SizedBox(
                                                      width: 1,
                                                    ),
                                                    Expanded(
                                                      flex: 1,
                                                      child: CustomTextWidget(
                                                        text: '2x',
                                                        color:
                                                            Color(0xFF808080),
                                                        fontFamily:
                                                            '.SF Pro Display',
                                                        fontSize: 14.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                                    ),
                                                    Expanded(
                                                      flex: 5,
                                                      child: CustomTextWidget(
                                                        text: '450',
                                                        color: Colors.black,
                                                        fontFamily:
                                                            '.SF Pro Display',
                                                        fontSize: 14.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              )),
                                          Expanded(
                                            flex: 2,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Expanded(
                                                  flex: 2,
                                                  child: Container(
                                                    height: 30,
                                                    decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      border: Border.all(
                                                        color: Color.fromARGB(
                                                            255, 217, 216, 216),
                                                      ),
                                                      borderRadius:
                                                          const BorderRadius
                                                              .only(
                                                        topLeft:
                                                            Radius.circular(
                                                                4.0),
                                                        topRight:
                                                            Radius.circular(
                                                                4.0),
                                                        bottomLeft:
                                                            Radius.circular(
                                                                4.0),
                                                        bottomRight:
                                                            Radius.circular(
                                                                4.0),
                                                      ),
                                                    ),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        SizedBox(
                                                          width: 7,
                                                        ),
                                                        Expanded(
                                                          flex: 1,
                                                          child: Icon(
                                                            Icons
                                                                .delete_outline_outlined,
                                                            size: 20,
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          width: 20,
                                                        ),
                                                        Expanded(
                                                          flex: 1,
                                                          child: Center(
                                                            child:
                                                                CustomTextWidget(
                                                              text: '1',
                                                              fontFamily:
                                                                  '.SF Pro Display',
                                                              fontSize: 14.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              color:
                                                                  Colors.black,
                                                            ),
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          width: 20,
                                                        ),
                                                        Expanded(
                                                          flex: 1,
                                                          child: Center(
                                                            child: Icon(
                                                              Icons.add,
                                                              color:
                                                                  Colors.black,
                                                              size: 20.0,
                                                            ),
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          width: 5,
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
                                    ),
                                  ),
                                ]),
                          ))
                    ],
                  ),
                  const Divider(
                    color: Color(0xFFE8E8E8),
                    thickness: 1,
                    indent: 20,
                    endIndent: 20,
                  )
                ],
              ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(
                  width: 20,
                ),
                Expanded(
                    flex: 2,
                    child: Container(
                      //     color: Colors.yellow,
                      height: 350,

                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color.fromARGB(255, 239, 239, 239),
                        ),
                        color: Color(0xFFEDEDED).withOpacity(0.5),

                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(8.0),
                          topRight: Radius.circular(8.0),
                          bottomLeft: Radius.circular(8.0),
                          bottomRight: Radius.circular(8.0),
                        ),
                        // boxShadow: [
                        //   BoxShadow(
                        //     color: Colors.grey.withOpacity(0.5),
                        //     spreadRadius: 3,
                        //     blurRadius: 7,
                        //     offset: Offset(0, 3), // changes position of shadow
                        //   ),
                        // ],
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Expanded(
                            flex: 2,
                            child: Container(
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Expanded(
                                    flex: 8,
                                    child: CustomTextWidget(
                                      text: 'Use Wallet: Rs. 0',
                                      color: Colors.black,
                                      fontFamily: '.SF Pro Display',
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(width: 80,),
                                  Expanded(
                                    flex: 2,
                                    child: FlutterSwitch(
                                      inactiveColor: const Color(0xFFDCDCDC),
                                      activeColor: const Color(0xFF921A21),
                                      width: 50.0,
                                      height: 25.0,
                                      valueFontSize: 12.0,
                                      toggleSize: 18.0,
                                      value: true,
                                      toggleColor: Colors.white,
                                      onToggle: (val) {
                                        // // _orderQuantityDetailsController
                                        // //     .isAddOnsFlutterSwitches[index]
                                        //     .value = val;
                                      },
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Container(
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Expanded(
                                    flex: 8,
                                    child: CustomTextWidget(
                                      text: 'Loyalty Points: 100',
                                      color: Colors.black,
                                      fontFamily: '.SF Pro Display',
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(width: 80,),
                                  Expanded(
                                    flex: 2,
                                    child: FlutterSwitch(
                                      inactiveColor: const Color(0xFFDCDCDC),
                                      activeColor: const Color(0xFF921A21),
                                      width: 50.0,
                                      height: 25.0,
                                      valueFontSize: 12.0,
                                      toggleSize: 18.0,
                                      value: true,
                                      toggleColor: Colors.white,
                                      onToggle: (val) {
                                        // // _orderQuantityDetailsController
                                        // //     .isAddOnsFlutterSwitches[index]
                                        //     .value = val;
                                      },
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
                            height: 12,
                          ),
                          Expanded(
                            flex: 3,
                            child: Container(
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: InputTextField(
                                      // isSearch: _homeController,
                                      // controller: searchController,
                                      height: 50.0,
                                      hintText: 'Enter promo code (if any)',
                                      hintTextColor: const Color(0xFFAFAFAF),
                                      fillColor: const Color(0xFFFAFAFA),
                                      strokeColor: const Color(0xFFEAEAEA),
                                      roundedCornerRadius: 8.0,
                                      hintTextSize: 15.0,
                                      textFontSize: 12.0,
                                      isPrefixIcon: false,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const Divider(
                            color: Color(0xFFE8E8E8),
                            thickness: 2,
                            indent: 20,
                            endIndent: 20,
                          ),
                          Expanded(
                            flex: 3,
                            child: Container(
                              // color: Colors.red,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Expanded(
                                    flex: 8,
                                    child: CustomTextWidget(
                                      text: 'Total Amount',
                                      color: Colors.black,
                                      fontFamily: '.SF Pro Display',
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Expanded(
                                          flex: 2,
                                          child: CustomTextWidget(
                                            text: '700',
                                            color: Colors.black,
                                            fontFamily: '.SF Pro Display',
                                            fontSize: 15.0,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        Expanded(
                                          flex: 2,
                                          child: CustomTextWidget(
                                            text: '(incl Tax)',
                                            color: Color(0xFF929292),
                                            fontFamily: '.SF Pro Display',
                                            fontSize: 12.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        // SizedBox(height: 7,)
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 30,
                                  )
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Center(
                              child: CustomTextWidget(
                                text: 'Hurry Up!! You got a free delivery',
                                color: Colors.black,
                                fontFamily: '.SF Pro Display',
                                fontSize: 14.0,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                SizedBox(
                                  width: 20,
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    height: 65,
                                    child: CustomButton(
                                      btnText: 'Proceed to Checkout',
                                      btnBackgroundColor: CustomColor.MaroonTheme,
                                      btnTextColor: Colors.white,
                                      btnTextFontFamily: '.SF Pro Display',
                                      btnTextFontSize: 20.0,
                                      borderRadius: 8.0,
                                      onPressed: () {
                                        _bottomSheetCustom
                                            .loginWithPhoneNumberBottomSheet(
                                                context);
                                      },
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
                    )),
                SizedBox(
                  width: 20,
                ),
              ],
            ),
            SizedBox(
              height: 120,
            ),
          ]),
        ),
      ),
    );
  }
}
