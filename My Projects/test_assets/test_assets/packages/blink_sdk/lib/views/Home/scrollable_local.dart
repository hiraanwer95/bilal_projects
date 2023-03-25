// import 'dart:async';
// import 'dart:math';

// import 'package:blink_sdk/utils/CustomWidgets/CustomText/custom_text.dart';
// import 'package:blink_sdk/views/Home/my_default_text_style_local.dart';
// import 'package:blink_sdk/views/Home/scrollable_list_tab_local.dart';
// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
// import 'package:flutter/scheduler.dart';
// import 'package:get/get.dart';
// import 'package:scrollable_list_tabview/model/scrollable_list_tab.dart';
// import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
// import 'package:transparent_image/transparent_image.dart';

// import '../../controllers/home_controller.dart';
// import '../../theme/colors.dart';
// import '../../theme/icons.dart';
// // import 'model/scrollable_list_tab.dart';

// // export 'model/list_tab.dart';
// // export 'model/scrollable_list_tab.dart';

// const Duration _kScrollDuration = const Duration(milliseconds: 150);
// const EdgeInsetsGeometry _kTabMargin =
//     const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0);

// const SizedBox _kSizedBoxW8 = const SizedBox(width: 7.0);

// class MyScrollableListTabView extends StatefulWidget {
//   /// Create a new [ScrollableListTabView]
//   MyScrollableListTabView(
//       {Key? key,
//       this.listOfRestaurantPics,
//       this.controller,
//       this.listOfBanners,
//       required this.homeController,
//       required this.tabs,
//       this.tabHeight = kToolbarHeight,
//       this.tabAnimationDuration = _kScrollDuration,
//       this.bodyAnimationDuration = _kScrollDuration,
//       this.tabAnimationCurve = Curves.decelerate,
//       this.bodyAnimationCurve = Curves.decelerate})
//       : assert(tabAnimationDuration != null, bodyAnimationDuration != null),
//         assert(tabAnimationCurve != null, bodyAnimationCurve != null),
//         assert(tabHeight != null),
//         assert(tabs != null),
//         super(key: key);

//   /// List of tabs to be rendered.
//   final List<MyScrollableListTab> tabs;

//   /// Height of the tab at the top of the view.
//   final double tabHeight;

//   /// Duration of tab change animation.
//   final Duration tabAnimationDuration;

//   /// Duration of inner scroll view animation.
//   final Duration bodyAnimationDuration;

//   /// Animation curve used when animating tab change.
//   final Curve tabAnimationCurve;

//   /// Animation curve used when changing index of inner [ScrollView]s.
//   final Curve bodyAnimationCurve;

//   HomeController homeController;

//   final listOfBanners;

//   final listOfRestaurantPics;

//   final controller;

//   @override
//   _ScrollableListTabViewState createState() => _ScrollableListTabViewState();
// }

// class _ScrollableListTabViewState extends State<MyScrollableListTabView> {
//   final ValueNotifier<int> _index = ValueNotifier<int>(0);

//   final ItemScrollController _bodyScrollController = ItemScrollController();
//   final ItemPositionsListener _bodyPositionsListener =
//       ItemPositionsListener.create();
//   final ItemScrollController _tabScrollController = ItemScrollController();

//   final ScrollController _scrollController = ScrollController();
//   static const _extraScrollSpeed = 80; // your "extra" scroll speed

//   int _downCounter = 0;
//   int _upCounter = 0;
//   double x = 0.0;
//   double y = 0.0;

//   bool runChildScroller = false;

//   void _incrementDown(PointerEvent details) {
//     _updateLocation(details);
//     setState(() {
//       _downCounter++;
//     });
//   }

//   void _incrementUp(PointerEvent details) {
//     _updateLocation(details);
//     setState(() {
//       _upCounter++;
//     });
//   }

//   void _updateLocation(PointerEvent details) {
//     setState(() {
//       x = details.position.dx;
//       y = details.position.dy;
//     });

//     if (widget.homeController.isScrollCheck.value) {
//       // print("start scrolling the child widget.. ");
//       // print("pointer.. :: ${details.pointer}");

//       // _bodyScrollController.listenForAutomaticChildScrollerBegin(
//       //     details.pointer, 500);

