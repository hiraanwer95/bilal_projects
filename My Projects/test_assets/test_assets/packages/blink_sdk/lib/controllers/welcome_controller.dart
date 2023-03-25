import 'dart:convert';

import 'package:blink_sdk/core/models/NetworkModels/WelcomeScreen/restaurant_branch.dart';
import 'package:blink_sdk/utils/LanguageFilterHelper/language_filter.dart';
import 'package:blink_sdk/utils/SharedPreferences/get_shared_preferences.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide Response;
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../core/models/LocalModels/LanguageJSON/language_json.dart';
import '../core/models/NetworkModels/WelcomeScreen/get_restaurant_geo_fences.dart';
import '../core/services/api_calls.dart';
import '../utils/Constants/LocalJson/local_json.dart';
import '../utils/CustomWidgets/CustomText/custom_text.dart';
import 'dart:convert';

import 'package:flutter/services.dart';

import '../utils/CustomWidgets/InputTextField/input_text_field.dart';
import '../utils/SharedPreferences/update_shared_preferences.dart';

class WelcomeController extends GetxController {
  RxBool isFadeImg = false.obs;
  RxBool isCityModalLoading = false.obs;
  RxString cityNameSelected = "".obs;
  RxString areaNameSelected = "".obs;
  RxString branchNameSelected = "".obs;
  RxBool isSearchBarActive = false.obs;
  RxString searchBarActiveTextCityHomeDelivery = "".obs;
  RxString searchBarActiveTextAreaNamesHomeDelivery = "".obs;
  RxString searchBarActiveTextCityPickUp = "".obs;
  RxString searchBarActiveTextBranchNamesPickUp = "".obs;
  RxString lastDeliveryTypeSelected = "".obs;
  RxInt restaurantBranchId = 0.obs;
  RxString currencyChosen = "".obs;
  RxBool backBtn = false.obs;

  GetRestaurantGeoFences? _getRestaurantGeoFences;
  TextEditingController searchControllerHomeDeliveryCity =
      TextEditingController();
  TextEditingController searchControllerHomeDeliveryArea =
      TextEditingController();
  TextEditingController searchControllerPickUpCity = TextEditingController();
  TextEditingController searchControllerPickUpBranch = TextEditingController();
  TextEditingController searchControllerDineInCity = TextEditingController();
  TextEditingController searchControllerDineInBranch = TextEditingController();

  InputTextField input_text_field = InputTextField();
  final ApiCalls _apiCalls = ApiCalls();
  final SetSharedPreference _setSharedPreference = SetSharedPreference();

  final listOfDeliveryTypes = [];

  final listOfDineIn = [];
  RxBool isDynamicBtnsUpdate = false.obs;

  RxBool isPickUp = false.obs;
  RxBool isDineIn = false.obs;
  RxBool isHomeDelivery = false.obs;

  RxInt homeDeliveryCitySelectedIndex = 0.obs;
  RxInt pickUpCitySelectedIndex = 0.obs;
  RxInt dineInCitySelectedIndex = 0.obs;
  RxBool isHomeDeliveryListUpdated = false.obs;

  RxInt languageSelectedIndex = 0.obs;

  final listOfCityNamesHomeDeliveryToBeDisplayed = [];
  final listOfCityNamesHomeDeliveryToBeDisplayedObject = [];

  final filteredlistOfCityNamesHomeDeliveryToBeDisplayed = [];
  var filteredlistOfCityNamesHomeDeliveryToBeDisplayedIsSearchActive = [];

  final listOfAreaNamesToBeDisplayed = [];
  final listOfAreaNamesToBeDisplayedRestBranchIds = [];

  final filteredlistOfAreaNamesToBeDisplayed = [];
  final filteredlistOfAreaNamesToBeDisplayedObject = [];

  var filteredlistOfAreaNamesToBeDisplayedIsSearchActive = [];

  final listOfCityNamesPickUpToBeDisplayed = [];
  final listOfCityNamesPickUpToBeDisplayedObject = [];

  final filteredlistOfCityNamesPickUpToBeDisplayed = [];
  var filteredlistOfCityNamesPickUpToBeDisplayedIsSearchActive = [];

