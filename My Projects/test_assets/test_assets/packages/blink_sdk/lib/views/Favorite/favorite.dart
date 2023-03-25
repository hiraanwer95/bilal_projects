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

class FavoriteScreen extends StatelessWidget {
  FavoriteScreen() : super();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        title: CustomTextWidget(
          text: 'Favorite',
          fontSize: 14.0,
          fontFamily: '.SF Pro Display',
          fontWeight: FontWeight.bold,
          color: CustomColor.Black,
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Stack(children: <Widget>[
          Column(
            children: [
              // const SizedBox(
              //   height: 10,
              // ),

              Row(
                children: [
                  // Expanded(
                  //   flex: 2,
                  //   child: Container(
                  //     width: 300,
                  //     height: 220,
                  //     //  color: Colors.black,
                  //     color: Colors.transparent,

                  //     child: ListView.builder(
                  //         physics:
                  //             const BouncingScrollPhysics(),
                  //         shrinkWrap: true,
                  //         scrollDirection: Axis.horizontal,
                  //         itemCount: 4,
                  //         itemBuilder:
                  //             (BuildContext context,
                  //                 int index) {
                  //           return CustomCard(index: index);
                  //         }),
                  //   ),
                  // ),
                ],
              ),
              const SizedBox(height: 20),
              Container(
                //     width: 300,
                height: 30,
                // color: Colors.red,
                // key: _homeController.categoriesIndex.value == 1
                //     ? goToScreenSection[0]
                //     : null,
                //     key: limitedOffersScreenSection,

                child: Row(
                  //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 18,
                    ),
                    Expanded(
                      flex: 14,
                      child: CustomTextWidget(
                        text: 'Slice Burgers',
                        color: CustomColor.Black,
                        fontFamily: '.SF Pro Display',
                        fontSize: 18.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Image.network(
                          'https://em-cdn.eatmubarak.pk/flutter/forward-arrow.png',
                          color: Color.fromRGBO(255, 255, 255, 0.4),
                          colorBlendMode: BlendMode.modulate),
                    ),
                    SizedBox(
                      width: 7,
                    ),
                  ],
                ),
              ),
              // const SizedBox(
              //   height: 10,
              // ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: MediaQuery.removePadding(
                      context: context,
                      removeTop: true,
                      child: ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemCount: 4,
                          itemBuilder: (BuildContext context, int index) {
                            //return CustomCard();

                            return Column(
                              children: [
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 18,
                                    ),
                                    Expanded(
                                      flex: 2,
                                      child: Container(
                                          //  width: MediaQuery.of(context).size.width *,
                                          height: 120,
                                          decoration: BoxDecoration(
                                            color: Colors.transparent,
                                            //     color: Colors.black,
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(5.0),
                                              topRight: Radius.circular(5.0),
                                              bottomLeft: Radius.circular(5.0),
                                              bottomRight: Radius.circular(5.0),
                                            ),
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Expanded(
                                                flex: 6,
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    color: Colors.transparent,
                                                    borderRadius:
                                                        const BorderRadius.only(
                                                      // topLeft: Radius.circular(8.0),
                                                      topRight:
                                                          Radius.circular(8.0),
                                                      // bottomLeft: Radius.circular(8.0),
                                                      bottomRight:
                                                          Radius.circular(8.0),
                                                    ),
                                                  ),
                                                  child: Column(
                                                    children: [
                                                      SizedBox(
                                                        height: 5.0,
                                                      ),
                                                      Expanded(
                                                        flex: 3,
                                                        child: Container(
                                                          //color: Colors.yellow,
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            //   mainAxisAlignment: MainAxisAlignment.start,

                                                            children: [
                                                              Expanded(
                                                                flex: 8,
                                                                child:
                                                                    Container(
                                                                  // color: Colors.yellow,
                                                                  child:
                                                                      CustomTextWidget(
                                                                    text:
                                                                        'American Cheese Burger',
                                                                    color: Colors
                                                                        .black,
                                                                    fontFamily:
                                                                        '.SF Pro Display',
                                                                    fontSize:
                                                                        14.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                  ),
                                                                ),
                                                              ),
                                                              Expanded(
                                                                flex: 2,
                                                                child: ContentInsideColor(
                                                                    width: 25.0,
                                                                    height:
                                                                        25.0,
                                                                    shape: BoxShape
                                                                        .circle,
                                                                    roundContainerOutsideColor:
                                                                        Color(
                                                                            0xFFD3D3D3),
                                                                    icon: Icons
                                                                        .favorite,
                                                                    iconColor:
                                                                        Colors
                                                                            .white,
                                                                    iconSize:
                                                                        14.0),
                                                              ),
                                                              SizedBox(
                                                                width: 8,
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      // SizedBox(
                                                      //   height:
                                                      //       10,
                                                      // ),
                                                      Expanded(
                                                        flex: 3,
                                                        child: Container(
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Colors
                                                                .transparent,
                                                            borderRadius:
                                                                const BorderRadius
                                                                    .only(
                                                              // topLeft: Radius.circular(8.0),
                                                              topRight: Radius
                                                                  .circular(
                                                                      8.0),
                                                              // bottomLeft: Radius.circular(8.0),
                                                              bottomRight:
                                                                  Radius
                                                                      .circular(
                                                                          8.0),
                                                            ),
                                                          ),
                                                          child:
                                                              CustomTextWidget(
                                                            text:
                                                                '2 smashed beef patties with shredded pickes...',
                                                            color: Color(
                                                                0xFF909090),
                                                            fontFamily:
                                                                '.SF Pro Display',
                                                            fontSize: 13.0,
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                          ),
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        height: 10,
                                                      ),
                                                      Expanded(
                                                        flex: 4,
                                                        child: Container(
                                                          color: Colors
                                                              .transparent,
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            //   mainAxisAlignment: MainAxisAlignment.start,

                                                            children: [
                                                              Expanded(
                                                                flex: 5,
                                                                child:
                                                                    Container(
                                                                  // color: Colors.yellow,
                                                                  child:
                                                                      CustomTextWidget(
                                                                    text:
                                                                        'Rs. 450',
                                                                    color: CustomColor
                                                                        .MaroonTheme,
                                                                    fontFamily:
                                                                        '.SF Pro Display',
                                                                    fontSize:
                                                                        13.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                  ),
                                                                ),
                                                              ),
                                                              Expanded(
                                                                flex: 8,
                                                                child:
                                                                    Container(
                                                                  height: 34,
                                                                  child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Expanded(
                                                                          flex:
                                                                              3,
                                                                          child:
                                                                              Container(
                                                                            // color: Colors.blueAccent,

                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: const Color(0xFFDBDBDB),
                                                                              borderRadius: const BorderRadius.only(
                                                                                topLeft: Radius.circular(3.0),
                                                                                topRight: Radius.circular(3.0),
                                                                                bottomLeft: Radius.circular(3.0),
                                                                                bottomRight: Radius.circular(3.0),
                                                                              ),
                                                                            ),
                                                                            child:
                                                                                Center(
                                                                              child: Icon(
                                                                                Icons.remove,
                                                                                color: Colors.black,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Expanded(
                                                                          flex:
                                                                              4,
                                                                          child:
                                                                              Container(
                                                                            // color: Colors.blueAccent,
                                                                            color:
                                                                                Colors.transparent,

                                                                            child:
                                                                                Center(
                                                                              child: CustomTextWidget(
                                                                                text: 0.toString(),
                                                                                fontFamily: '.SF Pro Display',
                                                                                fontSize: 20.0,
                                                                                fontWeight: FontWeight.bold,
                                                                                color: Colors.black,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Expanded(
                                                                          flex:
                                                                              3,
                                                                          child:
                                                                              Container(
                                                                            // color: Colors.blueAccent,

                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: CustomColor.MaroonTheme,
                                                                              borderRadius: const BorderRadius.only(
                                                                                topLeft: Radius.circular(3.0),
                                                                                topRight: Radius.circular(3.0),
                                                                                bottomLeft: Radius.circular(3.0),
                                                                                bottomRight: Radius.circular(3.0),
                                                                              ),
                                                                            ),
                                                                            child:
                                                                                Center(
                                                                              child: Icon(
                                                                                Icons.add,
                                                                                color: Colors.white,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ]),
                                                                ),
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
                                              Expanded(
                                                flex: 4,
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                  child:
                                                      FadeInImage.assetNetwork(
                                                    placeholder:
                                                        Images.kTransparentImage,
                                                    image:
                                                        'https://em-cdn.eatmubarak.pk/flutter/restaurant.png',
                                                    fit: BoxFit.fitWidth,
                                                    height: 120.0,
                                                    width: 80,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 8,
                                              ),
                                            ],
                                          )),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                  ],
                                ),
                                const Divider(
                                  color: Color(0xFFE8E8E8),
                                  thickness: 1,
                                  indent: 20,
                                  endIndent: 20,
                                ),
                              ],
                            );
                            //
                          }),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