//       // ScrollDirection scrollDirection =
//       //     _scrollController.position.userScrollDirection;
//       // print("Scroller :: ${_scrollController.position.userScrollDirection}");
//       // if (scrollDirection != ScrollDirection.idle) {
//       //   double scrollEnd = _scrollController.offset +
//       //       (scrollDirection == ScrollDirection.reverse
//       //           ? _extraScrollSpeed
//       //           : -_extraScrollSpeed);
//       //   scrollEnd = min(_scrollController.position.maxScrollExtent,
//       //       max(_scrollController.position.minScrollExtent, scrollEnd));
//       //   _bodyScrollController.listenForAutomaticChildScrollerBegin(
//       //       y, scrollEnd);

//       //   //   _bodyScrollController.listenForAutomaticChildScrollerBegin(scrollEnd);

//       //   //  _bodyScrollController.jumpTo(scrollEnd);
//       // }
//     }
//   }
//   // if (_scrollController.offset >
//   //     _scrollController.position.minScrollExtent) {
//   //   print("now child scroller works. ");
//   //   widget.homeController.isScrollCheck.value = true;
//   //   ScrollDirection scrollDirection =
//   //       _scrollController.position.userScrollDirection;
//   //   if (scrollDirection != ScrollDirection.idle) {
//   //     double scrollEnd = _scrollController.offset +
//   //         (scrollDirection == ScrollDirection.reverse
//   //             ? _extraScrollSpeed
//   //             : -_extraScrollSpeed);
//   //     scrollEnd = min(_scrollController.position.maxScrollExtent,
//   //         max(_scrollController.position.minScrollExtent, scrollEnd));

//   //     _bodyScrollController.listenForAutomaticChildScrollerBegin(scrollEnd);

//   //     //  _bodyScrollController.jumpTo(scrollEnd);
//   //   }
//   // }

//   // if (_scrollController.offset < _scrollController.position.maxScrollExtent) {
//   //   print("child scroller doesnt work. ");
//   //   widget.homeController.isScrollCheck.value = false;
//   // }
// //    print("Position for Y ${y}");

//   @override
//   void initState() {
//     super.initState();

//     _bodyPositionsListener.itemPositions.addListener(_onInnerViewScrolled);

//     _scrollController.addListener(() async {
//       // print("keeps the tapp!");
//       if (_scrollController.offset <=
//           _scrollController.position.maxScrollExtent) {
//         print("now child scroller works. ");
//         widget.homeController.isScrollCheck.value = true;
//         // ScrollDirection scrollDirection =
//         //     _scrollController.position.userScrollDirection;
//         // if (scrollDirection != ScrollDirection.idle) {
//         //   double scrollEnd = _scrollController.offset +
//         //       (scrollDirection == ScrollDirection.reverse
//         //           ? _extraScrollSpeed
//         //           : -_extraScrollSpeed);
//         //   scrollEnd = min(_scrollController.position.maxScrollExtent,
//         //       max(_scrollController.position.minScrollExtent, scrollEnd));

//         //   _bodyScrollController.listenForAutomaticChildScrollerBegin(scrollEnd);

//         //   //  _bodyScrollController.jumpTo(scrollEnd);
//       }

//       if (_scrollController.offset <
//           _scrollController.position.maxScrollExtent) {
//         print("child scroller doesnt work. ");
//         widget.homeController.isScrollCheck.value = false;
//       }
//       widget.homeController.singleChildScrollOffset.value =
//           _scrollController.offset;

//       if (_scrollController.offset <=
//           _scrollController.position.minScrollExtent) {
//         _index.value = 0;
//       }

//       if (_scrollController.offset <
//           _scrollController.position.maxScrollExtent) {
//         //   print("child scroller doesnt work. ");
//         //  widget.homeController.isScrollCheck.value = false;

//         /* transfer the momentum to child scroller */

//         // ScrollDirection scrollDirection =
//         //     _scrollController.position.userScrollDirection;
//         // if (scrollDirection != ScrollDirection.idle) {
//         //   double scrollEnd = _scrollController.offset +
//         //       (scrollDirection == ScrollDirection.reverse
//         //           ? _extraScrollSpeed
//         //           : -_extraScrollSpeed);
//         //   scrollEnd = min(_scrollController.position.maxScrollExtent,
//         //       max(_scrollController.position.minScrollExtent, scrollEnd));

