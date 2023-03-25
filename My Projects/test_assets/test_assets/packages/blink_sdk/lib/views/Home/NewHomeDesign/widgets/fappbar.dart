// import 'package:blink_sdk/controllers/home_controller.dart';
// import 'package:blink_sdk/controllers/welcome_controller.dart';
// import 'package:blink_sdk/theme/colors.dart';
// import 'package:blink_sdk/utils/LanguageFilterHelper/language_filter.dart';
// import 'package:blink_sdk/views/Home/NewHomeDesign/widgets/panda_head.dart';
// import 'package:blink_sdk/views/Home/NewHomeDesign/widgets/promo_text.dart';
// import 'package:carousel_slider/carousel_options.dart';
// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:scroll_to_index/scroll_to_index.dart';
// import 'package:transparent_image/transparent_image.dart';

// import '../../../../theme/icons.dart';
// import '../colors.dart';
// import '../example_data.dart';
// import '../helper/helper.dart';
// import 'discount_card.dart';
// import 'ficon_button.dart';
// import 'header_clip.dart';

// class FAppBar extends SliverAppBar {
//   final PageData data;
//   final BuildContext context;
//   final bool isCollapsed;
//   final double expandedHeight;
//   final double collapsedHeight;
//   final AutoScrollController scrollController;
//   final TabController tabController;
//   final void Function(bool isCollapsed) onCollapsed;
//   final void Function(int index) onTap;

//   final HomeController _homeController = Get.find();
//   final WelcomeController _welcomeController = Get.find();
//   final CarouselController _controller = CarouselController();

//   int indexCurrentCategory = 0;
//   var listOfBanners = [];
//   final listOfRestaurantPics = [
//     'https://em-cdn.eatmubarak.pk/flutter/restaurant.png',
//     'https://em-cdn.eatmubarak.pk/flutter/restaurant.png',
//     'https://em-cdn.eatmubarak.pk/flutter/restaurant.png',
//     'https://em-cdn.eatmubarak.pk/flutter/restaurant.png',
//   ];
//   FAppBar({
//     required this.data,
//     required this.context,
//     required this.isCollapsed,
//     required this.expandedHeight,
//     required this.collapsedHeight,
//     required this.scrollController,
//     required this.onCollapsed,
//     required this.onTap,
//     required this.tabController,
//   }) : super(elevation: 4.0, pinned: true, forceElevated: true);

//   @override
//   Color? get backgroundColor => scheme.surface;

//   getBannersInList() async {
//     _homeController.isBannerReceived.value = false;
//     listOfBanners = await _homeController.getSplashForBanners(
//         54763, _welcomeController.restaurantBranchId.value);

//     _homeController.isBannerReceived.value = true;
//   }

//   @override
//   Widget? get leading {
//     return Center(
//       child: FIconButton(
//         onPressed: () {},
//         backgroundColor: backgroundColor,
//         icon: Icon(Icons.arrow_back),
//       ),
//     );
//   }

//   @override
//   List<Widget>? get actions {
//     return [
//       FIconButton(
//         backgroundColor: backgroundColor,
//         onPressed: () {},
//         icon: Icon(Icons.share_outlined),
//       ),
//       FIconButton(
//         backgroundColor: backgroundColor,
//         onPressed: () {},
//         icon: Icon(Icons.info_outline),
//       ),
//     ];
//   }

//   @override
//   Widget? get title {
//     var textTheme = Theme.of(context).textTheme;
//     return AnimatedOpacity(
//       opacity: this.isCollapsed ? 0 : 1,
//       duration: const Duration(milliseconds: 250),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             "My App Bar",
//             style: textTheme.subtitle1?.copyWith(color: scheme.onSurface),
//             strutStyle: Helper.buildStrutStyle(textTheme.subtitle1),
//           ),
//           const SizedBox(height: 4.0),
//           Text(
//             data.deliverTime,
//             style: textTheme.caption?.copyWith(color: scheme.primary),
//             strutStyle: Helper.buildStrutStyle(textTheme.caption),
//           ),
//         ],
//       ),
//     );
//   }