  final listOfBranchNamesToBeDisplayed = [];
  final listOfBranchNamesToBeDisplayedObject = [];

  final filteredlistOfBranchNamesToBeDisplayed = [];
  var filteredlistOfBranchNamesToBeDisplayedIsSearchActive = [];

  final listOfCityNamesDineInToBeDisplayed = [];
  final listOfCityNamesDineInToBeDisplayedObject = [];

  final filteredlistOfCityNamesDineInToBeDisplayed = [];
  var filteredlistOfCityNamesDineInToBeDisplayedIsSearchActive = [];

  final listOfBranchNamesDineInToBeDisplayed = [];
  final listOfBranchNamesDineInToBeDisplayedObject = [];

  final filteredlistOfBranchNamesDineInToBeDisplayed = [];
  var filteredlistOfBranchNamesDineInToBeDisplayedIsSearchActive = [];

  final listOfBranchNamesPickUpObjects = [];

  final listOfBranchNamesDineInObjects = [];
  final LanguagFilterHelper _languagFilterHelper = LanguagFilterHelper();
  List<LanguageJSON> languageJSON = [];
  String cityName = "";

  readLanguageJson() async {
    final String response =
        await rootBundle.loadString(LocalJSON.LANGUAGE_JSON);
    List data = await json.decode(response);
    languageJSON = data
        .map((languageJson) => LanguageJSON.fromJson(languageJson))
        .toList();
  }

  dropDownBckBtnVisibile() {
    backBtn.value = true;
  }

