import 'dart:async';

import 'package:blink_sdk/controllers/welcome_controller.dart';
import 'package:blink_sdk/core/models/LocalModels/list_make_it_meal.dart';
import 'package:blink_sdk/routes/app_pages.dart';
import 'package:blink_sdk/routes/app_routes.dart';
import 'package:blink_sdk/theme/colors.dart';
import 'package:blink_sdk/theme/icons.dart';
import 'package:blink_sdk/utils/BottomSheet/bottom_sheet_modal.dart';
import 'package:blink_sdk/utils/CustomWidgets/BottomNavigationBar/bottom_navigation_bar.dart';
import 'package:blink_sdk/utils/CustomWidgets/CustomText/custom_text.dart';
import 'package:blink_sdk/utils/LanguageFilterHelper/language_filter.dart';
import 'package:blink_sdk/views/Home/NewHomeDesign/example_data.dart';
import 'package:blink_sdk/views/Login/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';
import 'package:bordered_text/bordered_text.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import '../../controllers/order_quantity_details.dart';
import '../../utils/CustomWidgets/ContentInsideCircle/content_inside_circle.dart';
import '../../utils/CustomWidgets/CustomButton/custom_button.dart';

class OrderQuantityDetails extends StatelessWidget {
  OrderQuantityDetails() : super();
  bool status = true;
  bool disableStatus = false;

  OrderQuantityDetailsController _orderQuantityDetailsController = Get.find();
  WelcomeController _welcomeController = Get.find();

  final foodData = Get.arguments;