//   @override
//   PreferredSizeWidget? get bottom {
//     return PreferredSize(
//         preferredSize: const Size.fromHeight(48),
//         child: Container(
//           color: scheme.surface,
//           child: TabBar(
//             indicator: BoxDecoration(
//               borderRadius: const BorderRadius.only(
//                 topLeft: const Radius.circular(18.0),
//                 topRight: Radius.circular(18.0),
//                 bottomLeft: Radius.circular(18.0),
//                 bottomRight: Radius.circular(18.0),
//               ),
//               color: CustomColor.MaroonTheme,
//             ),
//             isScrollable: true,
//             controller: tabController,
//             indicatorPadding: const EdgeInsets.symmetric(horizontal: 16.0),
//             indicatorColor: const Color(0xFFECECEC),
//             labelColor: const Color(0xFFECECEC),
//             unselectedLabelColor: scheme.onSurface,
//             indicatorWeight: 3.0,
//             tabs: _homeController.getListOfSections.map((e) {
//               return Container(
//                   padding: const EdgeInsets.only(left: 10.0, right: 10.0),
//                   child: Center(
//                       child: Tab(
//                     text: LanguagFilterHelper().languageFilter("${e["name"]}",
//                         _welcomeController.languageSelectedIndex.value),
//                   )));
//             }).toList(),
//             onTap: onTap,
//           ),
//         ));
//   }

//   @override
//   Widget? get flexibleSpace {
//     return LayoutBuilder(
//       builder: (
//         BuildContext context,
//         BoxConstraints constraints,
//       ) {
//         final top = constraints.constrainHeight();
//         final collapsedHight =
//             MediaQuery.of(context).viewPadding.top + kToolbarHeight + 48;
//         WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
//           onCollapsed(collapsedHight != top);
//         });

//         return FlexibleSpaceBar(
//           collapseMode: CollapseMode.pin,
//           Column(
//             children: [
//               // Stack(
//               //   children: [
//               //     Row(
//               //       mainAxisAlignment: MainAxisAlignment.center,
//               //       children: [
//               //         // SizedBox(
//               //         //   width: 20,
//               //         // ),
//               //         Expanded(
//               //           flex: 2,
//               //           child: Container(
//               //             height: 200,
//               //             width: 50,
//               //             decoration: BoxDecoration(
//               //               border: Border.all(
//               //                 color: Colors.transparent,
//               //               ),
//               //             ),
//               //             child: Obx(() {
//               //               _homeController.isBannerReceived.value;
//               //               getBannersInList();
//               //               return Stack(
//               //                 children: [
//               //                   CarouselSlider(
//               //                     options: CarouselOptions(
//               //                         autoPlay: true,
//               //                         autoPlayInterval: Duration(seconds: 3),
//               //                         autoPlayAnimationDuration:
//               //                             Duration(milliseconds: 800),
//               //                         height:
//               //                             MediaQuery.of(context).size.height *
//               //                                 0.40,
//               //                         viewportFraction: 1.0,
//               //                         enlargeCenterPage: false,
//               //                         onPageChanged: (index, reason) {
//               //                           _homeController.currentIndex.value =
//               //                               index;

