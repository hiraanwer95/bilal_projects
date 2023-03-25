// import 'package:blink_sdk/controllers/welcome_controller.dart';
// import 'package:blink_sdk/routes/app_routes.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:transparent_image/transparent_image.dart';

// import '../../../../theme/colors.dart';
// import '../../../../theme/icons.dart';
// import '../../../../utils/CustomWidgets/CustomText/custom_text.dart';
// import '../colors.dart';
// import '../example_data.dart';
// import '../helper/helper.dart';

// class CategorySection extends StatelessWidget {
//   CategorySection({
//     Key? key,
//     required this.category,
//   }) : super(key: key);

//   final Category category;

//   final WelcomeController _welcomeController = Get.find();

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.symmetric(horizontal: 16.0),
//       margin: const EdgeInsets.only(bottom: 16),
//       color: scheme.surface,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           _buildSectionTileHeader(context),
//           _buildFoodTileList(context),
//         ],
//       ),
//     );
//   }

//   Widget _buildFoodTileList(BuildContext context) {
//     return Column(
//       children: List.generate(
//         category.foods.length,
//         (index) {
//           final food = category.foods[index];
//           bool isLastIndex = index == category.foods.length - 1;
//           return InkWell(
//             onTap: (){
//               Get.toNamed(AppRoutes.ORDER_QUANTITY_DETAILS, arguments: food);
//             },
//             child: _buildFoodTile(
//               food: food,
//               context: context,
//               isLastIndex: isLastIndex,
//             ),
//           );
//         },
//       ),
//     );
//   }

//   Widget _buildSectionTileHeader(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         const SizedBox(height: 16),
//         _sectionTitle(context),
//         //  const SizedBox(height: 8.0),
//         // category.subtitle != null
//         //     ? _sectionSubtitle(context)
//         //     : const SizedBox(),
//         const SizedBox(height: 16),
//       ],
//     );
//   }

//   Widget _sectionTitle(BuildContext context) {
//     return Row(
//       children: [
//         if (category.isHotSale) _buildSectionHoteSaleIcon(),
//         Text(
//           category.title,
//           style: _textTheme(context).headline6,
//           strutStyle: Helper.buildStrutStyle(_textTheme(context).headline6),
//         )
//       ],
//     );
//   }

//   // Widget _sectionSubtitle(BuildContext context) {
//   //   return Text(
//   //     category.subtitle!,
//   //     style: _textTheme(context).subtitle2,
//   //     strutStyle: Helper.buildStrutStyle(_textTheme(context).subtitle2),
//   //   );
//   // }

//   Widget _buildFoodTile({
//     required BuildContext context,
//     required bool isLastIndex,
//     required Food food,
//   }) {
//     return Column(
//       children: [
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             _buildFoodDetail(food: food, context: context),
//             _buildFoodImage(food.imageUrl),
//           ],
//         ),
//         !isLastIndex ? const Divider(height: 16.0) : const SizedBox(height: 8.0)
//       ],
//     );
//   }

//   Widget _buildFoodImage(String url) {
//     return ClipRRect(
//       borderRadius: BorderRadius.circular(10.0),
//       child: FadeInImage.assetNetwork(
//         placeholder: Images.kTransparentImage,
//         image: url,
//         fit: BoxFit.fill,
//         height: 120.0,
//         width: 120.0,
//       ),
//     );
//   }

//   Widget _buildFoodDetail({
//     required BuildContext context,
//     required Food food,
//   }) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         // Text(food.name, style: _textTheme(context).subtitle1),
//         CustomTextWidget(
//           text: food.name,
//           color: CustomColor.Black,
//           fontFamily: '.SF Pro Display',
//           fontSize: 18.0,
//           fontWeight: FontWeight.w500,
//         ),
//         const SizedBox(height: 15),
//         CustomTextWidget(
//           text: "This is a description that... ${food.comparePrice}",
//           color: Color(0xFF909090),
//           fontFamily: '.SF Pro Display',
//           fontSize: 13.0,
//           fontWeight: FontWeight.normal,
//         ),

