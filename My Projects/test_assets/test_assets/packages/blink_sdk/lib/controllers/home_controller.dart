import 'dart:convert';
import 'dart:developer';

import 'package:blink_sdk/controllers/welcome_controller.dart';
import 'package:blink_sdk/core/models/NetworkModels/HomeScreen/GetBanners/get_splash.dart';
import 'package:blink_sdk/core/models/NetworkModels/HomeScreen/GetStoreMenu/all_section.dart';
import 'package:blink_sdk/core/models/NetworkModels/HomeScreen/GetStoreMenu/get_store_menu.dart';
import 'package:blink_sdk/core/services/api_calls.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart' hide Response;

import '../core/models/NetworkModels/HomeScreen/GetRestBranch/get_rest_branch.dart';
import '../routes/app_routes.dart';
import '../utils/LanguageFilterHelper/language_filter.dart';
import '../views/Home/NewHomeDesign/example_data.dart';

class HomeController extends GetxController {


  RxInt mainIndex = 0.obs, subIndex = 0.obs;

  RxBool isAddOnAvailable = false.obs;

  RxInt tabInx = 0.obs;

  RxBool tabIndexBool = false.obs;

  RxDouble temporaryScrollerOffset = 0.0.obs;

  RxString currentScreen = "".obs;

  RxInt currentIndex = 0.obs;

  RxInt categoriesIndex = 0.obs;

  RxBool isSearchBar = false.obs;

  List<RxBool> isAddOn = [];

  RxInt itemIndex = 0.obs;

  List<RxBool> isAddToCartTapped = [];

  RxBool showAddRemoveOpt = false.obs;

  ApiCalls _apiCalls = ApiCalls();

  WelcomeController _welcomeController = Get.find();
  GetSplash? _getSplash;
  GetStoreMenu? getStoreMenu;

  GetRestaurantBranch? getRestaurantBranch;

  RxBool isScrollCheck = false.obs;

  RxDouble childScrollerOffset = 0.0.obs;

  RxBool childScrollOutOfRange = false.obs;

  RxInt tabIndex = 0.obs;

  RxBool isEnforceIndexToZero = false.obs;

  RxInt firstIndex = 0.obs;

  RxBool isFirstTimeListViewScrolled = false.obs;

  RxBool isSingleChildSlideAgain = false.obs;
  RxDouble singleChildScrollOffset = 0.0.obs;

  RxBool isBannerReceived = false.obs;

  RxBool isSectionReceived = false.obs;

  final listOfBanners = [];

  Map<String, RxString> supportScreenData = {
    "logo": "".obs,
    "contact": "".obs,
    "email": "".obs
  };

  final listOfSections = [];
  final listOfSubSectionDishes = [];
  final LanguagFilterHelper _languagFilterHelper = LanguagFilterHelper();

  RxInt selectionSelectedIndex = 0.obs;

  List<RxString> listOfDishes = [];

  final getListOfSections = [];

  RxBool isTabBarItemTapped = true.obs;
  RxBool isTapResultInProcess = false.obs;

  RxString selectedSection = "".obs;
  final listOfSelectedSectionItemsTemporary = [];
  final listOfSelectedSectionItems = [];

  final RxBool isTriggerMenuList = false.obs;
  List<Category> listOfCategories = [];

  getSplashForBanners(restaurantId, restaurantBranchId) async {
    print(
        "hit again for get ssplash banners with rest id : ${restaurantBranchId} ");
    isBannerReceived.value = false;

    Response response =
        await _apiCalls.getSplashForBanners(restaurantId, restaurantBranchId);
    var data = jsonDecode(jsonEncode(response.data));
    _getSplash = GetSplash.fromJson(data);
    listOfBanners.length = 0;

    _getSplash?.data?.forEach((element) {
      listOfBanners.add(element.image_url);
    });
  }

  getSections(restaurantId, restaurantBranchId) async {
    isSectionReceived.value = false;
    print("hit again for get section with rest id : ${restaurantBranchId} ");
    Response response =
        await _apiCalls.getStoreMenu(restaurantId, restaurantBranchId);
    var data = jsonDecode(jsonEncode(response.data));
    getStoreMenu = GetStoreMenu.fromJson(data);

    listOfSections.length = 0;

    getStoreMenu?.data?.forEach((data) {
      data.all_section?.forEach((allSection) {
        // String name = _languagFilterHelper.languageFilter(
        //     allSection.name, _welcomeController.languageSelectedIndex.value);


        



      
        if (allSection.all_sub_section![0].dish!.isNotEmpty) {

          


          listOfSections.add(allSection);
          print("allSection :: ${allSection.name}");
        } else {
          print("dish empty");
        }
      });
    });
  }

  getSubSectionDishes(allSectionIndex) {
    getStoreMenu
        ?.data?[0].all_section?[allSectionIndex].all_sub_section?[0].dish
        ?.forEach((element) {
      listOfSubSectionDishes.add(element);
    });

    return listOfSubSectionDishes.length;
  }

  getRestaurantBranches(restaurantId, restaurantBranchId) async {
    print("sdsdsdds ");
    Response response =
        await _apiCalls.getRestaurantBranch(restaurantId, restaurantBranchId);
    var data = jsonDecode(jsonEncode(response.data));
    getRestaurantBranch = GetRestaurantBranch.fromJson(data);

    supportScreenData["logo"]?.value = getRestaurantBranch!.data!.logo!;

    supportScreenData["contact"]?.value = getRestaurantBranch!
        .data!.restaurantBranches![0].restaurantBranchContacts![0].contact!;

    supportScreenData["email"]?.value =
        getRestaurantBranch!.data!.restaurantBranches![0].vendorEmail!;
   
   


    // //  print("email");
    // print("logooo ${supportScreenData["logo"]?.value}");
    // //print("email ${supportScreenData["email"]?.value}");
    // print(
    //     "contact ${getRestaurantBranch!.data?.restaurantBranches?[0].restaurantBranchContacts?[0].contact}");

    // print(
    //     "email ${getRestaurantBranch!.data?.restaurantBranches?[0].vendorEmail}");

    //   supportScreenData["contact"]?.value = getRestaurantBranch!
    //       .data!.restaurantBranches![0].restaurantBranchContacts![0].contact!;
    //  print("contact");

    //   supportScreenData["email"]?.value =
    //       getRestaurantBranch!.data!.restaurantBranches![0].vendorEmail!;
    //  print("email");

    // print("Supppportttt ::: ${supportScreenData["email"]!.value} && ${supportScreenData["email"]!.value} && ${supportScreenData["email"]!.value} ");
  }
}