//               //                           print(
//               //                               _homeController.currentIndex.value);
//               //                         }),
//               //                     items: listOfBanners
//               //                         .map((item) => Row(
//               //                               // mainAxisAlignment: Main,
//               //                               children: [
//               //                                 Expanded(
//               //                                   flex: 2,
//               //                                   child: ClipRRect(
//               //                                     borderRadius:
//               //                                         BorderRadius.circular(
//               //                                             0.0),
//               //                                     child:
//               //                                         FadeInImage.memoryNetwork(
//               //                                       placeholder:
//               //                                           kTransparentImage,
//               //                                       image: item,
//               //                                       fit: BoxFit.fitWidth,
//               //                                     ),
//               //                                   ),
//               //                                 ),
//               //                               ],
//               //                             ))
//               //                         .toList(),
//               //                   ),
//               //                   Column(
//               //                     mainAxisAlignment: MainAxisAlignment.end,
//               //                     children: [
//               //                       Row(
//               //                         mainAxisAlignment:
//               //                             MainAxisAlignment.center,
//               //                         children: listOfRestaurantPics
//               //                             .asMap()
//               //                             .entries
//               //                             .map((entry) {
//               //                           return GestureDetector(
//               //                             onTap: () => _controller
//               //                                 .animateToPage(entry.key),
//               //                             child: Obx(
//               //                               () => Container(
//               //                                 width: _homeController
//               //                                             .currentIndex.value ==
//               //                                         entry.key
//               //                                     ? 30.0
//               //                                     : 10.0,
//               //                                 height: 10.0,
//               //                                 margin: EdgeInsets.symmetric(
//               //                                     vertical: 8.0,
//               //                                     horizontal: 4.0),
//               //                                 decoration: BoxDecoration(
//               //                                     borderRadius:
//               //                                         BorderRadius.all(
//               //                                             Radius.circular(20)),
//               //                                     border: Border.all(
//               //                                         color: CustomColor.White,
//               //                                         width: 1.0),
//               //                                     // shape: BoxShape.circle,
//               //                                     color: Colors.white.withOpacity(
//               //                                         _homeController
//               //                                                     .currentIndex
//               //                                                     .value ==
//               //                                                 entry.key
//               //                                             ? 0.9
//               //                                             : 0)),
//               //                               ),
//               //                             ),
//               //                           );
//               //                         }).toList(),
//               //                       ),
//               //                     ],
//               //                   )
//               //                 ],
//               //               );
//               //             }),
//               //           ),
//               //         ),
//               //         // SizedBox(
//               //         //   width: 20,
//               //         // ),
//               //       ],
//               //     ),
//               //   ],
//               // ),
//               // const SizedBox(height: 20),
//               Stack(
//                 children: [
//                   PromoText(title: data.bannerText),
//                   const PandaHead(),
//                   Column(
//                     children: [
//                       //    HeaderClip(data: data, context: context),
//                       const SizedBox(height: 110),
//                     ],
//                   ),
//                 ],
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   // SizedBox(
//                   //   width: 20,
//                   // ),
//                   Expanded(
//                     flex: 2,
//                     child: Container(
//                       height: 200,
//                       width: 50,
//                       decoration: BoxDecoration(
//                         border: Border.all(
//                           color: Colors.transparent,
//                         ),
//                       ),
//                       child: Obx(() {
//                         _homeController.isBannerReceived.value;
//                         getBannersInList();
//                         return Stack(
//                           children: [
//                             CarouselSlider(
//                               options: CarouselOptions(
//                                   autoPlay: true,
//                                   autoPlayInterval: Duration(seconds: 3),
//                                   autoPlayAnimationDuration:
//                                       Duration(milliseconds: 800),
//                                   height:
//                                       MediaQuery.of(context).size.height * 0.40,
//                                   viewportFraction: 1.0,
//                                   enlargeCenterPage: false,
//                                   onPageChanged: (index, reason) {
//                                     _homeController.currentIndex.value = index;

//                                     print(_homeController.currentIndex.value);
//                                   }),
//                               items: listOfBanners
//                                   .map((item) => Row(
//                                         // mainAxisAlignment: Main,
//                                         children: [
//                                           Expanded(
//                                             flex: 2,
//                                             child: ClipRRect(
//                                               borderRadius:
//                                                   BorderRadius.circular(0.0),
//                                               child: FadeInImage.assetNetwork(
//                                                 placeholder:
//                                                     Images.kTransparentImage,
//                                                 image: item,
//                                                 fit: BoxFit.fitWidth,
//                                               ),
//                                             ),
//                                           ),
//                                         ],
//                                       ))
//                                   .toList(),
//                             ),
//                             Column(
//                               mainAxisAlignment: MainAxisAlignment.end,
//                               children: [
//                                 Row(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   children: listOfRestaurantPics
//                                       .asMap()
//                                       .entries
//                                       .map((entry) {
//                                     return GestureDetector(
//                                       onTap: () =>
//                                           _controller.animateToPage(entry.key),
//                                       child: Obx(
//                                         () => Container(
//                                           width: _homeController
//                                                       .currentIndex.value ==
//                                                   entry.key
//                                               ? 30.0
//                                               : 10.0,
//                                           height: 10.0,
//                                           margin: EdgeInsets.symmetric(
//                                               vertical: 8.0, horizontal: 4.0),
//                                           decoration: BoxDecoration(
//                                               borderRadius: BorderRadius.all(
//                                                   Radius.circular(20)),
//                                               border: Border.all(
//                                                   color: CustomColor.White,
//                                                   width: 1.0),
//                                               // shape: BoxShape.circle,
//                                               color: Colors.white.withOpacity(
//                                                   _homeController.currentIndex
//                                                               .value ==
//                                                           entry.key
//                                                       ? 0.9
//                                                       : 0)),
//                                         ),
//                                       ),
//                                     );
//                                   }).toList(),
//                                 ),
//                               ],
//                             )
//                           ],
//                         );
//                       }),
//                     ),
//                   ),
//                   // SizedBox(
//                   //   width: 20,
//                   // ),
//                 ],
//               ),
//               // DiscountCard(
//               //   title: data.optionalCard.title,
//               //   subtitle: data.optionalCard.subtitle,
//               // ),
//             ],
//           ),
//         );
//       },
//     );
//   }
// }
import 'dart:ffi' hide Size;