//         const SizedBox(
//           height: 15,
//         ),
//         Row(
//           children: [
//             CustomTextWidget(
//               text:
//                   "${_welcomeController.currencyChosen.value} ${food.comparePrice}",
//               color: CustomColor.MaroonTheme,
//               fontFamily: '.SF Pro Display',
//               fontSize: 11.0,
//               fontWeight: FontWeight.bold,
//             ),
//             SizedBox(
//               width: 7,
//             ),
//             Text(
//               food.comparePrice,
//               strutStyle: Helper.buildStrutStyle(_textTheme(context).caption),
//               style: TextStyle(
//                   color: CustomColor.MaroonTheme,
//                   fontSize: 11.0,
//                   fontWeight: FontWeight.normal,
//                   fontFamily: '.SF Pro Display',
//                   decoration: TextDecoration.lineThrough),
//             ),
//             SizedBox(
//               width: 15,
//             ),
//             Row(mainAxisSize: MainAxisSize.max, children: [
//               Container(
//                 // color: Colors.blueAccent,
//                 height: 35,
//                 width: 35,

//                 decoration: BoxDecoration(
//                   color: const Color(0xFFDBDBDB),
//                   borderRadius: const BorderRadius.only(
//                     topLeft: Radius.circular(3.0),
//                     topRight: Radius.circular(3.0),
//                     bottomLeft: Radius.circular(3.0),
//                     bottomRight: Radius.circular(3.0),
//                   ),
//                 ),
//                 child: Center(
//                   child: Icon(
//                     Icons.remove,
//                     color: Colors.black,
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 width: 10,
//               ),
//               Container(
//                 // color: Colors.blueAccent,
//                 color: Colors.transparent,
//                 height: 35,
//                 width: 35,

//                 child: Center(
//                   child: CustomTextWidget(
//                     text: 0.toString(),
//                     fontFamily: '.SF Pro Display',
//                     fontSize: 20.0,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black,
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 width: 10,
//               ),
//               Container(
//                 // color: Colors.blueAccent,
//                 height: 35,
//                 width: 35,

//                 decoration: BoxDecoration(
//                   color: CustomColor.MaroonTheme,
//                   borderRadius: const BorderRadius.only(
//                     topLeft: Radius.circular(3.0),
//                     topRight: Radius.circular(3.0),
//                     bottomLeft: Radius.circular(3.0),
//                     bottomRight: Radius.circular(3.0),
//                   ),
//                 ),
//                 child: Center(
//                   child: Icon(
//                     Icons.add,
//                     color: Colors.white,
//                   ),
//                 ),
//               ),
//             ]),
//             const SizedBox(width: 8.0),
//           ],
//         ),
//       ],
//     );
//   }

//   Widget _buildSectionHoteSaleIcon() {
//     return Container(
//       margin: const EdgeInsets.only(right: 4.0),
//       child: Icon(
//         Icons.whatshot,
//         color: scheme.primary,
//         size: 20.0,
//       ),
//     );
//   }

//   Widget _buildFoodHotSaleIcon() {
//     return Container(
//       child: Icon(Icons.whatshot, color: scheme.primary, size: 16.0),
//       padding: const EdgeInsets.all(4.0),
//       decoration: BoxDecoration(
//         color: scheme.primary.withOpacity(0.1),
//         borderRadius: BorderRadius.circular(16.0),
//       ),
//     );
//   }

