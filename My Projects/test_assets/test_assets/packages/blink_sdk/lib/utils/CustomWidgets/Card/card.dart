import 'package:blink_sdk/controllers/order_quantity_details.dart';
import 'package:blink_sdk/routes/app_routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:transparent_image/transparent_image.dart';

import '../../../theme/colors.dart';
import '../../../theme/icons.dart';
import '../ContentInsideCircle/content_inside_circle.dart';
import '../CustomButton/custom_button.dart';
import '../CustomText/custom_text.dart';

class CustomCard extends StatelessWidget {
  final index;
  final price;
  final name;
  final isAddOn;
  final controller;
  final onPressed;
  final isAddToCartTapped;
  CustomCard(
      {this.index,
      this.price,
      this.name,
      this.isAddOn,
      this.controller,
      this.onPressed,
      this.isAddToCartTapped})
      : super();

  //OrderQuantityDetailsController _orderQuantityDetailsController = Get.find();

  @override
  Widget build(BuildContext context) {
    int counter = 0;
    return GestureDetector(
      onTap: () {
        if (!controller.isAddToCartTapped[index].value &&
            !controller.isAddOn[index].value) {
          controller.isAddToCartTapped[index].value = true;
          counter++;
          return;
        }
        controller.isAddToCartTapped[index].value = false;
        if (counter > 0) {
          counter;
          return;
        }
        Get.toNamed(AppRoutes.ORDER_QUANTITY_DETAILS);
      },
      child: Container(
          //  margin: EdgeInsets.only(left: index == 0 ? 0.0 : 13.0, ),
          margin: EdgeInsets.only(
              left: index == 0 ? 18.0 : 10.0, right: index == 3 ? 18.0 : 0.0),
          width: 170,
          height: 80,
          decoration: BoxDecoration(
            color: CustomColor.WelcomeScreenBtnColor,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(8.0),
              topRight: Radius.circular(8.0),
              bottomLeft: Radius.circular(12.0),
              bottomRight: Radius.circular(12.0),
            ),
            border: Border.all(
                color: CustomColor.WelcomeScreenBtnStrokeColor, width: 1.0),
          ),
          child: Column(
            children: [
              Expanded(
                  flex: 5,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12.0),
                          child: FadeInImage.assetNetwork(
                            placeholder: Images.kTransparentImage,
                            image:
                                'https://em-cdn.eatmubarak.pk/flutter/restaurant.png',
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                      ),
                    ],
                  )),
              SizedBox(
                height: 10,
              ),
              Expanded(
                flex: 2,
                child: Container(
                  // color: Colors.yellow,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 10.0,
                      ),
                      Expanded(
                        flex: 3,
                        child: Container(
                          // color: Colors.blueAccent,

                          child: CustomTextWidget(
                            text: name,
                            fontFamily: '.SF Pro Display',
                            fontSize: 14.0,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: ContentInsideColor(
                            width: 25.0,
                            height: 25.0,
                            shape: BoxShape.circle,
                            roundContainerOutsideColor: Color(0xFFD3D3D3),
                            icon: Icons.favorite,
                            iconColor: Colors.white,
                            iconSize: 14.0),
                      ),
                      SizedBox(
                        width: 6.0,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Expanded(
                flex: 1,
                child: Container(
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10.0,
                      ),
                      CustomTextWidget(
                        text: 'Rs.${price}',
                        fontFamily: '.SF Pro Display',
                        fontSize: 13.0,
                        color: CustomColor.MaroonTheme,
                        fontWeight: FontWeight.bold,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                  flex: 2,
                  child: Row(children: [
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        flex: 2,
                        child: Container(
                            child: Obx((() => !controller
                                    .isAddToCartTapped[index].value
                                ? CustomButton(
                                    btnTextFontSize: 14.0,
                                    btnBackgroundColor: CustomColor.MaroonTheme,
                                    borderRadius: 8.0,
                                    btnText: 'Add to Cart',
                                    btnTextColor: CustomColor.White,
                                    btnTextFontFamily: '.SF Pro Display',
                                  )
                                : Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                        Expanded(
                                          flex: 3,
                                          child: Container(
                                            // color: Colors.blueAccent,

                                            decoration: BoxDecoration(
                                              color: const Color(0xFFDBDBDB),
                                              borderRadius:
                                                  const BorderRadius.only(
                                                topLeft: Radius.circular(3.0),
                                                topRight: Radius.circular(3.0),
                                                bottomLeft:
                                                    Radius.circular(3.0),
                                                bottomRight:
                                                    Radius.circular(3.0),
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
                                        Expanded(
                                          flex: 3,
                                          child: Container(
                                            // color: Colors.blueAccent,

                                            decoration: BoxDecoration(
                                              color: CustomColor.MaroonTheme,
                                              borderRadius:
                                                  const BorderRadius.only(
                                                topLeft: Radius.circular(3.0),
                                                topRight: Radius.circular(3.0),
                                                bottomLeft:
                                                    Radius.circular(3.0),
                                                bottomRight:
                                                    Radius.circular(3.0),
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
                                      ]))))),
                    SizedBox(
                      width: 10,
                    ),
                  ])),
              SizedBox(
                height: 12,
              ),
            ],
          )),
    );
  }
}