import 'package:blink_sdk/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../controllers/welcome_controller.dart';
import '../../../../routes/app_routes.dart';
import '../../../../theme/colors.dart';
import '../../../../theme/icons.dart';
import '../../../../utils/BottomSheet/bottom_sheet_modal.dart';
import '../../../../utils/CustomWidgets/CustomText/custom_text.dart';
import '../../../../utils/CustomWidgets/InputTextField/input_text_field.dart';
import 'package:flutter_colorful_tab/flutter_colorful_tab.dart';

import '../../../../utils/SharedPreferences/update_shared_preferences.dart';
import '../colors.dart';
import '../example_data.dart';
import '../helper/helper.dart';
import 'discount_card.dart';
import 'ficon_button.dart';
import 'header_clip.dart';
import 'panda_head.dart';
import 'promo_text.dart';

class FAppBar extends SliverAppBar {
  // final PageData data;
  final BuildContext context;
  final bool isCollapsed;
  final double expandedHeight;
  final double collapsedHeight;
  final AutoScrollController scrollController;
  TabController tabController;
  final HomeController homeController;
  final void Function(bool isCollapsed) onCollapsed;
  final void Function(int index) onTap;
  final BottomSheetCustom _bottomSheetCustom = BottomSheetCustom();

  FAppBar({
    //this.data,
    required this.context,
    required this.isCollapsed,
    required this.expandedHeight,
    required this.collapsedHeight,
    required this.scrollController,
    required this.onCollapsed,
    required this.onTap,
    required this.tabController,
    required this.homeController,
  }) : super(elevation: 0.0, pinned: true, forceElevated: true);
  final WelcomeController _welcomeController = Get.find();
  TextEditingController searchController = TextEditingController();
  String deliveryTypesStringConcatenation = "";

  @override
  Color? get backgroundColor => scheme.surface;
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
  Widget? get leading {
    return Center();
    // return Center(
    //   child: GestureDetector(
    //       onTap: (() {
    //         Get.toNamed(AppRoutes.WELCOME);
    //       }),
    //       child: Obx(
    //         () => !homeController.isSearchBar.value
    //             ? Column(
    //                 children: [
    //                   Row(
    //                     children: [
    //                       CustomTextWidget(
    //                         text:
    //                             "${_welcomeController.lastDeliveryTypeSelected.value} ${getAtFromTo(_welcomeController.lastDeliveryTypeSelected.value)}",
    //                         fontWeight: FontWeight.w300,
    //                         fontSize: 12.0,
    //                         color: const Color(0xFF7B7B7B),
    //                         fontFamily: '.SF Pro Display',
    //                       ),
    //                       SizedBox(
    //                         width: 5,
    //                       ),
    //                       FadeInImage.assetNetwork(
    //                         width: 15,
    //                         height: 15,
    //                         placeholder: Images.kTransparentImage,
    //                         image:
    //                             'https://em-cdn.eatmubarak.pk/flutter/down-arrow.png',
    //                       ),
    //                     ],
    //                   ),
    //                   Row(
    //                     children: [
    //                       CustomTextWidget(
    //                         text:
    //                             "${_welcomeController.areaNameSelected.value == "" ? _welcomeController.branchNameSelected.value : _welcomeController.areaNameSelected.value}",
    //                         fontWeight: FontWeight.bold,
    //                         fontSize: 14.0,
    //                         color: CustomColor.Black,
    //                         fontFamily: '.SF Pro Display',
    //                       ),
    //                     ],
    //                   ),
    //                 ],
    //               )
    //             : Row(
    //                 mainAxisSize: MainAxisSize.max,
    //                 children: [
    //                   Expanded(
    //                     flex: 2,
    //                     child: InputTextField(
    //                       isSearch: homeController,
    //                       controller: searchController,
    //                       height: 30.0,
    //                       hintText: 'Search',
    //                       hintTextColor: const Color(0xFFAFAFAF),
    //                       fillColor: Colors.white,
    //                       strokeColor: const Color(0xFFEAEAEA),
    //                       roundedCornerRadius: 30.0,
    //                       hintTextSize: 12.0,
    //                       textFontSize: 12.0,
    //                       isPrefixIcon: true,
    //                     ),
    //                   ),
    //                 ],
    //               ),
    //       )),
    // );
  }