//         //   _bodyScrollController.listenForAutomaticChildScrollerBegin();

//         //   //  _bodyScrollController.jumpTo(scrollEnd);
//         // }

//         if (widget.homeController.singleChildScrollOffset.value >= 0.0) {
//           widget.homeController.isFirstTimeListViewScrolled.value = false;
//         }

//         if (widget.homeController.singleChildScrollOffset.value <
//             _scrollController.position.maxScrollExtent) {
//           widget.homeController.isScrollCheck.value = false;
//         }
//       }

//       if (_scrollController.offset ==
//           _scrollController.position.maxScrollExtent) {
//         //   print("now child scroller works. ");
//         // widget.homeController.isScrollCheck.value = true;
//       }
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Obx(() {
//       widget.homeController.isScrollCheck.value;
//       //   print("Scroll check :${widget.homeController.isScrollCheck.value}");
//       return SingleChildScrollView(
//           controller: _scrollController,
//           physics: ClampingScrollPhysics(),
//           child: Container(
//             height: MediaQuery.of(context).size.height,
//             child: Column(
//               children: [
//                 Container(
//                   height: MediaQuery.of(context).size.height * 0.22,
//                   child: Row(
//                     children: [
//                       Expanded(
//                         flex: 2,
//                         child: Stack(
//                           children: [
//                             CarouselSlider(
//                               options: CarouselOptions(
//                                   autoPlay: true,
//                                   autoPlayInterval: Duration(seconds: 3),
//                                   autoPlayAnimationDuration:
//                                       Duration(milliseconds: 800),
//                                   height: MediaQuery.of(context).size.height,
//                                   viewportFraction: 1.0,
//                                   enlargeCenterPage: false,
//                                   onPageChanged: (index, reason) {
//                                     widget.homeController.currentIndex.value =
//                                         index;
//                                   }),
//                               items: widget.listOfBanners.map<Widget>((item) {
//                                 return Container(
//                                   width: MediaQuery.of(context).size.width * 1,
//                                   child: FadeInImage.assetNetwork(
//                                     placeholder: Images.kTransparentImage,
//                                     image: item,
//                                     fit: BoxFit.cover,
//                                   ),
//                                 );
//                               }).toList(),
//                             ),
//                             Column(
//                               mainAxisAlignment: MainAxisAlignment.end,
//                               children: [
//                                 Row(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   children: widget.listOfRestaurantPics
//                                       .asMap()
//                                       .entries
//                                       .map<Widget>((entry) {
//                                     return GestureDetector(
//                                       onTap: () => widget.controller
//                                           .animateToPage(entry.key),
//                                       child: Obx(
//                                         () => Container(
//                                           width: widget.homeController
//                                                       .currentIndex.value ==
//                                                   entry.key
//                                               ? 30.0
//                                               : 10.0,
//                                           height: 10.0,
//                                           margin: EdgeInsets.symmetric(
//                                               vertical: 8.0, horizontal: 4.0),
//                                           decoration: BoxDecoration(
//                                               borderRadius: BorderRadius.all(
//                                                   Radius.circular(20)),
//                                               border: Border.all(
//                                                   color: CustomColor.White,
//                                                   width: 1.0),
//                                               // shape: BoxShape.circle,
//                                               color: Colors.white.withOpacity(
//                                                   widget
//                                                               .homeController
//                                                               .currentIndex
//                                                               .value ==
//                                                           entry.key
//                                                       ? 0.9
//                                                       : 0)),
//                                         ),
//                                       ),
//                                     );
//                                   }).toList(),
//                                 ),
//                               ],
//                             )
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Row(
//                   children: [
//                     Expanded(
//                       flex: 2,
//                       child: Container(
//                         margin: EdgeInsets.only(
//                             top: MediaQuery.of(context).size.height * 0.01),
//                         height: widget.tabHeight,
//                         color: Theme.of(context).cardColor,
//                         child: ScrollablePositionedList.builder(
//                           itemCount: widget.tabs.length,
//                           scrollDirection: Axis.horizontal,
//                           itemScrollController: _tabScrollController,
//                           padding: EdgeInsets.symmetric(vertical: 0.0),
//                           itemBuilder: (context, index) {
//                             var tab = widget.tabs[index].tab;
//                             return ValueListenableBuilder<int>(
//                                 valueListenable: _index,
//                                 builder: (_, i, __) {
//                                   var selected = index == i;
//                                   var borderColor = selected
//                                       ? tab.activeBackgroundColor
//                                       : Colors.transparent;
//                                   return Container(
//                                     height: 32,
//                                     margin: _kTabMargin,
//                                     decoration: BoxDecoration(
//                                         color: selected
//                                             ? tab.activeBackgroundColor
//                                             : tab.inactiveBackgroundColor,
//                                         borderRadius: tab.borderRadius),
//                                     child: OutlinedButton(
//                                       style: ButtonStyle(
//                                           foregroundColor:
//                                               MaterialStateProperty.all(selected
//                                                   ? Colors.white
//                                                   : Colors.grey),
//                                           backgroundColor:
//                                               MaterialStateProperty.all(selected
//                                                   ? tab.activeBackgroundColor
//                                                   : tab
//                                                       .inactiveBackgroundColor),
//                                           tapTargetSize:
//                                               MaterialTapTargetSize.shrinkWrap,
//                                           side: MaterialStateProperty.all(
//                                               BorderSide(
//                                             width: 1,
//                                             color: borderColor,
//                                           )),
//                                           elevation:
//                                               MaterialStateProperty.all(0),
//                                           shape: MaterialStateProperty.all(
//                                               RoundedRectangleBorder(
//                                                   borderRadius:
//                                                       tab.borderRadius))),
//                                       child: _buildTab(index),
//                                       onPressed: () => _onTabPressed(index),
//                                     ),
//                                   );
//                                 });
//                           },
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//                 Expanded(
//                     child:
//                         //   _bodyScrollController.listenForChildScrollOffset();

//                         Listener(
//                   onPointerDown: _incrementDown,
//                   onPointerMove: _updateLocation,
//                   onPointerUp: _incrementUp,
//                   child: ScrollablePositionedList.builder(
//                     physics: widget.homeController.isScrollCheck.value
//                         ? BouncingScrollPhysics()
//                         : NeverScrollableScrollPhysics(),
//                     itemScrollController: _bodyScrollController,
//                     itemPositionsListener: _bodyPositionsListener,
//                     itemCount: widget.tabs.length,
//                     itemBuilder: (_, index) => Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       mainAxisSize: MainAxisSize.min,
//                       children: [
//                         Padding(
//                           padding: _kTabMargin.add(const EdgeInsets.all(0.0)),
//                           child: _buildInnerTab(index),
//                         ),
//                         Flexible(
//                           child: widget.tabs[index].body,
//                         )
//                       ],
//                     ),
//                   ),
//                 )),
//               ],
//             ),
//           ));
//     });
//   }

//   Widget _buildInnerTab(int index) {
//     var tab = widget.tabs[index].tab;
//     // var textStyle = Theme.of(context)
//     //     .textTheme
//     //     .bodyText1
//     //     ?.copyWith(fontWeight: FontWeight.bold);

//     var textStyle = const TextStyle(
//         fontFamily: '.SF Pro Display',
//         fontWeight: FontWeight.bold,
//         fontSize: 13.0);

//     return Builder(
//       builder: (_) {
//         //if (tab.icon == null)
//         return Row(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           mainAxisAlignment: MainAxisAlignment.center,
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             _kSizedBoxW8,
//             CustomTextWidget(
//               text: tab.label,
//               fontFamily: ".SF Pro Display",
//               fontWeight: FontWeight.w600,
//               fontSize: 22.0,
//             ),
//           ],
//         );
//         // if (!tab.showIconOnList)
//         //   return MyDefaultTextStyle(style: textStyle, child: tab.label);
//         // return MyDefaultTextStyle(
//         //   style: textStyle,
//         //   child: Row(
//         //     crossAxisAlignment: CrossAxisAlignment.center,
//         //     mainAxisAlignment: MainAxisAlignment.center,
//         //     mainAxisSize: MainAxisSize.min,
//         //     children: [ _kSizedBoxW8,  CustomTextWidget(text: tab.label , fontFamily: ".SF Pro Display", fontWeight: FontWeight.bold, fontSize: 13.0,)],
//         //   ),
//         // );
//       },
//     );
//   }

//   Widget _buildTab(int index) {
//     var tab = widget.tabs[index].tab;
//     //  if (tab.icon == null)

//     return CustomTextWidget(
//       text: tab.label,
//       fontFamily: ".SF Pro Display",
//       fontWeight: FontWeight.normal,
//       fontSize: 14.0,
//     );
//   }

//   /// When a new tab has been pressed both [_tabScrollController] and
//   /// [_bodyScrollController] should notify their views.
//   void _onTabPressed(int index) async {
//     if (index > 0) {
//       // widget.homeController.tabIndex.value = 0;
//       Timer(
//         Duration(milliseconds: 10),
//         () => _scrollController.jumpTo(
//           _scrollController.position.maxScrollExtent,
//         ),
//       );
//     }

//     if (index < 1) {
//       Timer(
//         Duration(milliseconds: 10),
//         () => _scrollController.jumpTo(
//           _scrollController.position.minScrollExtent,
//         ),
//       );
//     }

//     Timer(
//         Duration(milliseconds: 10),
//         () => _tabScrollController.jumpToForTap(
//               index: index,
//             ));

//     await _bodyScrollController.scrollTo(
//       index: index,
//       duration: widget.bodyAnimationDuration,
//     );

//     _index.value = index;
//   }

//   void _onInnerViewScrolled() async {
//     // print("Index for tab items :: ${_index.value}");

//     if (widget.homeController.isEnforceIndexToZero.value) {
//       Timer(
//         Duration(milliseconds: 200),
//         () => _scrollController.jumpTo(
//           0.0,
//         ),
//       );
//       widget.homeController.isEnforceIndexToZero.value = false;
//       return;
//     }

//     _bodyScrollController.listenForChildScrollOffset();

//     // if(widget.homeController.tabIndex.value == 0){
//     //   widget.homeController.childScrollerOffset.value = - 0.0;
//     // }

//     var positions = _bodyPositionsListener.itemPositions.value;

//     /// Target [ScrollView] is not attached to any views and/or has no listeners.
//     if (positions == null || positions.isEmpty) return;

//     /// Capture the index of the first [ItemPosition]. If the saved index is same
//     /// with the current one do nothing and return.
//     var firstIndex =
//         _bodyPositionsListener.itemPositions.value.elementAt(0).index;

//     widget.homeController.firstIndex.value = firstIndex;

//     // if (widget.homeController.tabIndex.value == 0) {
//     //   Timer(
//     //     Duration(milliseconds: 10),
//     //     () => _scrollController.jumpTo(
//     //       0.0,
//     //     ),
//     //   );
//     // }

//     // if (widget.homeController.childScrollerOffset.value < 0.0) {
//     //   print(
//     //       "Child offset scroller${widget.homeController.childScrollerOffset.value}");
//     //   widget.homeController.isFirstTimeListViewScrolled.value = true;

//     //   // Timer(
//     //   //   Duration(milliseconds: 10),
//     //   //   () => _scrollController.jumpTo(
//     //   //     _scrollController.position.minScrollExtent
//     //   //   ),
//     //   // );
//     // }

//     if (widget.homeController.firstIndex.value == 0 &&
//         widget.homeController.isScrollCheck.value == true &&
//         widget.homeController.isFirstTimeListViewScrolled.value == true &&
//         widget.homeController.tabIndex.value == 0) {
//       widget.homeController.isScrollCheck.value = false;
//       _bodyScrollController.scrollSubListToTop();
//       Timer(
//         Duration(milliseconds: 0),
//         () => _scrollController.jumpTo(
//           0.0,
//         ),
//       );
//     }

//     if (_index.value == firstIndex) return;

//     /// A new index has been detected.
//     await _handleTabScroll(firstIndex);
//   }

//   Future<void> _handleTabScroll(int index) async {
//     _index.value = index;
//     // await _tabScrollController.scrollTo(
//     //     index: _index.value,
//     //     duration: widget.tabAnimationDuration,
//     //     curve: widget.tabAnimationCurve);

//     Timer(
//         Duration(milliseconds: 200),
//         () => _tabScrollController.jumpTo(
//               index: index,
//               // curve: widget.tabAnimationCurve
//             ));

//     //_tabScrollController.jumpTo(index: _index.value);
//   }
// }
