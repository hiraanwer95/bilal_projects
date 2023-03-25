// import 'package:blink_sdk/core/models/NetworkModels/HomeScreen/GetStoreMenu/all_section.dart';
// import 'package:carousel_slider/carousel_controller.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:scroll_to_index/scroll_to_index.dart';

// import 'package:rect_getter/rect_getter.dart';

// import '../../../controllers/home_controller.dart';
// import '../../../controllers/welcome_controller.dart';
// import '../../../utils/BottomSheet/bottom_sheet_modal.dart';
// import '../../../utils/LanguageFilterHelper/language_filter.dart';
// import 'colors.dart';
// import 'example_data.dart';
// import 'widgets/category_section.dart';
// import 'widgets/fappbar.dart';

// class NewHomeScreen extends StatefulWidget {
//   @override
//   _HomeScreenState createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<NewHomeScreen>
//     with TickerProviderStateMixin {
//   bool isCollapsed = false;
//   late AutoScrollController scrollController;
//   late TabController tabController;

//   final double expandedHeight = 300.0;
//   //final PageData data = ExampleData.data;
//   final double collapsedHeight = kToolbarHeight;
//   final ExampleData _exampleData = ExampleData();

//   final listViewKey = RectGetter.createGlobalKey();
//   Map<int, dynamic> itemKeys = {};

//   List<dynamic> listOfRestaurantPics = [];
//   BottomSheetCustom _bottomSheetCustom = BottomSheetCustom();

//   TextEditingController searchController = TextEditingController();
//   final CarouselController _controller = CarouselController();

//   HomeController _homeController = Get.isRegistered<HomeController>()
//       ? Get.find()
//       : Get.put(HomeController());
//   GlobalKey popularScreenSection = GlobalKey();

//   WelcomeController _welcomeController = Get.isRegistered<WelcomeController>()
//       ? Get.find()
//       : Get.put(WelcomeController());

//   String deliveryTypesStringConcatenation = "";

//   var listOfBanners = [];
//   var listOfSections = [];
//   var listOfSubSectionDish = [];
//   var allSectionsIndex = 0;
//   List<GlobalKey> listOfGlobalKeys = [];
//   LanguagFilterHelper _languagFilterHelper = LanguagFilterHelper();
//   // prevent animate when press on tab bar
//   bool pauseRectGetterIndex = false;
//   getBannersInList() async {
//     _homeController.isBannerReceived.value = false;
//     listOfBanners = await _homeController.getSplashForBanners(
//         54763, _welcomeController.restaurantBranchId.value);

//     _homeController.isBannerReceived.value = true;
//   }

//   getSections() async {
//     _homeController.isSectionReceived.value = false;
//     listOfSections = await _homeController.getSections(
//         54763, _welcomeController.restaurantBranchId.value);

//     print("${_welcomeController.restaurantBranchId.value}");
//     print("total length of list of sections ${listOfSections.length}");

//     listOfSections.forEach((element) {
//       final map = {
//         "name": "${element.name}",
//         "all_sub_section": element.all_sub_section
//       };
//       _homeController.getListOfSections.add(map);
//     });

//     _homeController.getListOfSections.forEach((element) {
//       print("element ${element["all_sub_section"][0].name}");
//     });

//     _homeController.isSectionReceived.value = true;

//     _homeController.categoriesIndex.value = 0;
//     _homeController.selectedSection.value = listOfSections[0];
//   }

//   @override
//   void initState() {
//     listOfRestaurantPics = [
//       'https://em-cdn.eatmubarak.pk/flutter/restaurant.png',
//       'https://em-cdn.eatmubarak.pk/flutter/restaurant.png',
//       'https://em-cdn.eatmubarak.pk/flutter/restaurant.png',
//       'https://em-cdn.eatmubarak.pk/flutter/restaurant.png',
//     ];
//     tabController = TabController(
//         length: _homeController.getListOfSections.length, vsync: this);

//     scrollController = AutoScrollController();
//     getBannersInList();
//     getSections();
//     _welcomeController.dropDownBckBtnVisibile();
//     super.initState();
//   }

//   @override
//   void dispose() {
//     scrollController.dispose();
//     tabController.dispose();
//     super.dispose();
//   }

//   List<int> getVisibleItemsIndex() {
//     Rect? rect = RectGetter.getRectFromKey(listViewKey);
//     List<int> items = [];
//     if (rect == null) return items;
//     itemKeys.forEach((index, key) {
//       Rect? itemRect = RectGetter.getRectFromKey(key);
//       if (itemRect == null) return;
//       if (itemRect.top > rect.bottom) return;
//       if (itemRect.bottom < rect.top) return;
//       items.add(index);
//     });
//     return items;
//   }

