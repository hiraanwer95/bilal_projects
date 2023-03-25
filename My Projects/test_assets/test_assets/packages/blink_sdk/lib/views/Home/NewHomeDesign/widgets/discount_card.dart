import 'package:blink_sdk/controllers/home_controller.dart';
import 'package:blink_sdk/controllers/welcome_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../theme/colors.dart';
import '../../../../theme/icons.dart';
import '../colors.dart';

class DiscountCard extends StatelessWidget {
  DiscountCard({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.homeController,
    required this.welcomeController,
  }) : super(key: key);

  final String title;
  final String subtitle;
  final HomeController homeController;
  final WelcomeController welcomeController;

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    final CarouselController controller = CarouselController();
    print("List of banners : ${homeController.listOfBanners.length}");

    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.22,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            flex: 2,
            child: Stack(
              children: [
                Obx(() {
                  homeController.isBannerReceived.value;
                  return CarouselSlider(
                    options: CarouselOptions(
                        autoPlay: true,
                        autoPlayInterval: Duration(seconds: 3),
                        autoPlayAnimationDuration: Duration(milliseconds: 800),
                        height: MediaQuery.of(context).size.height * 1,
                        viewportFraction: 1.0,
                        enlargeCenterPage: false,
                        onPageChanged: (index, reason) {
                          homeController.currentIndex.value = index;
                        }),
                    items: homeController.listOfBanners.map<Widget>((item) {
                      return Container(
                       width: MediaQuery.of(context).size.width * 1,
                        // color:Colors.red,
                        
                        child: FadeInImage.assetNetwork(
                          placeholder: Images.kTransparentImage,
                          image: item,
                          fit: BoxFit.cover
                        ),
                      );
                    }).toList(),
                  );
                }),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: homeController.listOfBanners
                          .asMap()
                          .entries
                          .map<Widget>((entry) {
                        return GestureDetector(
                          onTap: () => controller.animateToPage(entry.key),
                          child: Obx(
                            () => Container(
                              width:
                                  homeController.currentIndex.value == entry.key
                                      ? 30.0
                                      : 10.0,
                              height: 10.0,
                              margin: EdgeInsets.symmetric(
                                  vertical: 8.0, horizontal: 4.0),
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  border: Border.all(
                                      color: CustomColor.White, width: 1.0),
                                  // shape: BoxShape.circle,
                                  color: Colors.white.withOpacity(
                                      homeController.currentIndex.value ==
                                              entry.key
                                          ? 0.9
                                          : 0)),
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