  @override
  List<Widget>? get actions {
    return [
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
                      onTap: () =>
                          _bottomSheetCustom.supportCenterBottomSheet(context),
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
    ];
  }

  @override
  Widget? get title {
    var textTheme = Theme.of(context).textTheme;

    updateAppBarStrings();
    return Transform(
      transform: Matrix4.translationValues(-25.0, 0.0, 0.0),
      child: Obx(
        () => !homeController.isSearchBar.value
            ? InkWell(
                onTap: () {
                  _welcomeController.backBtn.value = true;
                  Get.toNamed(AppRoutes.WELCOME);
                },
                child: Column(
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
                        Image.asset(
                          Images.DownArrow,
                          width: 15,
                          height: 15,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: CustomTextWidget(
                            text:
                                "${_welcomeController.areaNameSelected.value == "" ? _welcomeController.branchNameSelected.value : _welcomeController.areaNameSelected.value}",
                            fontWeight: FontWeight.bold,
                            fontSize: 14.0,
                            color: CustomColor.Black,
                            fontFamily: '.SF Pro Display',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
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
      ),
    );
  }

  // @override
  // PreferredSizeWidget? get bottom {
  //   return PreferredSize(
  //       preferredSize: const Size.fromHeight(48),
  //       child: Container(
  //         color: scheme.surface,
  //         child: TabBar(
  // indicator: BoxDecoration(
  //   borderRadius: const BorderRadius.only(
  //     topLeft: const Radius.circular(18.0),
  //     topRight: Radius.circular(18.0),
  //     bottomLeft: Radius.circular(18.0),
  //     bottomRight: Radius.circular(18.0),
  //   ),
  //   color: CustomColor.MaroonTheme,
  // ),
  // isScrollable: true,
  // controller: tabController,
  // indicatorPadding: const EdgeInsets.symmetric(horizontal: 16.0),
  // indicatorColor: const Color(0xFFECECEC),
  // labelColor: const Color(0xFFECECEC),
  // unselectedLabelColor: scheme.onSurface,
  // indicatorWeight: 3.0,
  //           tabs: _homeController.getListOfSections.map((e) {
  // return Container(
  //     padding: const EdgeInsets.only(left: 10.0, right: 10.0),
  //     child: Center(
  //         child: Tab(
  //       text: LanguagFilterHelper().languageFilter("${e["name"]}",
  //           _welcomeController.languageSelectedIndex.value),
  //     )));
  //           }).toList(),
  //           onTap: onTap,
  //         ),
  //       ));
  // }

  @override
  PreferredSizeWidget? get bottom {
    return PreferredSize(
        preferredSize: const Size.fromHeight(48),
        child: Container(
            color: scheme.surface,
            padding: const EdgeInsets.only(bottom: 10.0),
            child: Obx(() {
              homeController.isSectionReceived.value;
              tabController.length = homeController.listOfSections.length;

              return ColorfulTabBar(
                verticalTabPadding: 7.0,

                onTap: onTap,

                alignment: TabAxisAlignment.end,
                labelColor: Colors.white,
                unselectedLabelColor: const Color(0xFF818181),
                tabShape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                  bottomLeft: Radius.circular(20.0),
                  bottomRight: Radius.circular(20.0),
                )),
                unselectedHeight: 40.0,
                selectedHeight: 40.0,
                // tabs: [
                //   TabItem(

                //       title: Text('Title1'),
                //       color: Color(0xFF911621),
                //       unselectedColor: Color(0xFFEAEAEA)),
                //   TabItem(
                //       title: Text('Title2'),
                //       color: Color(0xFF911621),
                //       unselectedColor: Color(0xFFEAEAEA)),
                //   TabItem(
                //       title: Text('Title3'),
                //       color: Color(0xFF911621),
                //       unselectedColor: Color(0xFFEAEAEA)),
                //   TabItem(
                //       title: Text('Title4'),
                //       color: Color(0xFF911621),
                //       unselectedColor: Color(0xFFEAEAEA)),
                //   TabItem(

                //       title: Text('Title5'),
                //       color: Color(0xFF911621),
                //       unselectedColor: Color(0xFFEAEAEA)),

                // ],

                tabs: homeController.listOfSections
                    .map(
                      (e) => TabItem(
                          title: CustomTextWidget(
                            text: e.name,
                            fontFamily: 'SF Pro. Display',
                            fontSize: 14.0,
                            fontWeight: FontWeight.w400,
                          ),
                          color: Color(0xFF911621),
                          unselectedColor: Color(0xFFEAEAEA)),
                    )
                    .toList(),

                controller: tabController,
              );

              // return TabBar(
              //   isScrollable: true,
              //   controller: tabController,
              //   indicatorPadding: const EdgeInsets.symmetric(horizontal: 10.0),
              //   //  indicatorColor: scheme.primary,
              //   indicator: BoxDecoration(
              //     borderRadius: const BorderRadius.only(
              //       topLeft: const Radius.circular(28.0),
              //       topRight: Radius.circular(28.0),
              //       bottomLeft: Radius.circular(28.0),
              //       bottomRight: Radius.circular(28.0),
              //     ),
              //     color: CustomColor.MaroonTheme,
              //   ),

              //   unselectedLabelStyle: TextStyle(
              //     fontFamily: '.SF Pro Display',
              //     color: Color(0xFF818181),
              //     fontStyle: FontStyle.normal,
              //   ),
              //   labelColor: Colors.white,
              //   unselectedLabelColor: scheme.onSurface,
              //   indicatorWeight: 3.0,
              //   tabs: homeController.listOfSections.map((e) {
              //     // return Tab(
              //     //   child: Cente Container(
              //     //     child: Text(e.name),
              //     //   ),
              //     // );
              //     return Container(
              //       // color: Colors.red,
              //       padding: EdgeInsets.only(left: 15, right: 15),
              //       decoration: BoxDecoration(
              //         //    color: Colors.red,
              //         borderRadius: const BorderRadius.only(
              //           topLeft: Radius.circular(20.0),
              //           topRight: Radius.circular(20.0),
              //           bottomLeft: Radius.circular(20.0),
              //           bottomRight: Radius.circular(20.0),
              //         ),
              //       ),
              //       child: Stack(children: [
              //         Center(
              //           child: Tab(
              //             text: e.name,
              //           ),
              //         )
              //       ]),
              //     );
              //   }).toList(),
              //   onTap: (a) {
              //     onTap(a);
              //   },
              // );
            })));
  }

  @override
  double? get titleSpacing {
    return 0.0;
  }

  @override
  // TODO: implement automaticallyImplyLeading
  bool get automaticallyImplyLeading {
    return false;
  }

  @override
  // TODO: implement centerTitle
  bool? get centerTitle {
    return false;
  }

  @override
  // TODO: implement elevation
  double? get elevation {
    return 0.0;
  }

  @override
  Widget? get flexibleSpace {
    return LayoutBuilder(
      builder: (
        BuildContext context,
        BoxConstraints constraints,
      ) {
        // final top = constraints.constrainHeight();
        // final collapsedHight =
        //     MediaQuery.of(context).viewPadding.top + kToolbarHeight + 48;
        // WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
        //   onCollapsed(collapsedHight != top);
        // });

        return FlexibleSpaceBar(
          collapseMode: CollapseMode.pin,
          background: Column(
            children: [
              // Stack(
              //   children: [
              //     PromoText(title: data.bannerText),
              //     const PandaHead(),
              //     Column(
              //       children: [
              //         HeaderClip(data: data, context: context),
              //         SizedBox(
              //             height: MediaQuery.of(context).size.height * 0.12),
              //       ],
              //     ),
              //   ],
              // ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.12,
              ),

              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: DiscountCard(
                      homeController: homeController,
                      title: "",
                      subtitle: "",
                      welcomeController: _welcomeController,
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