  displayDialogForLanguageSelection(BuildContext context) {
    //You will place a platform selection condition here
    showCupertinoModalPopup<void>(
        context: context,
        builder: (BuildContext context) => CupertinoAlertDialog(
              title: CustomTextWidget(
                text: 'Choose the language you want to select',
                fontFamily: '.SF Pro Display',
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
              content: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 120,
                    width: 300,
                    child: MediaQuery.removePadding(
                      context: context,
                      removeTop: true,
                      child: ListView.separated(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: languageJSON.length,
                        separatorBuilder: (BuildContext context, int index) {
                          return const SizedBox(
                            height: 20,
                          );
                        },
                        itemBuilder: (BuildContext context, int index) {
                          return Material(
                            // margin: EdgeInsets.only(top: 10),
                            color: Colors.transparent,
                            child: InkWell(
                              onTap: () {
                                languageSelectedIndex.value =
                                    languageJSON[index].index!;
                                areaNameSelected.value = "";
                                cityNameSelected.value = "";
                                branchNameSelected.value = "";

                                _setSharedPreference.putInt(
                                    "languageIndex", languageJSON[index].index);

                                Navigator.pop(context);
                              },
                              child: CustomTextWidget(
                                text: languageJSON[index].name_local,
                                fontSize: 16.0,
                                color: Colors.black,
                                fontWeight: FontWeight.normal,
                                fontFamily: '.SF Pro Display',
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ));
  }

  checkLanguageSelectedLocally() async {
    GetSharedPreferences _getSharedPreferences = GetSharedPreferences();
    languageSelectedIndex.value =
        await _getSharedPreferences.getInt("languageIndex");
  }

  manipulateDeliveryTypes() async {
    Response response = await _apiCalls.getRestaurantGeofences(54763);
    var data = jsonDecode(jsonEncode(response.data));
    _getRestaurantGeoFences = GetRestaurantGeoFences.fromJson(data);

    _getRestaurantGeoFences?.data?.cities?.forEach((citiesElements) {
      citiesElements.restaurant_branches?.forEach((restaurantElements) {
        if (listOfDeliveryTypes.contains(restaurantElements.delivery_type)) {
          print(
              'delivery type ${restaurantElements.delivery_type} already exists');
        } else {
          listOfDeliveryTypes.add(restaurantElements.delivery_type);
        }
      });
    });

    _getRestaurantGeoFences?.data?.cities?.forEach((citiesElements) {
      citiesElements.restaurant_branches?.forEach((restaurantElements) {
        if (listOfDineIn.contains(restaurantElements.is_dinein)) {
          print('is dine in ${restaurantElements.is_dinein}  already exists');
        } else {
          listOfDineIn.add(restaurantElements.is_dinein);
        }
      });
    });

    if (listOfDeliveryTypes.contains(1) || listOfDeliveryTypes.contains(0)) {
      isHomeDelivery.value = true;
    }

    if (listOfDeliveryTypes.contains(1) || listOfDeliveryTypes.contains(2)) {
      isPickUp.value = true;
    }

    if (listOfDineIn.contains(1)) {
      isDineIn.value = true;
    }

    currencyChosen.value =
        _getRestaurantGeoFences?.data?.restaurant?.currency_symbol ?? "";
  }

  runFilterCityNamesHomeDelivery(
    String enteredKeyword,
  ) {
    var results = [];
    if (enteredKeyword.isEmpty) {
      // if the search field is empty or only contains white-space, we'll display all users

      results = filteredlistOfCityNamesHomeDeliveryToBeDisplayed;
    } else {
      results = filteredlistOfCityNamesHomeDeliveryToBeDisplayed
          .where((element) => element.contains(enteredKeyword))
          .toList();
    }
    filteredlistOfCityNamesHomeDeliveryToBeDisplayedIsSearchActive = results;
  }

  runFilterAreaNamesHomeDelivery(
    String enteredKeyword,
  ) {
    var results = [];
    if (enteredKeyword.isEmpty) {
      // if the search field is empty or only contains white-space, we'll display all users

      results = filteredlistOfAreaNamesToBeDisplayed;
    } else {
      results = filteredlistOfAreaNamesToBeDisplayedIsSearchActive
          .where((element) => element.contains(enteredKeyword))
          .toList();
    }
    filteredlistOfAreaNamesToBeDisplayedIsSearchActive = results;
  }

  runFilterCityNamesPickUp(
    String enteredKeyword,
  ) {
    var results = [];
    if (enteredKeyword.isEmpty) {
      // if the search field is empty or only contains white-space, we'll display all users

      results = filteredlistOfCityNamesPickUpToBeDisplayed;
    } else {
      results = filteredlistOfCityNamesPickUpToBeDisplayedIsSearchActive
          .where((element) => element.contains(enteredKeyword))
          .toList();
    }
    filteredlistOfCityNamesPickUpToBeDisplayedIsSearchActive = results;
  }

  setupAlertDialogForCityHomeDelivery() {
    _getRestaurantGeoFences?.data?.cities?.forEach((citiesElements) {
      citiesElements.restaurant_branches?.forEach((restaurantElements) {
        if (restaurantElements.delivery_type == 0 ||
            restaurantElements.delivery_type == 1) {
          if (listOfCityNamesHomeDeliveryToBeDisplayed
              .contains(citiesElements.name)) {
            print("Following name : ${citiesElements.name} already exists.");
          } else {
            listOfCityNamesHomeDeliveryToBeDisplayed.add(citiesElements.name);
            listOfCityNamesHomeDeliveryToBeDisplayedObject.add(citiesElements);
          }
        }
      });
    });

    filteredlistOfCityNamesHomeDeliveryToBeDisplayed.length = 0;

    listOfCityNamesHomeDeliveryToBeDisplayed.forEach((element) {
      String name = _languagFilterHelper.languageFilter(
          element, languageSelectedIndex.value);
      filteredlistOfCityNamesHomeDeliveryToBeDisplayed.add(name);
    });

    return Container(
        height: 500, // Change as per your requirement
        width: 500, // Change as per your requirement
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    height: 40,
                    child: InputTextField(
                        controller: searchControllerHomeDeliveryCity,
                        height: 30.0,
                        hintText: 'Search your city',
                        hintTextColor: const Color(0xFFAFAFAF),
                        fillColor: Colors.white,
                        strokeColor: const Color(0xFFEAEAEA),
                        roundedCornerRadius: 30.0,
                        hintTextSize: 18.0,
                        textFontSize: 18.0,
                        onChangeFunction: (text) {
                          searchBarActiveTextCityHomeDelivery.value = text;
                        }),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Obx(
              () {
                runFilterCityNamesHomeDelivery(
                  searchBarActiveTextCityHomeDelivery.value,
                );
                return Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        height: 400,
                        child: ListView.builder(
                          shrinkWrap: true,
                          itemCount:
                              filteredlistOfCityNamesHomeDeliveryToBeDisplayedIsSearchActive
                                  .length,
                          itemBuilder: (BuildContext context, int index) {
                            return ListTile(
                              title: InkWell(
                                onTap: () {
                                  cityNameSelected.value =
                                      filteredlistOfCityNamesHomeDeliveryToBeDisplayedIsSearchActive[
                                          index];
                                  areaNameSelected.value = "";
                                  listOfAreaNamesToBeDisplayed.length = 0;
                                  homeDeliveryCitySelectedIndex.value = index;

                                  if (searchBarActiveTextCityHomeDelivery
                                      .isEmpty) {
                                    _getRestaurantGeoFences
                                        ?.data?.cities?[index].geofences
                                        ?.forEach((element) {
                                      listOfAreaNamesToBeDisplayed
                                          .add(element.area_name);

                                      listOfAreaNamesToBeDisplayedRestBranchIds
                                          .add(element.rest_brId);
                                    });
                                  } else {
                                    _getRestaurantGeoFences?.data?.cities
                                        ?.forEach((element) {
                                      String text =
                                          _languagFilterHelper.languageFilter(
                                              element.name,
                                              languageSelectedIndex.value);

                                      if (text ==
                                          filteredlistOfCityNamesHomeDeliveryToBeDisplayedIsSearchActive[
                                              index]) {
                                        element.geofences?.forEach((geofences) {
                                          listOfAreaNamesToBeDisplayed
                                              .add(geofences.area_name);
                                          listOfAreaNamesToBeDisplayedRestBranchIds
                                              .add(geofences.rest_brId);
                                        });
                                      }
                                    });
                                  }
                                  Navigator.pop(context);
                                  showCustomDialogForAreaNames(context);
                                  searchControllerHomeDeliveryCity.text = "";
                                },
                                child: CustomTextWidget(
                                  text:
                                      filteredlistOfCityNamesHomeDeliveryToBeDisplayedIsSearchActive[
                                          index],
                                  fontSize: 16.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: '.SF Pro Display',
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ],
        ));
  }

  setupAlertDialogForArea() {
    filteredlistOfAreaNamesToBeDisplayed.length = 0;
    listOfAreaNamesToBeDisplayed.forEach(((element) {
      String name = _languagFilterHelper.languageFilter(
          element, languageSelectedIndex.value);
      filteredlistOfAreaNamesToBeDisplayed.add(name);
    }));

    return Container(
        height: 500, // Change as per your requirement
        width: 500, // Change as per your requirement
        child: Column(
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    height: 40,
                    child: InputTextField(
                        controller: searchControllerHomeDeliveryArea,
                        height: 30.0,
                        hintText: 'Search your area',
                        hintTextColor: const Color(0xFFAFAFAF),
                        fillColor: Colors.white,
                        strokeColor: const Color(0xFFEAEAEA),
                        roundedCornerRadius: 30.0,
                        hintTextSize: 18.0,
                        textFontSize: 18.0,
                        onChangeFunction: (text) {
                          searchBarActiveTextAreaNamesHomeDelivery.value = text;
                        }),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Obx(
              () {
                runFilterAreaNamesHomeDelivery(
                  searchBarActiveTextAreaNamesHomeDelivery.value,
                );

                return Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        height: 400,
                        child: ListView.builder(
                          shrinkWrap: true,
                          itemCount:
                              filteredlistOfAreaNamesToBeDisplayedIsSearchActive
                                  .length,
                          itemBuilder: (BuildContext context, int index) {
                            return ListTile(
                              title: InkWell(
                                onTap: () {
                                  areaNameSelected.value =
                                      filteredlistOfAreaNamesToBeDisplayedIsSearchActive[
                                          index];
                                  Navigator.pop(context);

                                  searchControllerHomeDeliveryArea.text = "";
                                  restaurantBranchId.value =
                                      listOfAreaNamesToBeDisplayedRestBranchIds[
                                          index];
                                  listOfAreaNamesToBeDisplayedRestBranchIds
                                      .length = 0;

                                  _setSharedPreference.putInt(
                                      "restaurantBranchId",
                                      restaurantBranchId.value);
                                },
                                child: CustomTextWidget(
                                  text:
                                      filteredlistOfAreaNamesToBeDisplayedIsSearchActive[
                                          index],
                                  fontSize: 16.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: '.SF Pro Display',
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ],
        ));
  }

  showCustomDialogForCityHomeDelivery(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: CustomTextWidget(
              text: 'Select your city',
              fontSize: 30.0,
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontFamily: '.SF Pro Display',
            ),
            content: setupAlertDialogForCityHomeDelivery(),
          );
        });
  }

  runFilterBranchNamesPickUp(
    String enteredKeyword,
  ) {
    var results = [];
    if (enteredKeyword.isEmpty) {
      // if the search field is empty or only contains white-space, we'll display all users

      results = filteredlistOfBranchNamesToBeDisplayed;
    } else {
      results = filteredlistOfBranchNamesToBeDisplayedIsSearchActive
          .where((element) => element.contains(enteredKeyword))
          .toList();
    }
    filteredlistOfBranchNamesToBeDisplayedIsSearchActive = results;
  }

  setupAlertDialogForBranches() {
    filteredlistOfBranchNamesToBeDisplayed.length = 0;
    listOfBranchNamesToBeDisplayed.forEach(((element) {
      String? name = _languagFilterHelper.languageFilter(
          element, languageSelectedIndex.value);
      filteredlistOfBranchNamesToBeDisplayed.add(name);
    }));

    return Container(
      width: 500,
      height: 500,
      child: Column(
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  height: 40,
                  child: InputTextField(
                      controller: searchControllerPickUpBranch,
                      height: 30.0,
                      hintText: 'Search your branch',
                      hintTextColor: const Color(0xFFAFAFAF),
                      fillColor: Colors.white,
                      strokeColor: const Color(0xFFEAEAEA),
                      roundedCornerRadius: 30.0,
                      hintTextSize: 18.0,
                      textFontSize: 18.0,
                      onChangeFunction: (text) {
                        searchBarActiveTextBranchNamesPickUp.value = text;
                      }),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Obx(() {
            runFilterBranchNamesPickUp(
              searchBarActiveTextBranchNamesPickUp.value,
            );

            return Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                      height: 400, // Change as per your requirement
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount:
                            filteredlistOfBranchNamesToBeDisplayedIsSearchActive
                                .length,
                        itemBuilder: (BuildContext context, int index) {
                          return ListTile(
                            title: InkWell(
                              onTap: () {
                                branchNameSelected.value =
                                    filteredlistOfBranchNamesToBeDisplayedIsSearchActive[
                                        index];
                                Navigator.pop(context);
                                searchControllerPickUpBranch.text = "";

                                restaurantBranchId.value =
                                    listOfBranchNamesToBeDisplayedObject[index];
                                listOfBranchNamesToBeDisplayedObject.length = 0;

                                _setSharedPreference.putInt(
                                    "restaurantBranchId",
                                    restaurantBranchId.value);
                              },
                              child: CustomTextWidget(
                                text:
                                    filteredlistOfBranchNamesToBeDisplayedIsSearchActive[
                                        index],
                                fontSize: 16.0,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontFamily: '.SF Pro Display',
                              ),
                            ),
                          );
                        },
                      )),
                ),
              ],
            );
          }),
        ],
      ),
    );
  }

  showCustomDialogForAreaNames(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: CustomTextWidget(
              text: 'Select your area',
              fontSize: 30.0,
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontFamily: '.SF Pro Display',
            ),
            content: setupAlertDialogForArea(),
          );
        });
  }

  showCustomDialogForBranchNames(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: CustomTextWidget(
              text: 'Select branch area',
              fontSize: 30.0,
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontFamily: '.SF Pro Display',
            ),
            content: setupAlertDialogForBranches(),
          );
        });
  }

  setupAlertDialogForCityPickUp() {
    // getRestaurantGeofences();
    _getRestaurantGeoFences?.data?.cities?.forEach((citiesElements) {
      citiesElements.restaurant_branches?.forEach((restaurantElements) {
        if (restaurantElements.delivery_type == 2 ||
            restaurantElements.delivery_type == 1) {
          if (listOfCityNamesPickUpToBeDisplayed
              .contains(citiesElements.name)) {
            print("Following name : ${citiesElements.name} already exists.");
          } else {
            listOfCityNamesPickUpToBeDisplayed.add(citiesElements.name);
            listOfCityNamesPickUpToBeDisplayedObject.add(citiesElements);
          }
        }
      });
    });

    filteredlistOfCityNamesPickUpToBeDisplayed.length = 0;

    listOfCityNamesPickUpToBeDisplayed.forEach((element) {
      String name = _languagFilterHelper.languageFilter(
          element, languageSelectedIndex.value);
      filteredlistOfCityNamesPickUpToBeDisplayed.add(name);
    });

    return Container(
      height: 500, // Change as per your requirement
      width: 500,
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  height: 40,
                  child: InputTextField(
                      controller: searchControllerPickUpCity,
                      height: 30.0,
                      hintText: 'Search your city',
                      hintTextColor: const Color(0xFFAFAFAF),
                      fillColor: Colors.white,
                      strokeColor: const Color(0xFFEAEAEA),
                      roundedCornerRadius: 30.0,
                      hintTextSize: 18.0,
                      textFontSize: 18.0,
                      onChangeFunction: (text) {
                        searchBarActiveTextCityPickUp.value = text;
                      }),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Obx(() {
            runFilterCityNamesPickUp(searchBarActiveTextCityPickUp.value);

            return Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                      height: 400,
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount:
                            filteredlistOfCityNamesPickUpToBeDisplayedIsSearchActive
                                .length,
                        itemBuilder: (BuildContext context, int index) {
                          return ListTile(
                            title: InkWell(
                              onTap: () {
                                cityNameSelected.value =
                                    filteredlistOfCityNamesPickUpToBeDisplayedIsSearchActive[
                                        index];

                                branchNameSelected.value = "";
                                listOfBranchNamesToBeDisplayed.length = 0;
                                pickUpCitySelectedIndex.value = index;
                                if (searchBarActiveTextCityPickUp.isEmpty) {
                                  _getRestaurantGeoFences
                                      ?.data?.cities?[index].restaurant_branches
                                      ?.forEach((element) {
                                    listOfBranchNamesToBeDisplayed
                                        .add(element.area_name);
                                    listOfBranchNamesToBeDisplayedObject
                                        .add(element.id);
                                  });

                                  searchBarActiveTextCityPickUp.value = "";
                                } else {
                                  _getRestaurantGeoFences?.data?.cities
                                      ?.forEach((element) {
                                    String text =
                                        _languagFilterHelper.languageFilter(
                                            element.name,
                                            languageSelectedIndex.value);

                                    if (text ==
                                        filteredlistOfCityNamesPickUpToBeDisplayedIsSearchActive[
                                            index]) {
                                      element.restaurant_branches
                                          ?.forEach((restaurant_branches) {
                                        listOfBranchNamesToBeDisplayed
                                            .add(restaurant_branches.area_name);
                                        listOfBranchNamesToBeDisplayedObject
                                            .add(restaurant_branches.areaId);
                                      });
                                    }
                                  });
                                }

                                Navigator.pop(context);
                                showCustomDialogForBranchNames(context);
                                searchControllerPickUpCity.text = "";
                              },
                              child: CustomTextWidget(
                                text:
                                    filteredlistOfCityNamesPickUpToBeDisplayedIsSearchActive[
                                        index],
                                fontSize: 16.0,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontFamily: '.SF Pro Display',
                              ),
                            ),
                          );
                        },
                      )),
                ),
              ],
            );
          }),
        ],
      ),
    );
  }

  showCustomDialogForCityPickUp(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: CustomTextWidget(
              text: 'Select your city',
              fontSize: 30.0,
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontFamily: '.SF Pro Display',
            ),
            content: setupAlertDialogForCityPickUp(),
          );
        });
  }

  setupAlertDialogForCityDineIn() {
    // getRestaurantGeofences();
    _getRestaurantGeoFences?.data?.cities?.forEach((citiesElements) {
      citiesElements.restaurant_branches?.forEach((restaurantElements) {
        if (restaurantElements.is_dinein == 1) {
          if (listOfCityNamesDineInToBeDisplayed
              .contains(citiesElements.name)) {
            print("Following name : ${citiesElements.name} already exists.");
          } else {
            listOfCityNamesDineInToBeDisplayed.add(citiesElements.name);
            listOfCityNamesDineInToBeDisplayedObject.add(citiesElements.name);
          }
        }
      });
    });
    filteredlistOfCityNamesDineInToBeDisplayed.length = 0;

    listOfCityNamesDineInToBeDisplayed.forEach((element) {
      String name = _languagFilterHelper.languageFilter(
          element, languageSelectedIndex.value);
      filteredlistOfCityNamesDineInToBeDisplayed.add(name);
    });
    return Container(
        height: 500, // Change as per your requirement
        width: 500, // Change as per your requirement
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: filteredlistOfCityNamesDineInToBeDisplayed.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: InkWell(
                onTap: () {
                  cityNameSelected.value =
                      filteredlistOfCityNamesDineInToBeDisplayed[index];

                  branchNameSelected.value = "";
                  listOfBranchNamesDineInToBeDisplayed.length = 0;
                  dineInCitySelectedIndex.value = index;
                  _getRestaurantGeoFences
                      ?.data?.cities?[index].restaurant_branches
                      ?.forEach((element) {
                    listOfBranchNamesDineInToBeDisplayed.add(element.area_name);
                    listOfBranchNamesDineInObjects.add(element);
                  });

                  Navigator.pop(context);
                  showCustomDialogForBranchNamesDineIn(context);
                },
                child: CustomTextWidget(
                  text: filteredlistOfCityNamesDineInToBeDisplayed[index],
                  fontSize: 16.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontFamily: '.SF Pro Display',
                ),
              ),
            );
          },
        ));
  }

  showCustomDialogForCityDineIn(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: CustomTextWidget(
              text: 'Select your city',
              fontSize: 30.0,
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontFamily: '.SF Pro Display',
            ),
            content: setupAlertDialogForCityDineIn(),
          );
        });
  }

  setupAlertDialogForBranchesDineIn() {
    //  getRestaurantGeofences();
    filteredlistOfBranchNamesDineInToBeDisplayed.length = 0;

    _getRestaurantGeoFences?.data?.cities?.forEach((citiesElements) {
      citiesElements.restaurant_branches?.forEach((branchNameElements) {
        if (branchNameElements.is_dinein == 1) {
          if (listOfBranchNamesDineInToBeDisplayed
              .contains(branchNameElements.area_name)) {
            print(
                'geoFences area name ${branchNameElements.area_name} already exists');
          } else {
            listOfBranchNamesDineInToBeDisplayed
                .add(branchNameElements.area_name);
            listOfBranchNamesDineInToBeDisplayedObject.add(branchNameElements);
          }
        }
      });
    });

    listOfBranchNamesDineInToBeDisplayed.forEach((element) {
      String name = _languagFilterHelper.languageFilter(
          element, languageSelectedIndex.value);
      filteredlistOfBranchNamesDineInToBeDisplayed.add(name);
    });

    return Container(
        height: 500, // Change as per your requirement
        width: 500, // Change as per your requirement
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: filteredlistOfBranchNamesDineInToBeDisplayed.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: InkWell(
                onTap: () {
                  branchNameSelected.value =
                      filteredlistOfBranchNamesDineInToBeDisplayed[index];
                  Navigator.pop(context);
                },
                child: CustomTextWidget(
                  text: filteredlistOfBranchNamesDineInToBeDisplayed[index],
                  fontSize: 16.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontFamily: '.SF Pro Display',
                ),
              ),
            );
          },
        ));
  }

  showCustomDialogForBranchNamesDineIn(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: CustomTextWidget(
              text: 'Select your branch',
              fontSize: 30.0,
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontFamily: '.SF Pro Display',
            ),
            content: setupAlertDialogForBranchesDineIn(),
          );
        });
  }

  showLanguageSelectionDialog(context) {
    CupertinoAlertDialog(
      title: Text("Delete File"),
      content: Text("Are you sure you want to delete the file?"),
      actions: [
        CupertinoDialogAction(
            child: Text("YES"),
            onPressed: () {
              Navigator.of(context).pop();
            }),
        CupertinoDialogAction(
            child: Text("NO"),
            onPressed: () {
              Navigator.of(context).pop();
            })
      ],
    );
  }
}
