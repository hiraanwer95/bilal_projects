import 'dart:async';
import 'dart:convert';

import 'package:blink_sdk/controllers/home_controller.dart';
import 'package:blink_sdk/controllers/welcome_controller.dart';
import 'package:blink_sdk/core/services/api_calls.dart';
import 'package:blink_sdk/routes/app_pages.dart';
import 'package:blink_sdk/routes/app_routes.dart';
import 'package:blink_sdk/theme/colors.dart';
import 'package:blink_sdk/theme/icons.dart';
import 'package:blink_sdk/utils/BottomSheet/bottom_sheet_modal.dart';
import 'package:blink_sdk/utils/CustomWidgets/CustomText/custom_text.dart';
import 'package:blink_sdk/views/Login/login.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide Response;
import 'package:bordered_text/bordered_text.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import '../../core/models/NetworkModels/WelcomeScreen/get_restaurant_geo_fences.dart';

class WelcomeScreen extends StatelessWidget {
  final WelcomeController _welcome = Get.find();
  final BottomSheetCustom _bottomSheet = BottomSheetCustom();

  WelcomeScreen() : super();

  @override
  Widget build(BuildContext context) {
    _welcome.manipulateDeliveryTypes();
    _welcome.checkLanguageSelectedLocally();
    _welcome.readLanguageJson();

    return Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          child: Image.asset(
            Images.Language,
            fit: BoxFit.cover,
          ),
          onPressed: () {
            _welcome.displayDialogForLanguageSelection(context);
          },
        ),
        body: Column(
          children: [
            Stack(
              children: [
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.53,
                        child: FadeInImage.assetNetwork(
                          fit: BoxFit.cover,
                          placeholder: Images.kTransparentImage,
                          image:
                              'https://em-cdn.eatmubarak.pk/flutter/restaurant.png',
                        ),
                      ),
                    ),
                  ],
                ),
                _welcome.backBtn.value
                    ? Positioned(
                        top: MediaQuery.of(context).size.height * 0.05,
                        left: MediaQuery.of(context).size.width *
                            0.05, //give the values according to your requirement
                        child: InkWell(
                          onTap: (() {
                            if (_welcome.areaNameSelected.value != "" ||
                                _welcome.branchNameSelected.value != "") {
                              Get.back();
                            }
                            else{
                              print("Either area name or branch name is missing. ");
                            }
                          }),
                          child: FadeInImage.assetNetwork(
                            width: 40,
                            height: 40,
                            placeholder: Images.kTransparentImage,
                            image:
                                'https://em-cdn.eatmubarak.pk/flutter/down-arrow.png',
                            fit: BoxFit.contain,
                          ),
                        ))
                    : Container(),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            // ignore: avoid_unnecessary_containers

