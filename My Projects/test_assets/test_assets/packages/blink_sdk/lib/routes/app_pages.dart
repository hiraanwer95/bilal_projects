import 'package:blink_sdk/controllers/bottom_navigation_controller.dart';
import 'package:blink_sdk/controllers/checkout_controller.dart';
import 'package:blink_sdk/controllers/congratulations_controller.dart';
import 'package:blink_sdk/controllers/current_location_controller.dart';
import 'package:blink_sdk/controllers/favorite.dart';
import 'package:blink_sdk/controllers/home_controller.dart';
import 'package:blink_sdk/controllers/login.dart';
import 'package:blink_sdk/controllers/my_cart.dart';
import 'package:blink_sdk/controllers/my_orders_controller.dart';
import 'package:blink_sdk/controllers/my_profile_controller.dart';
import 'package:blink_sdk/controllers/notifications_controller.dart';
import 'package:blink_sdk/controllers/order_details_controller.dart';
import 'package:blink_sdk/controllers/order_quantity_details.dart';
import 'package:blink_sdk/controllers/register_controller.dart';
import 'package:blink_sdk/controllers/splash_controller.dart';
import 'package:blink_sdk/controllers/welcome_controller.dart';
import 'package:blink_sdk/utils/CustomWidgets/BottomNavigationBar/bottom_navigation_bar.dart';
import 'package:blink_sdk/views/CurrentLocation/current_location.dart';
import 'package:blink_sdk/views/Favorite/favorite.dart';
import 'package:blink_sdk/views/Home/NewHomeDesign/home_screen.dart';
import 'package:blink_sdk/views/Home/home.dart';
import 'package:blink_sdk/views/Login/login.dart';
import 'package:blink_sdk/views/MyCart/my_cart.dart';
import 'package:blink_sdk/views/OrderDetails/order_details.dart';
import 'package:blink_sdk/views/Register/register.dart';
import 'package:blink_sdk/views/SplashScreen/splash_screen.dart';
import 'package:blink_sdk/views/TestSticky/sticky_menu.dart';
// ignore: depend_on_referenced_packages
import 'package:get/get.dart';
import '../views/Checkout/checkout.dart';
import '../views/Congratulations/congratulations.dart';
import '../views/MyOrders/my_orders.dart';
import '../views/MyProfile/my_profile.dart';
import '../views/Notifications/notifications.dart';
import '../views/OrderQuantityDetails/order_quantity_details.dart';
import '../views/TestSticky/test_tab.dart';
import '../views/WelcomeScreen/welcome_screen.dart';
import 'app_routes.dart';

