import 'package:blink_sdk/controllers/bottom_navigation_controller.dart';
import 'package:blink_sdk/controllers/home_controller.dart';
import 'package:blink_sdk/routes/app_routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:transparent_image/transparent_image.dart';

import '../../../theme/colors.dart';
import '../CustomText/custom_text.dart';

class BottomNav extends StatelessWidget {
  HomeController _homeController = Get.find();
  BottomNav({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BottomNavigationBarController _bottomNavigationBarController;

    bool isBottomNavBarControllerRegistered =
        Get.isRegistered<BottomNavigationBarController>();
    if (isBottomNavBarControllerRegistered) {
      _bottomNavigationBarController = Get.find();
    } else {
      _bottomNavigationBarController = Get.put(BottomNavigationBarController());
    }

    return Container(
      height: 95.0,
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(16.0),
          topRight: Radius.circular(16.0),
        ),
        child: BottomAppBar(
          shape: CircularNotchedRectangle(),
          color: CustomColor.MaroonTheme,
          notchMargin: 6.0,
          child: Obx(
            () {
              return BottomNavigationBar(
                  currentIndex:
                      _bottomNavigationBarController.currentIndex.value,
                  type: BottomNavigationBarType.fixed, // This is all you need!
                  elevation: 0,
                  backgroundColor: Theme.of(context).primaryColor.withAlpha(0),
                  items: [
                    BottomNavigationBarItem(
                      icon: Container(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 7,
                            ),
                            Container(
                              child: ImageIcon(
                                NetworkImage(
                                    "https://em-cdn.eatmubarak.pk/flutter/home.png"),
                              ),
                            ),
                            SizedBox(
                              height: 4,
                            )
                          ],
                        ),
                      ),
                      label: "Home",
                    ),
                    BottomNavigationBarItem(
                      icon: Column(
                        children: [
                          SizedBox(
                            height: 7,
                          ),
                          Container(
                            child: ImageIcon(
                              NetworkImage(
                                  "https://em-cdn.eatmubarak.pk/flutter/user.png"),
                            ),
                          ),
                          SizedBox(
                            height: 4,
                          )
                        ],
                      ),
                      label: "Account",
                    ),
                  ],
                  selectedLabelStyle:
                      TextStyle(fontSize: 12, fontFamily: '.SF Pro Display'),
                  unselectedItemColor: Colors.white,
                  selectedItemColor: Colors.white,
                  onTap: (index) {
                    _bottomNavigationBarController.currentIndex.value = index;

                    switch (_bottomNavigationBarController.currentIndex.value) {
                      case 0:
                        {
                          if (_homeController.currentScreen.value ==
                              "PROFILE") {
                            _homeController.currentScreen.value = "HOME";

                            Get.back();
                            //     _homeController.currentScreen.value = "";
                          } else {
                            Get.toNamed(AppRoutes.NEW_HOME);
                          }
                          break;
                        }

                      case 1:
                        {
                          Get.toNamed(AppRoutes.MY_PROFILE);
                          break;
                        }
                    }
                  });
            },
          ),
        ),

        // child: BottomAppBar(
        //   color: CustomColor.MaroonTheme,
        //   shape: CircularNotchedRectangle(),
        //   notchMargin: 4.0,
        //   child: Row(
        //     mainAxisSize: MainAxisSize.max,
        //     mainAxisAlignment: MainAxisAlignment.spaceAround,
        //     children: <Widget>[
        //       GestureDetector(
        //         onTap: (() => Get.toNamed(AppRoutes.HOME)),
        //         child: Column(
        //           children: [
        //             Expanded(
        //               flex: 2,
        //               child: FadeInImage.memoryNetwork(
        //                 placeholder: kTransparentImage,
        //                 image: 'https://em-cdn.eatmubarak.pk/flutter/home.png',
        //                 fit: BoxFit.contain,
        //                 width: 20,
        //                 height: 20,
        //               ),
        //             ),
        //             Expanded(
        //               flex: 2,
        //               child: CustomTextWidget(
        //                 text: 'Home',
        //                 color: Colors.white,
        //                 fontFamily: '.SF Pro Display',
        //                 fontSize: 12.0,
        //               ),
        //             ),
        //           ],
        //         ),
        //       ),
        //       GestureDetector(
        //         onTap: (() => Get.toNamed(AppRoutes.MY_PROFILE)),
        //         child: Column(
        //           children: [
        //             Expanded(
        //               flex: 2,
        //               child: FadeInImage.memoryNetwork(
        //                 placeholder: kTransparentImage,
        //                 image: 'https://em-cdn.eatmubarak.pk/flutter/user.png',
        //                 fit: BoxFit.contain,
        //                 width: 20,
        //                 height: 20,
        //               ),
        //             ),
        //             Expanded(
        //               flex: 2,
        //               child: const CustomTextWidget(
        //                 text: 'Account',
        //                 color: Colors.white,
        //                 fontFamily: '.SF Pro Display',
        //                 fontSize: 12.0,
        //               ),
        //             ),
        //           ],
        //         ),
        //       ),
        //     ],
        //   ),
      ),
    );
  }
}
