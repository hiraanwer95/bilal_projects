// import 'package:blink_sdk/controllers/home_controller.dart';
// import 'package:blink_sdk/controllers/welcome_controller.dart';
// import 'package:blink_sdk/utils/LanguageFilterHelper/language_filter.dart';
// import 'package:get/get.dart';

// class ExampleData {
//   // ExampleData._internal();

//   final HomeController _homeController = Get.isRegistered<HomeController>()
//       ? Get.find()
//       : Get.put(HomeController());

//   final WelcomeController _welcomeController = Get.find();
//   List<Category> listOfCategories = [];

//   static List<String> images = [
//     "https://d1sag4ddilekf6.cloudfront.net/compressed/items/6-CYXCTZAEEEECJE-CZAYA3CERF5ETJ/photo/b44c9b4be5044923b3f5b8f8f6e7e55b_1581506444759847068.jpg",
//     "https://d1sag4ddilekf6.cloudfront.net/compressed/items/6-CY21EXXWSEV2E2-CZKKV8MFGPUTMA/photo/321adfd29ded4d9eae3488848ecfbb05_1592997965388846905.jpg",
//     "https://d1sag4ddilekf6.cloudfront.net/compressed/items/6-CY4ETPUKCCCYTX-CZAYA3BKLEN2KE/photo/8d2d5939ec5a42269a0d8ec3c0a97e44_1581506429557055566.jpg",
//     "https://d1sag4ddilekf6.cloudfront.net/item/6-CY21EXXWUFW1CN-CZAYA25ZSEUJV6/photos/c3f51cd36f2344e28abae3a91b94ef9b_1581506376835073709.jpg",
//     "https://d1sag4ddilekf6.cloudfront.net/compressed/items/6-CZADR6NJMB3UL6-CZADR6UYL65GSE/photo/d4e13ca45a4747b78364dcf643095124_1580377235610503360.jpg",
//   ];

//   late PageData data;

//   LanguagFilterHelper _languagFilterHelper = LanguagFilterHelper();

//   ExampleData() {}

//   getListOfSectionTitles() {
//     _homeController.getListOfSections.forEach((element) {
//       listOfCategories.add(Category(
//         title: _languagFilterHelper.languageFilter(
//             element["name"], _welcomeController.languageSelectedIndex.value),
//         // subtitle: "Subtitle of the Category 1",
//         isHotSale: true,
//         foods: List.generate(
//           element["all_sub_section"][0].dish.length,
//           (index) {

//             return Food(
//               description: element["all_sub_section"][0].dish[index].desc,
//               name: _languagFilterHelper.languageFilter(
//                   "${element["all_sub_section"][0].dish[index].name}",
//                   _welcomeController.languageSelectedIndex.value),
//               price: "1.33",
//               comparePrice: element["all_sub_section"][0].dish[index].price ,
//               imageUrl: element["all_sub_section"][0].dish[index].img_url ?? images[index % images.length],
//               isHotSale: false,
//             );
//           },
//         ),
//       ));
//     });

//     data = PageData(
//       title: "Title of the Page)\nCAN Caffee",
//       deliverTime: "20 minutes",
//       bannerText: "Hello this is banner text boys 4.5\$ yo",
//       backgroundUrl:
//           "https://www.browncoffee.com.kh/uploads/ximg/item_menus/20210515062936c2531deff29845101d3f6f5691943c98.jpg",
//       rate: 4.2,
//       rateQuantity: 331,
//       optionalCard: OptionalCard(
//         title: "30% Discount",
//         subtitle: "On the entire menu",
//       ),
//       categories: listOfCategories,
//     );
//   }
// }

// class PageData {
//   String title;
//   String deliverTime;
//   String bannerText;
//   String backgroundUrl;

//   double rate;
//   int rateQuantity;

//   OptionalCard optionalCard;
//   List<Category> categories;

//   PageData({
//     required this.title,
//     required this.deliverTime,
//     required this.bannerText,
//     required this.backgroundUrl,
//     required this.rate,
//     required this.rateQuantity,
//     required this.optionalCard,
//     required this.categories,
//   });
// }

// class OptionalCard {
//   String title;
//   String subtitle;
//   OptionalCard({
//     required this.title,
//     required this.subtitle,
//   });
// }

// class Category {
//   String title;
//   //String? subtitle;
//   List<Food> foods;
//   bool isHotSale;

//   Category({
//     required this.title,
//     //required this.subtitle,
//     required this.foods,
//     required this.isHotSale,
//   });
// }

// class Food {
//   String name;
//   String price;
//   String comparePrice;
//   String imageUrl;
//   bool isHotSale;
//   String description;

//   Food({
//     required this.name,
//     required this.price,
//     required this.comparePrice,
//     required this.imageUrl,
//     required this.isHotSale,
//     required this.description,
//   });
// }
//import 'dart:html';

import 'package:blink_sdk/utils/LanguageFilterHelper/language_filter.dart';
import 'package:get/get.dart';

