import 'dart:async';
import 'dart:ffi';
import 'dart:math';

import 'package:blink_sdk/controllers/home_controller.dart';
import 'package:blink_sdk/controllers/welcome_controller.dart';
import 'package:blink_sdk/core/models/NetworkModels/HomeScreen/GetStoreMenu/dish.dart';
import 'package:blink_sdk/routes/app_pages.dart';
import 'package:blink_sdk/routes/app_routes.dart';
import 'package:blink_sdk/theme/colors.dart';
import 'package:blink_sdk/theme/icons.dart';
import 'package:blink_sdk/utils/BottomSheet/bottom_sheet_modal.dart';
import 'package:blink_sdk/utils/CustomWidgets/ContentInsideCircle/content_inside_circle.dart';
import 'package:blink_sdk/utils/CustomWidgets/CustomText/custom_text.dart';
import 'package:blink_sdk/utils/LanguageFilterHelper/language_filter.dart';
import 'package:blink_sdk/utils/SharedPreferences/update_shared_preferences.dart';
import 'package:blink_sdk/views/Login/login.dart';
import 'package:blink_sdk/views/MyProfile/my_profile.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:bordered_text/bordered_text.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:sticky_headers/sticky_headers.dart';

import '../../controllers/bottom_navigation_controller.dart';
import '../../utils/CustomWidgets/BottomNavigationBar/bottom_navigation_bar.dart';
import '../../utils/CustomWidgets/Card/card.dart';
import '../../utils/CustomWidgets/CustomButton/custom_button.dart';
import '../../utils/CustomWidgets/InputTextField/input_text_field.dart';
//import 'package:scrollable_list_tabview/scrollable_list_tabview.dart';
import 'scrollable_local.dart';
import 'scrollable_list_tab_local.dart';
import 'list_tab_local.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen(this.listOfRestaurantPics, {Key? key}) : super(key: key);

  List<dynamic> listOfRestaurantPics;
  BottomSheetCustom _bottomSheetCustom = BottomSheetCustom();
  late List<MyScrollableListTab> scrollable_list_tabview = [];

  TextEditingController searchController = TextEditingController();
  final CarouselController controller = CarouselController();

  HomeController homeController = Get.find();
  GlobalKey popularScreenSection = GlobalKey();

  WelcomeController _welcomeController = Get.find();

  HomeController _homeController = Get.find();

  String deliveryTypesStringConcatenation = "";

  var listOfBanners = [];
  var listOfSections = [];
  var listOfSubSectionDish = [];
  var allSectionsIndex = 0;
  List<GlobalKey> listOfGlobalKeys = [];
  LanguagFilterHelper _languagFilterHelper = LanguagFilterHelper();

  var icon;
  var key;

  getAtFromTo(lastDeliveryTypeSelected) {
    switch (lastDeliveryTypeSelected) {
      case "Delivery":
        deliveryTypesStringConcatenation = "At";
        break;
      case "Pick Up":
        deliveryTypesStringConcatenation = "From";
        break;
      case "Dine In":
        deliveryTypesStringConcatenation = "At";
        break;
    }

    return deliveryTypesStringConcatenation;
  }

  final listOfDeals = [
    {'name': 'Family Pack 1', 'price': '580', 'isAddOn': false.obs},
    {'name': 'Family Pack 1', 'price': '700', 'isAddOn': true.obs},
    {'name': 'Fun Meal 1', 'price': '1000', 'isAddOn': false.obs},
    {'name': 'Fun Meal 2', 'price': '2000', 'isAddOn': false.obs},
  ];
  final listOfSliceBurgers = [
    {'name': 'Cheese Burger', 'price': '450', 'isAddOn': false},
    {'name': 'Cheese Slice Burger', 'price': '400', 'isAddOn': false},
    {'name': 'Amul Burger', 'price': '359', 'isAddOn': true},
    {'name': 'Cheddar Cheese Burger', 'price': '600', 'isAddOn': false},
  ];

  getBannersInList() async {
    // _welcomeController.cityNameSelected.value = "";
    // _welcomeController.areaNameSelected.value = "";
    // _welcomeController.branchNameSelected.value = "";
    // homeController.isBannerReceived.value = false;
    // homeController.isSectionReceived.value = false;
    // listOfBanners.length = 0;
    // listOfSections.length = 0;
    // homeController.listOfSelectedSectionItems.length = 0;
    homeController.isBannerReceived.value = false;
    listOfBanners = await homeController.getSplashForBanners(
        54763, _welcomeController.restaurantBranchId.value);

    homeController.isBannerReceived.value = true;
  }

  getSections() async {
    homeController.isSectionReceived.value = false;
    listOfSections.length = 0;
    scrollable_list_tabview.length = 0;
    listOfSections = await homeController.getSections(
        54763, _welcomeController.restaurantBranchId.value);

    getStickyMenu();
    homeController.isSectionReceived.value = true;

    homeController.categoriesIndex.value = 0;
    homeController.selectedSection.value = listOfSections[0];
  }

  getStickyMenu() {
    listOfSections.forEach((element) {
      if (element.all_sub_section[0].dish.length > 0) {
        scrollable_list_tabview.add(
          MyScrollableListTab(
              tab: MyListTab(
                label: element.name,
                //icon: Icon(Icons.group),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                  bottomLeft: Radius.circular(20.0),
                  bottomRight: Radius.circular(20.0),
                ),
                showIconOnList: true,
                activeBackgroundColor: CustomColor.MaroonTheme,
                inactiveBackgroundColor: Color(0xFFECECEC),
              ),
              body: ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: element.all_sub_section[0].dish.length,
                  padding: EdgeInsets.zero,
                  itemBuilder: (context, index) {
                    return element.all_sub_section[0].dish.length > 0
                        ? MediaQuery.removePadding(
                            context: context,
                            removeBottom: true,
                            removeTop: true,
                            child: InkWell(
                              onTap: () => Get.toNamed(
                                  AppRoutes.ORDER_QUANTITY_DETAILS,
                                  arguments:
                                      element.all_sub_section[0].dish[index]),
                              child: Column(
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
                                                bottomLeft:
                                                    Radius.circular(5.0),
                                                bottomRight:
                                                    Radius.circular(5.0),
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
                                                                      text: _languagFilterHelper.languageFilter(
                                                                          element
                                                                              .all_sub_section[0]
                                                                              .dish[index]
                                                                              .name,
                                                                          _welcomeController.languageSelectedIndex.value),
                                                                      // text:
                                                                      //    element.all_sub_section[0].dish.name,
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
                                                                      width:
                                                                          25.0,
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
                                                                bottomRight: Radius
                                                                    .circular(
                                                                        8.0),
                                                              ),
                                                            ),
                                                            child:
                                                                CustomTextWidget(
                                                              text: _languagFilterHelper.languageFilter(
                                                                  element.all_sub_section[0].dish[index].desc ==
                                                                          ""
                                                                      ? "This description composes empty.. and we do not seem to have anything in it"
                                                                      : element
                                                                          .all_sub_section[
                                                                              0]
                                                                          .dish[
                                                                              index]
                                                                          .desc,
                                                                  _welcomeController
                                                                      .languageSelectedIndex
                                                                      .value),
                                                              // text: "sdd",
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
                                                                          " ${_welcomeController.currencyChosen.value} ${element.all_sub_section[0].dish[index].price}",
                                                                      // text:
                                                                      // //     "Rs.30",
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
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Expanded(
                                                                            flex:
                                                                                3,
                                                                            child:
                                                                                Container(
                                                                              // color: Colors.blueAccent,

                                                                              decoration: BoxDecoration(
                                                                                color: const Color(0xFFDBDBDB),
                                                                                borderRadius: const BorderRadius.only(
                                                                                  topLeft: Radius.circular(3.0),
                                                                                  topRight: Radius.circular(3.0),
                                                                                  bottomLeft: Radius.circular(3.0),
                                                                                  bottomRight: Radius.circular(3.0),
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
                                                                          Expanded(
                                                                            flex:
                                                                                4,
                                                                            child:
                                                                                Container(
                                                                              // color: Colors.blueAccent,
                                                                              color: Colors.transparent,

                                                                              child: Center(
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

                                                                              decoration: BoxDecoration(
                                                                                color: CustomColor.MaroonTheme,
                                                                                borderRadius: const BorderRadius.only(
                                                                                  topLeft: Radius.circular(3.0),
                                                                                  topRight: Radius.circular(3.0),
                                                                                  bottomLeft: Radius.circular(3.0),
                                                                                  bottomRight: Radius.circular(3.0),
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
                                                    child: FadeInImage
                                                        .assetNetwork(
                                                      placeholder: Images
                                                          .kTransparentImage,
                                                      // image: listOfSubSectionDish[index]
                                                      //         .img_url ??
                                                      //     'https://em-cdn.eatmubarak.pk/flutter/restaurant.png',
                                                      // image: element
                                                      //         .all_sub_section[0]
                                                      //         .dish[index]
                                                      //         .img_url == null ? element
                                                      //         .all_sub_section[0]
                                                      //         .dish[index]
                                                      //         .img_url == "" ?
                                                      //     'https://em-cdn.eatmubarak.pk/flutter/restaurant.png',
                                                      image: element
                                                                  .all_sub_section[
                                                                      0]
                                                                  .dish[index]
                                                                  .img_url ==
                                                              null
                                                          ? 'https://em-cdn.eatmubarak.pk/flutter/restaurant.png'
                                                          : element
                                                                      .all_sub_section[
                                                                          0]
                                                                      .dish[
                                                                          index]
                                                                      .img_url ==
                                                                  ""
                                                              ? 'https://em-cdn.eatmubarak.pk/flutter/restaurant.png'
                                                              : element
                                                                  .all_sub_section[
                                                                      0]
                                                                  .dish[index]
                                                                  .img_url,
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
                              ),
                            ),
                          )
                        : Container();
                  }

                  // ListTile(
                  //   leading: Container(
                  //     height: MediaQuery.of(context).size.height * 0.05,
                  //     width: MediaQuery.of(context).size.height * 0.05,
                  //     decoration: BoxDecoration(
                  //         shape: BoxShape.circle, color: Colors.grey),
                  //     alignment: Alignment.center,
                  //     child: Text(index.toString()),
                  //   ),
                  //   title: Text(
                  //       'List element ${element.all_sub_section[0].dish[index].name}'),
                  // ),
                  )),
        );
      }
    });
  }

  updateAppBarStrings() async {
    SetSharedPreference _setSharedPreference = SetSharedPreference();

    await _setSharedPreference.putString("lastDeliveryTypeSelected",
        _welcomeController.lastDeliveryTypeSelected.value);
    getAtFromTo(_welcomeController.lastDeliveryTypeSelected.value);

    await _setSharedPreference.putString(
        "areaNameSelected", _welcomeController.areaNameSelected.value);

    await _setSharedPreference.putString(
        "branchNameSelected", _welcomeController.branchNameSelected.value);
  }

  @override
  Widget build(BuildContext context) {
    ValueKey valueKey = ValueKey("");

    listOfRestaurantPics = [
      'https://em-cdn.eatmubarak.pk/flutter/restaurant.png',
      'https://em-cdn.eatmubarak.pk/flutter/restaurant.png',
      'https://em-cdn.eatmubarak.pk/flutter/restaurant.png',
      'https://em-cdn.eatmubarak.pk/flutter/restaurant.png',
    ];

    listOfDeals.forEach((element) {
      homeController.isAddToCartTapped.add(false.obs);
    });
    listOfDeals.forEach((element) {
      final a = element['isAddOn'];
      homeController.isAddOn.add(a as RxBool);
    });

    getBannersInList();
    getSections();
    _welcomeController.dropDownBckBtnVisibile();
    listOfSubSectionDish.length = 0;

    updateAppBarStrings();

    int counter = 0;

    homeController.currentScreen.value = "HOME";
    print("Length for list of sections ${listOfSections.length}");

    return Scaffold(
        bottomNavigationBar: BottomNav(),
        extendBody: true,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Container(
          width: 72,
          height: 72,
          child: FloatingActionButton(
            onPressed: () => Get.toNamed(AppRoutes.MY_CART),
            // child: FadeInImage.assetNetwork(
            //   width: 55,
            //   height: 55,
            //   placeholder: Images.kTransparentImage,
            //   image: 'https://em-cdn.eatmubarak.pk/flutter/cart.png',
            //   fit: BoxFit.contain,
            // ),

            child: Image.asset(
              Images.Cart,
              width: 55,
              height: 55,
              fit: BoxFit.contain,
            ),
            backgroundColor: Color(0xFFFBC000),
          ),
        ),
        appBar: AppBar(
            automaticallyImplyLeading: false,
            elevation: 0.0,
            backgroundColor: Colors.white,
            titleSpacing: 9.0,
            title: GestureDetector(
                onTap: (() {
                  Get.toNamed(AppRoutes.WELCOME);
                }),
                child: Obx(
                  () => !homeController.isSearchBar.value
                      ? Column(
                          children: [
                            Row(
                              children: [
                                CustomTextWidget(
                                  text:
                                      "${_welcomeController.lastDeliveryTypeSelected.value} ${getAtFromTo(_welcomeController.lastDeliveryTypeSelected.value)}",
                                  fontWeight: FontWeight.w300,
                                  fontSize: 12.0,
                                  color: const Color(0xFF7B7B7B),
                                  fontFamily: '.SF Pro Display',
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                FadeInImage.assetNetwork(
                                  width: 15,
                                  height: 15,
                                  placeholder: Images.kTransparentImage,
                                  image:
                                      'https://em-cdn.eatmubarak.pk/flutter/down-arrow.png',
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                CustomTextWidget(
                                  text:
                                      "${_welcomeController.areaNameSelected.value == "" ? _welcomeController.branchNameSelected.value : _welcomeController.areaNameSelected.value}",
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14.0,
                                  color: CustomColor.Black,
                                  fontFamily: '.SF Pro Display',
                                ),
                              ],
                            ),
                          ],
                        )
                      : Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              flex: 2,
                              child: InputTextField(
                                isSearch: homeController,
                                controller: searchController,
                                height: 30.0,
                                hintText: 'Search',
                                hintTextColor: const Color(0xFFAFAFAF),
                                fillColor: Colors.white,
                                strokeColor: const Color(0xFFEAEAEA),
                                roundedCornerRadius: 30.0,
                                hintTextSize: 12.0,
                                textFontSize: 12.0,
                                isPrefixIcon: true,
                              ),
                            ),
                          ],
                        ),
                )),
            actions: <Widget>[
              Padding(
                padding: EdgeInsets.only(right: 18.0),
                child: Obx(
                  () => !homeController.isSearchBar.value
                      ? Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                if (homeController.isSearchBar.value == true) {
                                  homeController.isSearchBar.value = false;
                                } else {
                                  homeController.isSearchBar.value = true;
                                }
                              },
                              child: Container(
                                width: 35,
                                height: 35,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: const Color(0xFFF1F1F1),
                                ),
                                child: const Center(
                                    child: Icon(
                                  Icons.search,
                                  color: Colors.grey,
                                  size: 20.0,
                                )),
                              ),
                            ),
                            SizedBox(
                              width: 9,
                            ),
                            InkWell(
                              onTap: () => _bottomSheetCustom
                                  .supportCenterBottomSheet(context),
                              child: Container(
                                width: 35,
                                height: 35,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: CustomColor.MaroonTheme,
                                ),
                                child: const Center(
                                    child: Icon(
                                  Icons.headphones,
                                  color: Colors.white,
                                  size: 20.0,
                                )),
                              ),
                            ),
                          ],
                        )
                      : Container(),
                ),
              ),
            ]),
        body: SafeArea(
          child: Obx(() {
            homeController.isBannerReceived.value;
            homeController.isSectionReceived.value;

            return Container();

            // return MyScrollableListTabView(
            //     listOfBanners: listOfBanners,
            //     listOfRestaurantPics: listOfRestaurantPics,
            //     controller: controller,
            //     homeController: homeController,
            //     tabHeight: 48,
            //     bodyAnimationCurve: Curves.easeIn,
            //     bodyAnimationDuration: const Duration(milliseconds: 150),
            //     tabAnimationCurve: Curves.easeIn,
            //     tabAnimationDuration: const Duration(milliseconds: 300),
            //     tabs: scrollable_list_tabview);
          }),
        ));
    //        : Container(),
  }
}
