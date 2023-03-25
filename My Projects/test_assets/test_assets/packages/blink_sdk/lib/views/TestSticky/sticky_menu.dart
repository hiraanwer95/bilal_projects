import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scrollable_list_tabview/scrollable_list_tabview.dart';

import '../../controllers/home_controller.dart';
import '../../controllers/welcome_controller.dart';
import '../../utils/BottomSheet/bottom_sheet_modal.dart';
import '../../utils/LanguageFilterHelper/language_filter.dart';
import '../Home/list_tab_local.dart';
import '../Home/scrollable_list_tab_local.dart';
import '../Home/scrollable_local.dart';

class StickyPage extends StatefulWidget {
  const StickyPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  StickyPageState createState() => StickyPageState();
}

class StickyPageState extends State<StickyPage> {
  late List<dynamic> listOfRestaurantPics;
  BottomSheetCustom _bottomSheetCustom = BottomSheetCustom();

  TextEditingController searchController = TextEditingController();
  final CarouselController _controller = CarouselController();

  HomeController _homeController = Get.isRegistered<HomeController>()
      ? Get.find()
      : Get.put(HomeController());
  GlobalKey popularScreenSection = GlobalKey();

  WelcomeController _welcomeController = Get.find();

  String deliveryTypesStringConcatenation = "";

  var listOfBanners = [];
  var listOfSections = [];
  var listOfSubSectionDish = [];
  var allSectionsIndex = 0;
  List<GlobalKey> listOfGlobalKeys = [];
  LanguagFilterHelper _languagFilterHelper = LanguagFilterHelper();

  late List<MyScrollableListTab> scrollable_list_tabview = [];
  getBannersInList() async {
    _homeController.isBannerReceived.value = false;
    listOfBanners = await _homeController.getSplashForBanners(
        54763, _welcomeController.restaurantBranchId.value);

    _homeController.isBannerReceived.value = true;
  }

  getSections() async {
    _homeController.isSectionReceived.value = false;
    listOfSections = await _homeController.getSections(
        54763, _welcomeController.restaurantBranchId.value);
    _homeController.isSectionReceived.value = true;

    print("${_welcomeController.restaurantBranchId.value}");
    print("total length of list of sections ${listOfSections.length}");

    listOfSections.forEach((element) {
      print("name${element.name}");

      if (!scrollable_list_tabview.contains(
        MyScrollableListTab(
            tab: MyListTab(
                label: element.name,
                icon: Icon(Icons.group),
                showIconOnList: false),
            body: ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: element.all_sub_section[0].dish.length,
              itemBuilder: (_, index) => ListTile(
                leading: Container(
                  height: MediaQuery.of(context).size.height * 0.05,
                  width: MediaQuery.of(context).size.height * 0.05,
                  decoration:
                      BoxDecoration(shape: BoxShape.circle, color: Colors.grey),
                  alignment: Alignment.center,
                  child: Text(index.toString()),
                ),
                title: Text(
                    'List element ${element.all_sub_section[0].dish.name}'),
              ),
            )),
      )) {
        scrollable_list_tabview.add(
          MyScrollableListTab(
              tab: MyListTab(
                  label: element.name,
                  icon: Icon(Icons.group),
                  showIconOnList: false),
              body: ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: element.all_sub_section[0].dish.length,
                itemBuilder: (_, index) => ListTile(
                  leading: Container(
                    height: MediaQuery.of(context).size.height * 0.05,
                    width: MediaQuery.of(context).size.height * 0.05,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.grey),
                    alignment: Alignment.center,
                    child: Text(index.toString()),
                  ),
                  title: Text(
                      'List element ${element.all_sub_section[0].dish[index].name}'),
                ),
              )),
        );
      }
    });

    setState(() {});

    _homeController.categoriesIndex.value = 0;
    _homeController.selectedSection.value = listOfSections[0];
  }

  @override
  void initState() {
    listOfRestaurantPics = [
      'https://em-cdn.eatmubarak.pk/flutter/restaurant.png',
      'https://em-cdn.eatmubarak.pk/flutter/restaurant.png',
      'https://em-cdn.eatmubarak.pk/flutter/restaurant.png',
      'https://em-cdn.eatmubarak.pk/flutter/restaurant.png',
    ];
    getSections();
    getScrollableList();

    super.initState();
  }

  getScrollableList() {
    listOfSections.forEach((element) {
      print("Element Names : ${element}");
     
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      // body: MyScrollableListTabView(
      //     tabHeight: 48,
      //     bodyAnimationDuration: const Duration(milliseconds: 400),
      //     tabAnimationCurve: Curves.easeIn,
      //     tabAnimationDuration: const Duration(milliseconds: 100),
      //     tabs: scrollable_list_tabview

      //     ),
    );
  }
}