import '../../../controllers/home_controller.dart';
import '../../../controllers/welcome_controller.dart';

class ExampleData {
  // ExampleData._internal();

  static List<String> images = [
    "https://d1sag4ddilekf6.cloudfront.net/compressed/items/6-CYXCTZAEEEECJE-CZAYA3CERF5ETJ/photo/b44c9b4be5044923b3f5b8f8f6e7e55b_1581506444759847068.jpg",
    "https://d1sag4ddilekf6.cloudfront.net/compressed/items/6-CY21EXXWSEV2E2-CZKKV8MFGPUTMA/photo/321adfd29ded4d9eae3488848ecfbb05_1592997965388846905.jpg",
    "https://d1sag4ddilekf6.cloudfront.net/compressed/items/6-CY4ETPUKCCCYTX-CZAYA3BKLEN2KE/photo/8d2d5939ec5a42269a0d8ec3c0a97e44_1581506429557055566.jpg",
    "https://d1sag4ddilekf6.cloudfront.net/item/6-CY21EXXWUFW1CN-CZAYA25ZSEUJV6/photos/c3f51cd36f2344e28abae3a91b94ef9b_1581506376835073709.jpg",
    "https://d1sag4ddilekf6.cloudfront.net/compressed/items/6-CZADR6NJMB3UL6-CZADR6UYL65GSE/photo/d4e13ca45a4747b78364dcf643095124_1580377235610503360.jpg",
  ];

  final HomeController _homeController = Get.isRegistered<HomeController>()
      ? Get.find()
      : Get.put(HomeController());

  // List<Category> listOfCategories = [];

  LanguagFilterHelper _languagFilterHelper = LanguagFilterHelper();

  late PageData data = PageData(
    title: "Title of the Page)\nCAN Caffee",
    deliverTime: "20 minutes",
    bannerText: "Hello this is banner text boys 4.5\$ yo",
    backgroundUrl:
        "https://www.browncoffee.com.kh/uploads/ximg/item_menus/20210515062936c2531deff29845101d3f6f5691943c98.jpg",
    rate: 4.2,
    rateQuantity: 331,
    optionalCard: OptionalCard(
      title: "30% Discount",
      subtitle: "On the entire menu",
    ),
    categories: [],
  );

  final WelcomeController _welcomeController = Get.find();

  getListOfSectionTitles() async {
    _homeController.listOfCategories.length = 0;
    _homeController.listOfSections.forEach((element) {
      if (element.all_sub_section[0].dish.length > 0) {
        _homeController.listOfCategories.add(Category(
          title: _languagFilterHelper.languageFilter(
              element.name, _welcomeController.languageSelectedIndex.value),
          // subtitle: "Subtitle of the Category 1",
          isHotSale: true,
          foods: List.generate(
            element.all_sub_section[0].dish.length,
            (index) {
              // if (element.all_sub_section[0].dish[0].dish_options[0]
              //         .dish_sub_options.length >
              //     0) {
              //   print(
              //       "length of dish sub options. ${element.all_sub_section[0].dish[0].dish_options[0].dish_sub_options.length}");
              // } else {
              //   print(
              //       "0 are dish sub options. ${element.all_sub_section[0].dish[0].dish_options[0].dish_sub_options.length}");
              // }

              return Food(
                // dishOptions:
                //     element.all_sub_section[0].dish[0].dish_options.length > 0
                //         ? element.all_sub_section[0].dish[0].dish_options
                //         : element
                //             .all_sub_section[0].dish[0].dish_options.length,
                dishOptions:  element.all_sub_section[0].dish[0],
                description: element.all_sub_section[0].dish[index].desc,
                name: _languagFilterHelper.languageFilter(
                    "${element.all_sub_section[0].dish[index].name}",
                    _welcomeController.languageSelectedIndex.value),
                price: element.all_sub_section[0].dish[index].price,
                comparePrice: element.all_sub_section[0].dish[index].price,
                imageUrl: element.all_sub_section[0].dish[index].img_url ??
                    images[index % images.length],
                isHotSale: false,
                isAddOnAvailable: false,


              );
            },
          ),
        ));
      }
    });
    print(
        "list of sections for restaurant branch id ${_welcomeController.restaurantBranchId.value} :: ${_homeController.listOfSections.length}");

    // data = PageData(
    //   title: "Title of the Page)\nCAN Caffee",
    //   deliverTime: "20 minutes",
    //   bannerText: "Hello this is banner text boys 4.5\$ yo",
    //   backgroundUrl:
    //       "https://www.browncoffee.com.kh/uploads/ximg/item_menus/20210515062936c2531deff29845101d3f6f5691943c98.jpg",
    //   rate: 4.2,
    //   rateQuantity: 331,
    //   optionalCard: OptionalCard(
    //     title: "30% Discount",
    //     subtitle: "On the entire menu",
    //   ),
    //   categories: listOfCategories,
    // );
  }