//   TextTheme _textTheme(context) => Theme.of(context).textTheme;
// }
import 'package:blink_sdk/controllers/home_controller.dart';
import 'package:blink_sdk/controllers/welcome_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../routes/app_routes.dart';
import '../../../../theme/colors.dart';
import '../../../../theme/icons.dart';
import '../../../../utils/CustomWidgets/ContentInsideCircle/content_inside_circle.dart';
import '../../../../utils/CustomWidgets/CustomButton/custom_button.dart';
import '../../../../utils/CustomWidgets/CustomText/custom_text.dart';
import '../colors.dart';
import '../example_data.dart';
import '../helper/helper.dart';

class CategorySection extends StatelessWidget {
  CategorySection({
    Key? key,
    required this.category,
    required this.welcomeController,
    required this.index,
    required this.lastIndex,
    required this.homeController,
  }) : super(key: key);

  final Category category;

  var description =
      "This is a description.sidhsjdhsjdjhsdjshdjsdhjshdsjhdjshdjdshsjhdjsdhsjdh";

  int lastIndex, index;

  WelcomeController welcomeController;

  HomeController homeController;

  final multiList = [];

  @override
  Widget build(BuildContext context) {
    return Container(
      //    padding: const EdgeInsets.symmetric(horizontal: 20.0),
      margin: EdgeInsets.only(
        bottom: !(index == (lastIndex - 1)) ? 16 : 12,
      ),
      color: scheme.surface,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildSectionTileHeader(context),
          _buildFoodTileList(context),
          //const SizedBox(height: 100,),
        ],
      ),
    );
  }

  Widget _buildFoodTileList(BuildContext context) {
    return Column(
      children: List.generate(
        category.foods.length,
        (index) {
          final food = category.foods[index];
          bool isLastIndex = index == category.foods.length - 1;

          //homeController.isAddOnAvailable.length = food.dishOptions.length;
          // homeController.isAddOnAvailable.forEach((element) {

          //   element = false.obs;
          //   print("is add on available : ${element}");
          // });

          return InkWell(
              onTap: () {
                print("item tapped. ");
                // Get.toNamed(AppRoutes.ORDER_QUANTITY_DETAILS, arguments: food);

                // if (!food.dishOptions.dish_options.isEmpty) {
                //   food.dishOptions.dish_options?[0].dish_sub_options
                //       .forEach((element) {
                //     print("Dish sub options name : ${element.name}");
                //   });
                //   // print("Index of the dish : ${this.index}");
                //   homeController.mainIndex.value = this.index;
                //   //  homeController.subIndex.value = index;

                //   if (homeController.mainIndex.value == this.index) {
                //    // homeController.isAddOnAvailable[index].value = true;
                //     print("Index value where value is being added ::: ${index}");
                //   }

                //   // homeController.isAddOnAvailable.value = true;
                // } else {
                //   print("jb dishes hi nahe to dish options kahan se layen?");
                //   // print("Index of the dish : ${this.index}");
                // }
              },
              child: _buildFoodTile(
                index: index,
                food: food,
                context: context,
                isLastIndex: isLastIndex,
              ));
        },
      ),
    );
  }

  Widget _buildSectionTileHeader(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 16),
        _sectionTitle(context),
        const SizedBox(height: 8.0),
        // category.subtitle != null
        //     ? _sectionSubtitle(context)
        //     : const SizedBox(),
        // const SizedBox(height: 16),
      ],
    );
  }

  Widget _sectionTitle(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 13),
        Expanded(
          flex: 2,
          child: Container(
              // color: Colors.yellow,
              child: CustomTextWidget(
            text: category.title,
            // text:
            //    element.all_sub_section[0].dish.name,
            color: Colors.black,
            fontFamily: '.SF Pro Display',
            fontSize: 24.0,
            fontWeight: FontWeight.w600,
          )),
        ),
      ],
    );
  }

  // Widget _sectionSubtitle(BuildContext context) {
  //   return Text(
  //     category.subtitle!,
  //     style: _textTheme(context).subtitle2,
  //     strutStyle: Helper.buildStrutStyle(_textTheme(context).subtitle2),
  //   );
  // }

  Widget _buildFoodTile({
    required BuildContext context,
    required bool isLastIndex,
    required Food food,
    required index,
  }) {
    // return Column(
    //   children: [
    //     Row(
    //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //       children: [
    //         _buildFoodDetail(food: food, context: context),
    //         _buildFoodImage(food.imageUrl),
    //       ],
    //     ),
    //     !isLastIndex ? const Divider(height: 16.0) : const SizedBox(height: 8.0)
    //   ],
    // );

    return InkWell(
      onTap: () {
        if (!food.dishOptions.dish_options.isEmpty) {
          if (homeController.isAddOnAvailable.value) {
            homeController.isAddOnAvailable.value = false;
            print("is add on available is false. ");
          } else {
            homeController.isAddOnAvailable.value = true;
            print("is add on available is true. ");
          }
        }

        // if (!food.dishOptions.dish_options.isEmpty) {
        //   food.dishOptions.dish_options?[0].dish_sub_options
        //       .forEach((element) {
        //     print("Dish sub options name : ${element.name}");
        //   });
        //   // print("Index of the dish : ${this.index}");
        //   homeController.mainIndex.value = this.index;
        //   //  homeController.subIndex.value = index;

        //   if (homeController.mainIndex.value == this.index) {
        //    // homeController.isAddOnAvailable[index].value = true;
        //     print("Index value where value is being added ::: ${index}");
        //   }

        //   // homeController.isAddOnAvailable.value = true;
        // } else {
        //   print("jb dishes hi nahe to dish options kahan se layen?");
        //   // print("Index of the dish : ${this.index}");
        // }
      },
      child: Column(
        children: [
          Row(
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
                      color: Colors.transparent,
                      //     color: Colors.black,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(5.0),
                        topRight: Radius.circular(5.0),
                        bottomLeft: Radius.circular(5.0),
                        bottomRight: Radius.circular(5.0),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
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
                                  height: 5.0,
                                ),
                                Expanded(
                                  flex: 3,
                                  child: Container(
                                    //color: Colors.yellow,
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      //   mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          flex: 8,
                                          child: Container(
                                            // color: Colors.yellow,
                                            child: CustomTextWidget(
                                              text: food.name,
                                              // text:
                                              //    element.all_sub_section[0].dish.name,
                                              color: Colors.black,
                                              fontFamily: '.SF Pro Display',
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 2,
                                          child: ContentInsideColor(
                                              width: 25.0,
                                              height: 25.0,
                                              shape: BoxShape.circle,
                                              roundContainerOutsideColor:
                                                  Color(0xFFD3D3D3),
                                              icon: Icons.favorite,
                                              iconColor: Colors.white,
                                              iconSize: 14.0),
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
                                    decoration: BoxDecoration(
                                      color: Colors.transparent,
                                      borderRadius: const BorderRadius.only(
                                        // topLeft: Radius.circular(8.0),
                                        topRight: Radius.circular(8.0),
                                        // bottomLeft: Radius.circular(8.0),
                                        bottomRight: Radius.circular(8.0),
                                      ),
                                    ),
                                    child: CustomTextWidget(
                                      text: "${food.description}",
                                      // text: "sdd",
                                      color: Color(0xFF909090),
                                      fontFamily: '.SF Pro Display',
                                      fontSize: 13.0,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Expanded(
                                  flex: 4,
                                  child: Container(
                                    color: Colors.transparent,
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      //   mainAxisAlignment: MainAxisAlignment.start,

                                      children: [
                                        Expanded(
                                          flex: 5,
                                          child: Container(
                                            // color: Colors.yellow,
                                            child: CustomTextWidget(
                                              text:
                                                  "${welcomeController.currencyChosen.value} ${food.price}",
                                              // text:
                                              // //     "Rs.30",
                                              color: CustomColor.MaroonTheme,
                                              fontFamily: '.SF Pro Display',
                                              fontSize: 13.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 8,
                                          child: Obx(() {
                                            homeController
                                                .isAddOnAvailable.value;

                                            return food
                                                        .dishOptions
                                                        .dish_options?[0]
                                                        .dish_sub_options
                                                        .length >
                                                    0
                                                ? Container(
                                                    height: 34,
                                                    child: CustomButton(
                                                      btnTextFontSize: 14.0,
                                                      btnBackgroundColor:
                                                          CustomColor
                                                              .MaroonTheme,
                                                      borderRadius: 8.0,
                                                      btnText: 'Add to Cart',
                                                      btnTextColor:
                                                          CustomColor.White,
                                                      btnTextFontFamily:
                                                          '.SF Pro Display',
                                                    ))
                                                : Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                        Expanded(
                                                          flex: 3,
                                                          child: Container(
                                                            // color: Colors.blueAccent,

                                                            decoration:
                                                                BoxDecoration(
                                                              color: const Color(
                                                                  0xFFDBDBDB),
                                                              borderRadius:
                                                                  const BorderRadius
                                                                      .only(
                                                                topLeft: Radius
                                                                    .circular(
                                                                        3.0),
                                                                topRight: Radius
                                                                    .circular(
                                                                        3.0),
                                                                bottomLeft: Radius
                                                                    .circular(
                                                                        3.0),
                                                                bottomRight: Radius
                                                                    .circular(
                                                                        3.0),
                                                              ),
                                                            ),
                                                            child: Center(
                                                              child: Icon(
                                                                Icons.remove,
                                                                color: Colors
                                                                    .black,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Expanded(
                                                          flex: 4,
                                                          child: Container(
                                                            // color: Colors.blueAccent,
                                                            color: Colors
                                                                .transparent,

                                                            child: Center(
                                                              child:
                                                                  CustomTextWidget(
                                                                text: 0
                                                                    .toString(),
                                                                fontFamily:
                                                                    '.SF Pro Display',
                                                                fontSize: 20.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                color: Colors
                                                                    .black,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Expanded(
                                                          flex: 3,
                                                          child: Container(
                                                            // color: Colors.blueAccent,

                                                            decoration:
                                                                BoxDecoration(
                                                              color: CustomColor
                                                                  .MaroonTheme,
                                                              borderRadius:
                                                                  const BorderRadius
                                                                      .only(
                                                                topLeft: Radius
                                                                    .circular(
                                                                        3.0),
                                                                topRight: Radius
                                                                    .circular(
                                                                        3.0),
                                                                bottomLeft: Radius
                                                                    .circular(
                                                                        3.0),
                                                                bottomRight: Radius
                                                                    .circular(
                                                                        3.0),
                                                              ),
                                                            ),
                                                            child: Center(
                                                              child: Icon(
                                                                Icons.add,
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ]);
                                          }),
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
                            borderRadius: BorderRadius.circular(10.0),
                            child: FadeInImage.assetNetwork(
                              placeholder: Images.kTransparentImage,
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
                              image: food.imageUrl,
                              fit: BoxFit.cover,
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
              // SizedBox(
              //   width: 10,
              // ),
            ],
          ),
          !isLastIndex
              ? const Divider(
                  color: Color(0xFFE8E8E8),
                  thickness: 1,
                  indent: 20,
                  endIndent: 20,
                )
              : SizedBox(
                  height: 5,
                ),
        ],
      ),
    );
  }

  Widget _buildFoodImage(String url) {
    // return FadeInImage.assetNetwork(
    //   placeholder: 'assets/images/transparent.png',
    //   image: url,
    //   width: 64,
    // );

    return Expanded(
      flex: 2,
      child: Container(
        height: 100.0,
        // width: 150,
        color: Colors.transparent,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12.0),
          child: FadeInImage.assetNetwork(
            placeholder: Images.kTransparentImage,
            image: url,
            fit: BoxFit.cover,
            // width: 80,
          ),
        ),
      ),
    );
  }

  Widget _buildFoodDetail({
    required BuildContext context,
    required Food food,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              flex: 10,
              child: CustomTextWidget(
                text: food.name,
                color: Colors.black,
                fontFamily: '.SF Pro Display',
                fontSize: 18.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              flex: 2,
              child: ContentInsideColor(
                  width: 25.0,
                  height: 25.0,
                  shape: BoxShape.circle,
                  roundContainerOutsideColor: Color(0xFFD3D3D3),
                  icon: Icons.favorite,
                  iconColor: Colors.white,
                  iconSize: 14.0),
            ),
            SizedBox(width: 10),
          ],
        ),

        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Flexible(
              flex: 2,
              child: new Container(
                margin: new EdgeInsets.only(top: 10.0, bottom: 10.0),
                width: MediaQuery.of(context).size.width * 0.6,
                //color: Colors.red,
                child: new Text(
                  '${food.description}',
                  maxLines: 1,
                  overflow: TextOverflow.visible,
                  style: TextStyle(
                    color: Color(0xFF909090),
                    fontSize: 13.0,
                    fontWeight: FontWeight.normal,
                    fontFamily: '.SF Pro Display',
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Flexible(
              flex: 5,
              child: Container(
                // color: Colors.yellow,
                child: CustomTextWidget(
                  text: " Rs. ${food.price}",
                  // text:
                  // //     "Rs.30",
                  color: CustomColor.MaroonTheme,
                  fontFamily: '.SF Pro Display',
                  fontSize: 13.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              width: 50,
            ),
            Flexible(
              flex: 5,
              child: Container(
                width: 100,
                height: 30,
                child: Row(mainAxisSize: MainAxisSize.min, children: [
                  Flexible(
                    flex: 3,
                    child: Container(
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
                  Flexible(
                    flex: 4,
                    child: Container(
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
                  Flexible(
                    flex: 3,
                    child: Container(
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
          ],
        ),

        // Text(
        //   "This description composes empty..sd jhsdjhsdjhdshj",
        //   overflow: TextOverflow.ellipsis,
        //   maxLines: 1,
        //   textAlign: TextAlign.left,
        //   style: TextStyle(
        //     color: Color(0xFF909090),
        //     fontSize: 13.0,
        //     fontWeight: FontWeight.normal,
        //     fontFamily: '.SF Pro Display',
        //   ),
        // ),
        // Text(food.name, style: _textTheme(context).subtitle1),
        // const SizedBox(height: 16),
        // Row(
        //   children: [
        //     Text(
        //       "មកពី" + food.price + " ",
        //       style: _textTheme(context).caption,
        //       strutStyle: Helper.buildStrutStyle(_textTheme(context).caption),
        //     ),
        //     Text(
        //       food.comparePrice,
        //       strutStyle: Helper.buildStrutStyle(_textTheme(context).caption),
        //       style: _textTheme(context)
        //           .caption
        //           ?.copyWith(decoration: TextDecoration.lineThrough),
        //     ),
        //     const SizedBox(width: 8.0),
        //     if (food.isHotSale) _buildFoodHotSaleIcon(),
        //   ],
        // ),
      ],
    );
  }

  Widget _buildSectionHoteSaleIcon() {
    return Container(
      margin: const EdgeInsets.only(right: 4.0),
      child: Icon(
        Icons.whatshot,
        color: scheme.primary,
        size: 20.0,
      ),
    );
  }

  Widget _buildFoodHotSaleIcon() {
    return Container(
      child: Icon(Icons.whatshot, color: scheme.primary, size: 16.0),
      padding: const EdgeInsets.all(4.0),
      decoration: BoxDecoration(
        color: scheme.primary.withOpacity(0.1),
        borderRadius: BorderRadius.circular(16.0),
      ),
    );
  }

  TextTheme _textTheme(context) => Theme.of(context).textTheme;
}