            Row(
              children: [
                SizedBox(
                  width: 18,
                ),
                Expanded(
                  flex: 2,
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Hey ',
                          style: TextStyle(
                            color: CustomColor.WelcomeColor,
                            fontSize: 35.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: '.SF Pro Display',
                            decoration: TextDecoration.none,
                          ),
                        ),
                        WidgetSpan(
                          // child: FadeInImage.assetNetwork(
                          //   width: 40,
                          //   height: 40,
                          //   placeholder: Images.kTransparentImage,
                          //   image:
                          //       'https://em-cdn.eatmubarak.pk/flutter/hand.png',
                          // ),
                          child: Image.asset(
                            Images.Hand,
                            width: 40,
                            height: 40,
                          ),
                        ),
                        TextSpan(
                          text: ' Welcome to Burger Lab!',
                          style: TextStyle(
                            color: CustomColor.WelcomeColor,
                            fontSize: 35.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: '.SF Pro Display',
                            decoration: TextDecoration.none,
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
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Obx(
              () => _welcome.isHomeDelivery.value
                  ? Row(children: [
                      SizedBox(
                        width: 18,
                      ),
                      Expanded(
                        flex: 7,
                        child: Center(
                          child: GestureDetector(
                            onTap: () {
                              _bottomSheet.showBottomSheetHomeDelivery(context);
                              // _welcome.showCustomDialogForAreaNames(context);
                              // _welcome
                              //     .showCustomDialogForCityHomeDelivery(context);

                              _welcome.lastDeliveryTypeSelected.value =
                                  "Delivery";
                            },
                            child: Container(
                              height: 70, // Ok

                              decoration: BoxDecoration(
                                border: Border.all(
                                    color:
                                        CustomColor.WelcomeScreenBtnStrokeColor,
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
                                  Expanded(
                                      flex: 3,
                                      // child: FadeInImage.assetNetwork(
                                      //   width: 75,
                                      //   height: 40,
                                      //   placeholder: Images.kTransparentImage,
                                      //   image:
                                      //       'https://em-cdn.eatmubarak.pk/flutter/home-delivery.png',
                                      // ),

                                      child: Image.asset(
                                        Images.Delivery,
                                        width: 75,
                                        height: 40,
                                      )),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Expanded(
                                      flex: 8,
                                      child: Container(
                                          color: Colors.transparent,
                                          child: CustomTextWidget(
                                            text: 'Delivery',
                                            color: CustomColor
                                                .WelcomeScreenTextColor,
                                            fontFamily: '.SF Pro Display',
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.w500,
                                          ))),
                                  const SizedBox(
                                    width: 2,
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Container(
                                      color: Colors.transparent,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Image.asset(
                                            Images.ArrowLight,
                                            width: 30,
                                            height: 30,
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
                        ),
                      ),
                      SizedBox(
                        width: 18,
                      ),
                    ])
                  : Container(),
            ),
            const SizedBox(
              height: 10,
            ),
            Obx(
              () => _welcome.isPickUp.value
                  ? Row(children: [
                      SizedBox(
                        width: 18,
                      ),
                      Expanded(
                        flex: 7,
                        child: Center(
                          child: GestureDetector(
                            onTap: () {
                              _bottomSheet.showBottomSheetPickUp(
                                context,
                              );
                           //   _welcome.showCustomDialogForCityPickUp(context);
                              _welcome.lastDeliveryTypeSelected.value =
                                  "Pick Up";
                            },
                            child: Container(
                              height: 70, // Ok
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color:
                                        CustomColor.WelcomeScreenBtnStrokeColor,
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
                                  Expanded(
                                    flex: 3,
                                    // child: FadeInImage.assetNetwork(
                                    //   width: 75,
                                    //   height: 40,
                                    //   placeholder: Images.kTransparentImage,
                                    //   image:
                                    //       'https://em-cdn.eatmubarak.pk/flutter/pickup.png',
                                    // ),
                                    child: Image.asset(
                                      Images.PickUp,
                                      width: 75,
                                      height: 40,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 2,
                                  ),
                                  Expanded(
                                      flex: 8,
                                      child: Container(
                                          color: Colors.transparent,
                                          child: CustomTextWidget(
                                            text: 'Pick-Up',
                                            color: CustomColor
                                                .WelcomeScreenTextColor,
                                            fontFamily: '.SF Pro Display',
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.w500,
                                          ))),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Container(
                                      color: Colors.transparent,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Image.asset(
                                            Images.ArrowLight,
                                            width: 30,
                                            height: 30,
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
                        ),
                      ),
                      SizedBox(
                        width: 18,
                      ),
                    ])
                  : Container(),
            ),

            const SizedBox(
              height: 10,
            ),

            Obx(
              () => _welcome.isDineIn.value
                  ? Row(children: [
                      SizedBox(
                        width: 18,
                      ),
                      Expanded(
                        flex: 7,
                        child: Center(
                          child: GestureDetector(
                            onTap: () {
                              _bottomSheet.showBottomSheetDineIn(context);
                           //   _welcome.showCustomDialogForCityDineIn(context);
                              _welcome.lastDeliveryTypeSelected.value =
                                  "Dine In";
                            },
                            child: Container(
                              height: 70, // Ok
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color:
                                        CustomColor.WelcomeScreenBtnStrokeColor,
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
                                  Expanded(
                                    flex: 3,
                                    // child: FadeInImage.assetNetwork(
                                    //   width: 75,
                                    //   height: 40,
                                    //   placeholder: Images.kTransparentImage,
                                    //   image:
                                    //       'https://em-cdn.eatmubarak.pk/flutter/dinein.png',
                                    // ),
                                    child: Image.asset(
                                      Images.DineIn,
                                      width: 75,
                                      height: 40,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 2,
                                  ),
                                  Expanded(
                                      flex: 8,
                                      child: Container(
                                          color: Colors.transparent,
                                          child: CustomTextWidget(
                                            text: 'Dine-In',
                                            color: CustomColor
                                                .WelcomeScreenTextColor,
                                            fontFamily: '.SF Pro Display',
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.w500,
                                          ))),
                                  const SizedBox(
                                    width: 5,
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
                                                'https://em-cdn.eatmubarak.pk/flutter/arrow-light.png',
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
                        ),
                      ),
                      SizedBox(
                        width: 18,
                      ),
                    ])
                  : Container(),
            ),
            SizedBox(
              height: 50,
            ),
          ],
        ));
  }
}
