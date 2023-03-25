import 'package:blink_sdk/views/SplashScreen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'routes/app_pages.dart';
import 'routes/app_routes.dart';
import 'views/SplashScreen/splash_screen.dart';
//import 'package:flutter_dotenv/flutter_dotenv.dart';

class MyApp extends StatelessWidget {

  MyApp() : super();

  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: SplashScreen(),
      getPages: AppPages.routes,
      initialRoute: AppRoutes.SPLASH_SCREEN,
    );
  }
}