class AppPages {
  static final routes = [
    GetPage(
        name: AppRoutes.SPLASH_SCREEN,
        page: () => SplashScreen(),
        transition: Transition.leftToRight,
        binding: BindingsBuilder(() {
          Get.lazyPut<SplashController>(
            () => SplashController(),
          );
        }
        )),

    GetPage(
        name: AppRoutes.TAB_PAGE,
        page: () => MyHomePage(),
        transition: Transition.leftToRight,
        binding: BindingsBuilder(() {
          Get.lazyPut<SplashController>(
            () => SplashController(),
          );
        })),
    GetPage(
        name: AppRoutes.REGISTER,
        transition: Transition.leftToRight,
        page: () => RegisterScreen(),
        binding: BindingsBuilder(() {
          Get.lazyPut<RegisterController>(
            () => RegisterController(),
          );
        })),
    GetPage(
      name: AppRoutes.LOGIN,
      transition: Transition.leftToRight,
      page: () => LoginScreen(),
      binding: BindingsBuilder(() {
        Get.lazyPut<LoginController>(
          () => LoginController(),
        );
      }),
    ),
    GetPage(
      name: AppRoutes.WELCOME,
      transition: Transition.downToUp,
      page: () => WelcomeScreen(),
      binding: BindingsBuilder(() {
        Get.lazyPut<WelcomeController>(
          () => WelcomeController(),
        );
      }),
    ),
    GetPage(
      name: AppRoutes.HOME,
      transition: Transition.upToDown,
      page: () => HomeScreen([]),
      binding: BindingsBuilder(() {
        Get.lazyPut<HomeController>(
          () => HomeController(),
        );
      }),
    ),
    GetPage(
      name: AppRoutes.ORDER_DETAILS,
      transition: Transition.leftToRight,
      page: () => OrderDetailsScreen(),
      binding: BindingsBuilder(() {
        Get.lazyPut<OrderDetailsController>(
          () => OrderDetailsController(),
        );
      }),
    ),
    //  GetPage(
    //   name: AppRoutes.ORDER_QUANTITY_DETAILS,
    //   transition: Transition.leftToRight,
    //   page: () => OrderQuantityDetails(),
    //   binding: BindingsBuilder(() {
    //     Get.lazyPut<OrderDetailsController>(
    //       () => OrderDetailsController(),
    //     );
    //   }),
    // ),
    GetPage(
      name: AppRoutes.MY_ORDERS,
      transition: Transition.leftToRight,
      page: () => MyOrders([]),
      binding: BindingsBuilder(() {
        Get.lazyPut<MyOrdersController>(
          () => MyOrdersController(),
        );
      }),
    ),
    GetPage(
      name: AppRoutes.FAVORITES,
      transition: Transition.leftToRight,
      page: () => FavoriteScreen(),
      binding: BindingsBuilder(() {
        Get.lazyPut<FavoriteController>(
          () => FavoriteController(),
        );
      }),
    ),
    GetPage(
      name: AppRoutes.NOTIFICATIONS,
      transition: Transition.leftToRight,
      page: () => NotificationsScreen(),
      binding: BindingsBuilder(() {
        Get.lazyPut<NotificationsController>(
          () => NotificationsController(),
        );
      }),
    ),
    GetPage(
      name: AppRoutes.MY_CART,
      transition: Transition.downToUp,
      page: () => MyCartScreen(),
      binding: BindingsBuilder(() {
        Get.lazyPut<MyCartController>(
          () => MyCartController(),
        );
      }),
    ),
    GetPage(
      name: AppRoutes.CHECKOUT,
      transition: Transition.leftToRight,
      page: () => CheckoutScreen(),
      binding: BindingsBuilder(() {
        Get.lazyPut<CheckoutController>(
          () => CheckoutController(),
        );
      }),
    ),
    GetPage(
      name: AppRoutes.MY_PROFILE,
      transition: Transition.leftToRight,
      page: () => MyProfileScreen(),
      binding: BindingsBuilder(() {
        Get.lazyPut<MyProfileController>(
          () => MyProfileController(),
        );
      }),
    ),
    GetPage(
      name: AppRoutes.ORDER_QUANTITY_DETAILS,
      transition: Transition.downToUp,
      page: () => OrderQuantityDetails(),
      binding: BindingsBuilder(() {
        Get.lazyPut<OrderQuantityDetailsController>(
          () => OrderQuantityDetailsController(),
        );
      }),
    ),
    GetPage(
      name: AppRoutes.CONGRATULATIONS,
      transition: Transition.leftToRight,
      page: () => CongratulationsScreen(),
      binding: BindingsBuilder(() {
        Get.lazyPut<CongratulationsController>(
          () => CongratulationsController(),
        );
      }),
    ),
    GetPage(
      name: AppRoutes.CURRENT_LOCATION,
      transition: Transition.leftToRight,
      page: () => CurrentLocationScreen(),
      binding: BindingsBuilder(() {
        Get.lazyPut<CurrentLocationController>(
          () => CurrentLocationController(),
        );
      }),
    ),
    GetPage(
      name: AppRoutes.NEW_HOME,
      transition: Transition.leftToRight,
      page: () => NewHomeScreen(),
      // binding: BindingsBuilder(() {
      //   Get.lazyPut<HomeScreen>(
      //     () => NewHomeScreen(),
      //   );
    ),

    GetPage(
      name: AppRoutes.STICKY_PAGE,
      transition: Transition.leftToRight,
      page: () => StickyPage(title: "Flutter"),
    ),
  ];
}