  final LanguagFilterHelper _languagFilterHelper = LanguagFilterHelper();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Container(
          color: Colors.white,
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                    height: 60, // Ok

                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.transparent, width: 1.0),
                      color: Colors.transparent,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(3.0),
                        topRight: Radius.circular(3.0),
                        bottomLeft: Radius.circular(3.0),
                        bottomRight: Radius.circular(3.0),
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        SizedBox(
                          width: 18,
                        ),
                        Expanded(
                          flex: 3,
                          child: InkWell(
                            onTap: (() => _orderQuantityDetailsController
                                        .addToCartCounter.value >
                                    0
                                ? _orderQuantityDetailsController
                                    .addToCartCounter.value--
                                : 0.toString()),
                            child: Container(
                              // color: Colors.blueAccent,

                              decoration: BoxDecoration(
                                color: const Color(0xFFDBDBDB),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(8.0),
                                  topRight: Radius.circular(8.0),
                                  bottomLeft: Radius.circular(8.0),
                                  bottomRight: Radius.circular(8.0),
                                ),
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.remove,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                        // const VerticalDivider(
                        //   width: 20,
                        //   thickness: 1,
                        //   indent: 15,
                        //   endIndent: 15,
                        //   color: const Color(0xFF929292),
                        // ),
                        Expanded(
                          flex: 4,
                          child: Container(
                            // color: Colors.blueAccent,
                            color: Colors.transparent,

                            child: Center(
                              child: Obx(
                                () => CustomTextWidget(
                                  text: _orderQuantityDetailsController
                                              .addToCartCounter.value >=
                                          0
                                      ? _orderQuantityDetailsController
                                          .addToCartCounter.value
                                          .toString()
                                      : 0.toString(),
                                  fontFamily: '.SF Pro Display',
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                        // const VerticalDivider(
                        //   width: 20,
                        //   thickness: 1,
                        //   indent: 15,
                        //   endIndent: 15,
                        //   color: const Color(0xFF929292),
                        // ),
                        Expanded(
                          flex: 3,
                          child: InkWell(
                            onTap: () => _orderQuantityDetailsController
                                .addToCartCounter.value++,
                            child: Container(
                              // color: Colors.RblueAccent,

                              decoration: BoxDecoration(
                                color: const Color(0xFF921621),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(8.0),
                                  topRight: Radius.circular(8.0),
                                  bottomLeft: Radius.circular(8.0),
                                  bottomRight: Radius.circular(8.0),
                                ),
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                flex: 1,
                child: Container(
                  //   color: Colors.blue,
                  height: 60,

                  child: Obx(
                    () => CustomButton(
                        btnTextFontSize: 20.0,
                        btnBackgroundColor: _orderQuantityDetailsController
                                    .addToCartCounter.value >
                                0
                            ? CustomColor.MaroonTheme
                            : Color(0xFFDBDBDB),
                        borderRadius: 8.0,
                        btnText: 'Add to Cart',
                        btnTextColor: _orderQuantityDetailsController
                                    .addToCartCounter.value >
                                0
                            ? CustomColor.White
                            : CustomColor.Black,
                        btnTextFontFamily: '.SF Pro Display',
                        onPressed: () => _orderQuantityDetailsController
                            .isAddToCart.value = true),
                  ),
                ),
              ),
              SizedBox(
                width: 18,
              ),
            ],
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          flex: 2,
                          child: Container(
                              height: 400,
                              child: FadeInImage.assetNetwork(
                                fit: BoxFit.fill,
                                placeholder: Images.kTransparentImage,
                                image: foodData.imageUrl,
                              )),
                        ),
                      ],
                    ),
                    Positioned(
                        top: MediaQuery.of(context).size.height * 0.02,
                        left: MediaQuery.of(context).size.width *
                            0.05, //give the values according to your requirement
                        child: GestureDetector(
                          onTap: (() => Get.back()),
                          child: Image.asset(
                            Images.BackBtn,
                            width: 40,
                            height: 40,
                            fit: BoxFit.contain,
                          ),
                        )),
                  ],
                ),
                SizedBox(
                  height: 18,
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        // color: Colors.yellow,
                        child: Row(
                          children: [
                            SizedBox(
                              width: 20.0,
                            ),
                            Expanded(
                              flex: 4,
                              child: Container(
                                // color: Colors.blueAccent,

                                child: CustomTextWidget(
                                  text: _languagFilterHelper.languageFilter(
                                      foodData.name,
                                      _welcomeController
                                          .languageSelectedIndex.value),
                                  fontFamily: '.SF Pro Display',
                                  fontSize: 23.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: ContentInsideColor(
                                  width: 40.0,
                                  height: 40.0,
                                  shape: BoxShape.circle,
                                  roundContainerOutsideColor: Color(0xFFFBC000),
                                  icon: Icons.favorite,
                                  iconColor: Colors.white,
                                  iconSize: 25.0),
                            ),
                            // SizedBox(
                            //   width: 10.0,
                            // ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 1,
                ),

                // Row(
                //   mainAxisSize: MainAxisSize.max,
                //   children: [
                //     SizedBox(
                //       width: 10,
                //     ),

                //     Expanded(
                //       flex: 1,
                //       child: FadeInImage.memoryNetwork(
                //         width: 20,
                //         height: 20,
                //         placeholder: kTransparentImage,
                //         image:
                //             'https://em-cdn.eatmubarak.pk/flutter/map-marker-maroon.png',
                //       ),
                //     ),
                //     Expanded(
                //       flex: 9,
                //       child: Container(
                //         // color: Colors.blueAccent,

                //         child:  CustomTextWidget(
                //           text: 'Tariq Rd, P.E.C.H.S Block 2, Karachi',
                //           fontFamily: '.SF Pro Display',
                //           fontSize: 15.0,
                //           fontWeight: FontWeight.w600,
                //           color: const Color(0xFF921A21),
                //         ),
                //       ),
                //     ),
                //   ],
                // ),
                // SizedBox(
                //   height: 24,
                // ),

                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        // color: Colors.yellow,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 20.0,
                            ),
                            Expanded(
                              flex: 2,
                              child: Container(
                                // color: Colors.blueAccent,

                                child: CustomTextWidget(
                                  text: 'Ingredients',
                                  fontFamily: '.SF Pro Display',
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 9,
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        // color: Colors.yellow,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 20.0,
                            ),
                            Expanded(
                              flex: 2,
                              child: Container(
                                // color: Colors.blueAccent,

                                child: CustomTextWidget(
                                  text: foodData.description,
                                  fontFamily: '.SF Pro Display',
                                  fontSize: 13.0,
                                  fontWeight: FontWeight.normal,
                                  color: const Color(0xFF909090),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 18.0,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        color: const Color(0xFFF4F4F4),
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            CustomTextWidget(
                              text: 'Make it a meal',
                              fontFamily: '.SF Pro Display',
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                MediaQuery.removePadding(
                  context: context,
                  removeTop: true,
                  removeBottom: true,
                  child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: 3,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          children: [
                            SizedBox(
                              height: 18,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: <Widget>[
                                        Expanded(
                                          child: Obx((() => FlutterSwitch(
                                                inactiveColor:
                                                    const Color(0xFFDCDCDC),
                                                activeColor:
                                                    const Color(0xFF921A21),
                                                width: 50.0,
                                                height: 25.0,
                                                valueFontSize: 12.0,
                                                toggleSize: 18.0,
                                                value:
                                                    _orderQuantityDetailsController
                                                        .isMealFlutterSwitches[
                                                            index]
                                                        .value,
                                                toggleColor: Colors.white,
                                                onToggle: (val) {
                                                  _orderQuantityDetailsController
                                                      .isMealFlutterSwitches[
                                                          index]
                                                      .value = val;
                                                },
                                              ))),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 6,
                                  child: Container(
                                    // color: Colors.blueAccent,

                                    child: CustomTextWidget(
                                      text: 'Regular Fries + Drink',
                                      fontFamily: '.SF Pro Display',
                                      fontSize: 15.0,
                                      color: const Color(0xFF909090),
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    // color: Colors.blueAccent,
                                    //color: Colors.red,
                                    padding: EdgeInsets.only(left: 12.0),

                                    child: CustomTextWidget(
                                      text: 'Rs. 280',
                                      fontFamily: '.SF Pro Display',
                                      fontSize: 14.0,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        );
                      }),
                ),
                SizedBox(
                  height: 18,
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        color: const Color(0xFFF4F4F4),
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            CustomTextWidget(
                              text: 'Add Ons',
                              fontFamily: '.SF Pro Display',
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                MediaQuery.removePadding(
                  context: context,
                  removeTop: true,
                  removeBottom: true,
                  child: ListView.builder(
                      padding: EdgeInsets.only(
                          bottom: 40), // if you have non-mini FAB else use 40

                      shrinkWrap: true,
                      itemCount: 3,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: <Widget>[
                                        Expanded(
                                          child: Obx(
                                            () => FlutterSwitch(
                                              inactiveColor:
                                                  const Color(0xFFDCDCDC),
                                              activeColor:
                                                  const Color(0xFF921A21),
                                              width: 50.0,
                                              height: 25.0,
                                              valueFontSize: 12.0,
                                              toggleSize: 18.0,
                                              value:
                                                  _orderQuantityDetailsController
                                                      .isAddOnsFlutterSwitches[
                                                          index]
                                                      .value,
                                              toggleColor: Colors.white,
                                              onToggle: (val) {
                                                _orderQuantityDetailsController
                                                    .isAddOnsFlutterSwitches[
                                                        index]
                                                    .value = val;
                                              },
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 6,
                                  child: Container(
                                    // color: Colors.blueAccent,

                                    child: CustomTextWidget(
                                      text: 'Cheese Slice',
                                      fontFamily: '.SF Pro Display',
                                      fontSize: 15.0,
                                      color: const Color(0xFF909090),
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    // color: Colors.blueAccent,
                                    padding: EdgeInsets.only(left: 16.0),

                                    child: CustomTextWidget(
                                      text: 'Rs. 50',
                                      fontFamily: '.SF Pro Display',
                                      fontSize: 14.0,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                          ],
                        );
                      }),
                ),
                SizedBox(
                  height: 5,
                ),

                SizedBox(
                  height: 30,
                )
              ],
            ),
          ),
        ));
  }
}