  // static Category category1 = Category(
  //   title: "Title 1 of the Category 1",
  //   subtitle: "Subtitle of the Category 1",
  //   isHotSale: true,
  //   foods: List.generate(
  //     3,
  //     (index) {
  //       return Food(
  //         name: "Food Name for Category 1 :${index}",
  //         price: "1.33",
  //         comparePrice: "\$1.90",
  //         imageUrl: images[index % images.length],
  //         isHotSale: false,
  //       );
  //     },
  //   ),
  // );

  // static Category category2 = Category(
  //   title: "Title 2 of the Category 2",
  //   subtitle: "Subtitle of the Category 2",
  //   isHotSale: false,
  //   foods: List.generate(
  //     7,
  //     (index) {
  //       return Food(
  //         name: "Food Name for Category 2 :${index}",
  //         price: "1.33",
  //         comparePrice: "\$1.90",
  //         imageUrl: images[index % images.length],
  //         isHotSale: index == 2 ? true : false,
  //       );
  //     },
  //   ),
  // );

  // static Category category3 = Category(
  //   title: "Title 3 of the Category 3",
  //   subtitle: "Subtitle 3 of the Category 3",
  //   isHotSale: false,
  //   foods: List.generate(
  //     6,
  //     (index) {
  //       return Food(
  //         name: "Food Name for Category 3 :${index}",
  //         price: "1.33",
  //         comparePrice: "\$1.90",
  //         imageUrl: images[index % images.length],
  //         isHotSale: false,
  //       );
  //     },
  //   ),
  // );

  // static Category category4 = Category(
  //   title: "Title 4 of the Category 4",
  //   subtitle: "Subtitle 4 of the Category 4",
  //   isHotSale: false,
  //   foods: List.generate(
  //     5,
  //     (index) {
  //       return Food(
  //         name: "Food Name for Category 5 :${index}",
  //         price: "1.33",
  //         comparePrice: "\$1.90",
  //         imageUrl: images[index % images.length],
  //         isHotSale: index == 3 ? true : false,
  //       );
  //     },
  //   ),
  // );

  // static Category category5 = Category(
  //   title: "Title 5 of the Category 4",
  //   subtitle: "Subtitle 4 of the Category 6",
  //   isHotSale: false,
  //   foods: List.generate(
  //     8,
  //     (index) {
  //       return Food(
  //         name: "Food Name for Category 5 :${index}",
  //         price: "1.33",
  //         comparePrice: "\$1.90",
  //         imageUrl: images[index % images.length],
  //         isHotSale: index == 3 ? true : false,
  //       );
  //     },
  //   ),
  // );
  // static Category category6 = Category(
  //   title: "Title 6 of the Category 4",
  //   subtitle: "Subtitle 4 of the Category 6",
  //   isHotSale: false,
  //   foods: List.generate(
  //     2,
  //     (index) {
  //       return Food(
  //         name: "Food Name for Category 4 :${index}",
  //         price: "1.33",
  //         comparePrice: "\$1.90",
  //         imageUrl: images[index % images.length],
  //         isHotSale: index == 3 ? true : false,
  //       );
  //     },
  //   ),
  // );

  // static Category category7 = Category(
  //   title: "Title 7 of the Category 4",
  //   subtitle: "Subtitle 4 of the Category 4",
  //   isHotSale: false,
  //   foods: List.generate(
  //     7,
  //     (index) {
  //       return Food(
  //         name: "Food Name for Category 4 :${index}",
  //         price: "1.33",
  //         comparePrice: "\$1.90",
  //         imageUrl: images[index % images.length],
  //         isHotSale: index == 3 ? true : false,
  //       );
  //     },
  //   ),
  // );
}

class PageData {
  String title;
  String deliverTime;
  String bannerText;
  String backgroundUrl;

  double rate;
  int rateQuantity;

  OptionalCard optionalCard;
  List<Category> categories;

  PageData({
    required this.title,
    required this.deliverTime,
    required this.bannerText,
    required this.backgroundUrl,
    required this.rate,
    required this.rateQuantity,
    required this.optionalCard,
    required this.categories,
  });
}

class OptionalCard {
  String title;
  String subtitle;
  OptionalCard({
    required this.title,
    required this.subtitle,
  });
}

class Category {
  String title;
//  String? subtitle;
  List<Food> foods;
  bool isHotSale;

  Category({
    required this.title,
    // required this.subtitle,
    required this.foods,
    required this.isHotSale,
  });
}

class Food {
  String name;
  String price;
  String comparePrice;
  String imageUrl;
  bool isHotSale;
  String description;
  var dishOptions;
  var isAddOnAvailable;

  Food({
    required this.isAddOnAvailable,
    required this.dishOptions,
    required this.name,
    required this.price,
    required this.comparePrice,
    required this.imageUrl,
    required this.isHotSale,
    required this.description,
  });
}