//   void onCollapsed(bool value) {
//     if (this.isCollapsed == value) return;
//     setState(() => this.isCollapsed = value);
//   }

//   bool onScrollNotification(ScrollNotification notification) {
//     if (pauseRectGetterIndex) return true;
//     int lastTabIndex = tabController.length - 1;
//     List<int> visibleItems = getVisibleItemsIndex();

//     bool reachLastTabIndex = visibleItems.isNotEmpty &&
//         visibleItems.length <= 2 &&
//         visibleItems.last == lastTabIndex;
//     if (reachLastTabIndex) {
//       tabController.animateTo(lastTabIndex);
//     } else if (visibleItems.isNotEmpty) {
//       int sumIndex = visibleItems.reduce((value, element) => value + element);
//       int middleIndex = sumIndex ~/ visibleItems.length;
//       if (tabController.index != middleIndex)
//         tabController.animateTo(middleIndex);
//     }
//     return false;
//   }

//   void animateAndScrollTo(int index) {
//     pauseRectGetterIndex = true;
//     tabController.animateTo(index);
//     scrollController
//         .scrollToIndex(index, preferPosition: AutoScrollPosition.begin)
//         .then((value) => pauseRectGetterIndex = false);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       extendBodyBehindAppBar: true,
//       backgroundColor: scheme.background,
//       body: Obx(() {
//         _homeController.isSectionReceived.value;

//         tabController = TabController(
//             length: _homeController.getListOfSections.length, vsync: this);

//         _exampleData.getListOfSectionTitles();
//         return RectGetter(
//           key: listViewKey,
//           child: NotificationListener<ScrollNotification>(
//             child: buildSliverScrollView(),
//             onNotification: onScrollNotification,
//           ),
//         );
//       }),
//     );
//   }

//   Widget buildSliverScrollView() {
//     return CustomScrollView(
//       controller: scrollController,
//       slivers: [
//         buildAppBar(),
//         buildBody(),
//       ],
//     );
//   }

//   SliverAppBar buildAppBar() {
//     return FAppBar(
//       data: _exampleData.data,
//       context: context,
//       scrollController: scrollController,
//       expandedHeight: expandedHeight,
//       collapsedHeight: collapsedHeight,
//       isCollapsed: isCollapsed,
//       onCollapsed: onCollapsed,
//       tabController: tabController,
//       onTap: (index) => animateAndScrollTo(index),
//     );
//   }

//   SliverList buildBody() {
//     _exampleData.data.categories.length =
//         _homeController.getListOfSections.length;
//     return SliverList(
//       delegate: SliverChildBuilderDelegate(
//         (context, index) => buildCategoryItem(index),
//         childCount: _exampleData.data.categories.length,
//       ),
//     );
//   }

//   Widget buildCategoryItem(int index) {
//     itemKeys[index] = RectGetter.createGlobalKey();

//     Category category = _exampleData.data.categories[index];
//     return RectGetter(
//       key: itemKeys[index],
//       child: AutoScrollTag(
//         key: ValueKey(index),
//         index: index,
//         controller: scrollController,
//         child: CategorySection(
//           category: category,
//         ),
//       ),
//     );
//   }
// }

import 'package:blink_sdk/controllers/home_controller.dart';
import 'package:blink_sdk/controllers/welcome_controller.dart';
import 'package:blink_sdk/views/Home/NewHomeDesign/colors.dart';
import 'package:blink_sdk/views/Home/NewHomeDesign/example_data.dart';
import 'package:blink_sdk/views/Home/NewHomeDesign/widgets/category_section.dart';
import 'package:blink_sdk/views/Home/NewHomeDesign/widgets/fappbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:rect_getter/rect_getter.dart';
import 'package:flutter/cupertino.dart';
import 'package:scrolls_to_top/scrolls_to_top.dart';
import 'package:shimmer/shimmer.dart';
import 'package:flutter_colorful_tab/flutter_colorful_tab.dart';

import '../../../routes/app_routes.dart';
import '../../../theme/icons.dart';
import '../../../utils/CustomWidgets/BottomNavigationBar/bottom_navigation_bar.dart';

class NewHomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<NewHomeScreen>
    with SingleTickerProviderStateMixin {
  bool isCollapsed = false;
  late AutoScrollController scrollController;
  late TabController tabController;

  final PageData data = ExampleData().data;
  final double collapsedHeight = kToolbarHeight;

  ExampleData _exampleData = ExampleData();

  final listViewKey = RectGetter.createGlobalKey();
  Map<int, dynamic> itemKeys = {};

  // prevent animate when press on tab bar
  bool pauseRectGetterIndex = false;

  bool isTabItemTapped = false;
  double x = 0.0;
  double y = 0.0;
  HomeController _homeController = Get.isRegistered<HomeController>()
      ? Get.find()
      : Get.put(HomeController());

  WelcomeController _welcomeController = Get.isRegistered<WelcomeController>()
      ? Get.find()
      : Get.put(WelcomeController());
  void _incrementDown(PointerEvent details) {
    _updateLocation(details);
    // setState(() {
    //   _downCounter++;
    // });
  }

  void _incrementUp(PointerEvent details) {
    _updateLocation(details);
    // setState(() {
    //   _upCounter++;
    // });
  }

  void _updateLocation(PointerEvent details) {
    // setState(() {
    //   x = details.position.dx;
    //   y = details.position.dy;
    // });

    _homeController.isTabBarItemTapped.value = true;
  }

  getSplashForBanners() async {
    _homeController.isBannerReceived.value = false;
    await _homeController.getSplashForBanners(
      54763,
      _welcomeController.restaurantBranchId.value,
    );
    _homeController.isBannerReceived.value = true;
  }

  getSections() async {
    _homeController.isSectionReceived.value = false;
    await _homeController.getSections(
      54763,
      _welcomeController.restaurantBranchId.value,
    );

    _exampleData.getListOfSectionTitles();

    _homeController.isSectionReceived.value = true;
  }

   getRestaurantBranches() async {
    await _homeController.getRestaurantBranches(
      54763,
      _welcomeController.restaurantBranchId.value,
    );
  }

  @override
  void initState() {

    getSplashForBanners();
    getSections();
    getRestaurantBranches();

    scrollController = AutoScrollController();
    tabController = TabController(
        length: _homeController.listOfSections.length, vsync: this);

    //getSections();

    super.initState();
  }

  @override
  void dispose() {
    scrollController.dispose();
    tabController.dispose();
    super.dispose();
  }

  List<int> getVisibleItemsIndex() {
    Rect? rect = RectGetter.getRectFromKey(listViewKey);
    List<int> items = [];
    if (rect == null) return items;
    itemKeys.forEach((index, key) {
      Rect? itemRect = RectGetter.getRectFromKey(key);
      if (itemRect == null) return;
      if (itemRect.top > rect.bottom) return;
      if (itemRect.bottom < rect.top) return;
      items.add(index);
    });
    return items;
  }

  void onCollapsed(bool value) {
    if (this.isCollapsed == value) return;
    setState(() => this.isCollapsed = value);
  }

  bool onScrollNotification(ScrollNotification notification) {
    if (pauseRectGetterIndex) return true;
    int lastTabIndex = tabController.length - 1;
    List<int> visibleItems = getVisibleItemsIndex();
    int index = 0;

    bool reachLastTabIndex = visibleItems.isNotEmpty &&
        visibleItems.length <= 2 &&
        visibleItems.last == lastTabIndex;
    if (reachLastTabIndex) {
      tabController.animateTo(lastTabIndex);
      index = lastTabIndex;
    } else if (visibleItems.isNotEmpty) {
      int sumIndex = visibleItems.reduce((value, element) => value + element);
      int middleIndex = sumIndex ~/ visibleItems.length;
      index = middleIndex;

      if (tabController.index != middleIndex) {
        tabController.animateTo(middleIndex);
        index = middleIndex;
      }
    }

    _homeController.tabIndex.value = index;

    return false;
  }

  bool onScrollNotificationOnTap(ScrollNotification notification) {
    //   _homeController.isTabBarItemTapped.value = true;

    return false;
  }

  void animateAndScrollTo(int index) {
    pauseRectGetterIndex = true;
    tabController.animateTo(index);
    scrollController
        .scrollToIndex(index, preferPosition: AutoScrollPosition.begin)
        .then((value) => pauseRectGetterIndex = false);

    _homeController.tabIndex.value = index;

    print("current tab index ${_homeController.tabIndex.value}");

    // _homeController.isTabBarItemTapped.value = true;
  }

  Future<void> _onScrollsToTop(ScrollsToTopEvent event) async {
    //TODO: Your code

    print("scroll to top.. ");
    scrollController.animateTo(
      scrollController.initialScrollOffset,
      duration: Duration(milliseconds: 1000),
      curve: Curves.ease,
    );
  }

  double expandedHeight = 0.0;
  Future<bool> _onWillPop() async {
    return true; //<-- SEE HERE
  }

  @override
  Widget build(BuildContext context) {
    expandedHeight = 300;

    return WillPopScope(
      onWillPop: _onWillPop,
      child: ScrollsToTop(
        onScrollsToTop: _onScrollsToTop,
        child: Scaffold(
            extendBodyBehindAppBar: true,
            backgroundColor: scheme.background,
            bottomNavigationBar: BottomNav(),
            extendBody: true,
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked,
            floatingActionButton: Container(
              width: 72,
              height: 72,
              child: FloatingActionButton(
                onPressed: () => Get.toNamed(AppRoutes.MY_CART),
                child: Image.asset(
                  Images.Cart,
                  width: 55,
                  height: 55,
                  fit: BoxFit.contain,
                ),
                backgroundColor: Color(0xFFFBC000),
              ),
            ),
            body: Obx(() {
              _homeController.isSectionReceived.value;

              return Stack(
                children: [
                  RectGetter(
                    key: listViewKey,
                    child: NotificationListener<ScrollNotification>(
                      child: buildSliverScrollView(),
                      onNotification: _homeController.isTabBarItemTapped.value
                          ? onScrollNotification
                          : onScrollNotificationOnTap,
                    ),
                  ),
                  _homeController.isSectionReceived.value
                      ? Container()
                      : const Center(
                          child: CupertinoActivityIndicator(
                              animating: true, radius: 20))
                ],
              );

              // return    RectGetter(
              //   key: listViewKey,
              //   child: NotificationListener<ScrollNotification>(
              //     child: buildSliverScrollView(),
              //     onNotification: _homeController.isTabBarItemTapped.value
              //         ? onScrollNotification
              //         : onScrollNotificationOnTap,
              //   ),
              // );
            })),
      ),
    );
  }

  Widget buildSliverScrollView() {
    return Listener(
        onPointerMove: _updateLocation,
        child: Obx(
          () {
            _homeController.isSectionReceived.value;
            return AbsorbPointer(
                absorbing:
                    _homeController.isSectionReceived.value ? false : true,
                child: CustomScrollView(
                  controller: scrollController,
                  slivers: [
                    buildAppBar(),

                    buildBody(),

                    // SliverToBoxAdapter(
                    //   child: Stack(
                    //     children: [
                    //       buildBody(),
                    //       _homeController.isSectionReceived.value
                    //           ? const CupertinoActivityIndicator(animating: true, radius: 30)
                    //           : Container(),
                    //     ],
                    //   ),
                    // )
                  ],
                ));

            // return    RectGetter(
            //   key: listViewKey,
            //   child: NotificationListener<ScrollNotification>(
            //     child: buildSliverScrollView(),
            //     onNotification: _homeController.isTabBarItemTapped.value
            //         ? onScrollNotification
            //         : onScrollNotificationOnTap,
            //   ),
            // );
          },
        ));
  }

  SliverAppBar buildAppBar() {
    return FAppBar(
        // data: data,
        context: context,
        scrollController: scrollController,
        expandedHeight: expandedHeight,
        collapsedHeight: collapsedHeight,
        isCollapsed: isCollapsed,
        onCollapsed: onCollapsed,
        tabController: tabController,
        homeController: _homeController,
        onTap: (index) {
          _homeController.isTabBarItemTapped.value = false;

          // _homeController.temporaryScrollerOffset
          animateAndScrollTo(index);

          //          _homeController.isTabBarItemTapped.value = true;
        });
  }

  SliverList buildBody() {
    // print("list inddexx :  ${_homeController.listOfCategories.length}");

    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return buildCategoryItem(index);
        },
        childCount: _homeController.listOfCategories.length,
      ),
    );
  }

  Widget buildCategoryItem(int index) {
    return Obx(() {
      _homeController.isSectionReceived.value;
      itemKeys[index] = RectGetter.createGlobalKey();
      //Category category = data.categories[index];
      Category category = _homeController.listOfCategories[index];

      return RectGetter(
        key: itemKeys[index],
        child: AutoScrollTag(
          key: ValueKey(index),
          index: index,
          controller: scrollController,
          child: CategorySection(
            category: category,
            index: index,
            lastIndex: _homeController.listOfCategories.length,
            welcomeController: _welcomeController,
            homeController:_homeController,
          ),
        ),
      );
    });
  }
}
