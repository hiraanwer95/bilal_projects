            //  return Column(
            //                                 children: [
            //                                   Container(
            //                                     width: MediaQuery.of(context)
            //                                             .size
            //                                             .width *
            //                                         1,
            //                                     height: 50,
                                              //   child: Row(
                                              //     key: listOfGlobalKeys[index],
                                              //     children: [
                                              //       SizedBox(
                                              //         width: 18,
                                              //       ),
                                              //       Expanded(
                                              //         flex: 14,
                                              //         child: CustomTextWidget(
                                              //           text: listOfSections[
                                              //                   index]
                                              //               .name,
                                              //           color:
                                              //               CustomColor.Black,
                                              //           fontFamily:
                                              //               '.SF Pro Display',
                                              //           fontSize: 18.0,
                                              //           fontWeight:
                                              //               FontWeight.w500,
                                              //         ),
                                              //       ),
                                              //       Expanded(
                                              //         flex: 1,
                                              //         child: Image.network(
                                              //             'https://em-cdn.eatmubarak.pk/flutter/forward-arrow.png',
                                              //             color: Color.fromRGBO(
                                              //                 255,
                                              //                 255,
                                              //                 255,
                                              //                 0.4),
                                              //             colorBlendMode:
                                              //                 BlendMode
                                              //                     .modulate),
                                              //       ),
                                              //       SizedBox(
                                              //         width: 7,
                                              //       ),
                                              //     ],
                                              //   ),
                                              // ),
            //                                   // SizedBox(
            //                                   //   height: 10,
            //                                   // ),
            //                                   SizedBox(
            //                                     height: 10,
            //                                   ),

            //                                   MediaQuery.removePadding(
            //                                     context: context,
            //                                     removeBottom: true,
            //                                     removeTop: true,
            //                                     child: ListView.builder(
            //                                         physics:
            //                                             const NeverScrollableScrollPhysics(),
            //                                         shrinkWrap: true,
            //                                         scrollDirection:
            //                                             Axis.vertical,
            //                                         itemCount:
            //                                             listOfSubSectionDish
            //                                                     .isNotEmpty
            //                                                 ? listOfSubSectionDish
            //                                                     .length
            //                                                 : 2,
            //                                         itemBuilder:
            //                                             (BuildContext context,
            //                                                 int index) {
            //                                           return listOfSubSectionDish
            //                                                   .isNotEmpty
                                                          // ? Column(
                                                          //     children: [
                                                          //       Row(
                                                          //         children: [
                                                          //           SizedBox(
                                                          //             width: 18,
                                                          //           ),
                                                          //           Expanded(
                                                          //             flex: 2,
                                                          //             child: Container(
                                                          //                 //  width: MediaQuery.of(context).size.width *,
                                                          //                 height: 120,
                                                          //                 decoration: BoxDecoration(
                                                          //                   color:
                                                          //                       Colors.transparent,
                                                          //                   //     color: Colors.black,
                                                          //                   borderRadius:
                                                          //                       const BorderRadius.only(
                                                          //                     topLeft: Radius.circular(5.0),
                                                          //                     topRight: Radius.circular(5.0),
                                                          //                     bottomLeft: Radius.circular(5.0),
                                                          //                     bottomRight: Radius.circular(5.0),
                                                          //                   ),
                                                          //                 ),
                                                          //                 child: Row(
                                                          //                   mainAxisAlignment:
                                                          //                       MainAxisAlignment.start,
                                                          //                   mainAxisSize:
                                                          //                       MainAxisSize.max,
                                                          //                   children: [
                                                          //                     SizedBox(
                                                          //                       width: 5,
                                                          //                     ),
                                                          //                     Expanded(
                                                          //                       flex: 6,
                                                          //                       child: Container(
                                                          //                         decoration: BoxDecoration(
                                                          //                           color: Colors.transparent,
                                                          //                           borderRadius: const BorderRadius.only(
                                                          //                             // topLeft: Radius.circular(8.0),
                                                          //                             topRight: Radius.circular(8.0),
                                                          //                             // bottomLeft: Radius.circular(8.0),
                                                          //                             bottomRight: Radius.circular(8.0),
                                                          //                           ),
                                                          //                         ),
                                                          //                         child: Column(
                                                          //                           children: [
                                                          //                             SizedBox(
                                                          //                               height: 5.0,
                                                          //                             ),
                                                          //                             Expanded(
                                                          //                               flex: 3,
                                                          //                               child: Container(
                                                          //                                 //color: Colors.yellow,
                                                          //                                 child: Row(
                                                          //                                   mainAxisSize: MainAxisSize.max,
                                                          //                                   //   mainAxisAlignment: MainAxisAlignment.start,

                                                          //                                   children: [
                                                          //                                     Expanded(
                                                          //                                       flex: 8,
                                                          //                                       child: Container(
                                                          //                                         // color: Colors.yellow,
                                                          //                                         child: CustomTextWidget(
                                                          //                                           text: _languagFilterHelper.languageFilter(listOfSubSectionDish[index].name, _welcomeController.languageSelectedIndex.value),
                                                          //                                           color: Colors.black,
                                                          //                                           fontFamily: '.SF Pro Display',
                                                          //                                           fontSize: 14.0,
                                                          //                                           fontWeight: FontWeight.w600,
                                                          //                                         ),
                                                          //                                       ),
                                                          //                                     ),
                                                          //                                     Expanded(
                                                          //                                       flex: 2,
                                                          //                                       child: ContentInsideColor(width: 25.0, height: 25.0, shape: BoxShape.circle, roundContainerOutsideColor: Color(0xFFD3D3D3), icon: Icons.favorite, iconColor: Colors.white, iconSize: 14.0),
                                                          //                                     ),
                                                          //                                     SizedBox(
                                                          //                                       width: 8,
                                                          //                                     ),
                                                          //                                   ],
                                                          //                                 ),
                                                          //                               ),
                                                          //                             ),
                                                          //                             // SizedBox(
                                                          //                             //   height:
                                                          //                             //       10,
                                                          //                             // ),
                                                          //                             Expanded(
                                                          //                               flex: 3,
                                                          //                               child: Container(
                                                          //                                 decoration: BoxDecoration(
                                                          //                                   color: Colors.transparent,
                                                          //                                   borderRadius: const BorderRadius.only(
                                                          //                                     // topLeft: Radius.circular(8.0),
                                                          //                                     topRight: Radius.circular(8.0),
                                                          //                                     // bottomLeft: Radius.circular(8.0),
                                                          //                                     bottomRight: Radius.circular(8.0),
                                                          //                                   ),
                                                          //                                 ),
                                                          //                                 child: CustomTextWidget(
                                                          //                                   text: _languagFilterHelper.languageFilter(listOfSubSectionDish[index].desc, _welcomeController.languageSelectedIndex.value),
                                                          //                                   color: Color(0xFF909090),
                                                          //                                   fontFamily: '.SF Pro Display',
                                                          //                                   fontSize: 13.0,
                                                          //                                   fontWeight: FontWeight.normal,
                                                          //                                 ),
                                                          //                               ),
                                                          //                             ),
                                                          //                             SizedBox(
                                                          //                               height: 10,
                                                          //                             ),
                                                          //                             Expanded(
                                                          //                               flex: 4,
                                                          //                               child: Container(
                                                          //                                 color: Colors.transparent,
                                                          //                                 child: Row(
                                                          //                                   mainAxisSize: MainAxisSize.max,
                                                          //                                   //   mainAxisAlignment: MainAxisAlignment.start,

                                                          //                                   children: [
                                                          //                                     Expanded(
                                                          //                                       flex: 5,
                                                          //                                       child: Container(
                                                          //                                         // color: Colors.yellow,
                                                          //                                         child: CustomTextWidget(
                                                          //                                           text: " ${_welcomeController.currencyChosen.value} ${listOfSubSectionDish[index].price}",
                                                          //                                           color: CustomColor.MaroonTheme,
                                                          //                                           fontFamily: '.SF Pro Display',
                                                          //                                           fontSize: 13.0,
                                                          //                                           fontWeight: FontWeight.bold,
                                                          //                                         ),
                                                          //                                       ),
                                                          //                                     ),
                                                          //                                     Expanded(
                                                          //                                       flex: 8,
                                                          //                                       child: Container(
                                                          //                                         height: 34,
                                                          //                                         child: Row(mainAxisSize: MainAxisSize.max, children: [
                                                          //                                           Expanded(
                                                          //                                             flex: 3,
                                                          //                                             child: Container(
                                                          //                                               // color: Colors.blueAccent,

                                                          //                                               decoration: BoxDecoration(
                                                          //                                                 color: const Color(0xFFDBDBDB),
                                                          //                                                 borderRadius: const BorderRadius.only(
                                                          //                                                   topLeft: Radius.circular(3.0),
                                                          //                                                   topRight: Radius.circular(3.0),
                                                          //                                                   bottomLeft: Radius.circular(3.0),
                                                          //                                                   bottomRight: Radius.circular(3.0),
                                                          //                                                 ),
                                                          //                                               ),
                                                          //                                               child: Center(
                                                          //                                                 child: Icon(
                                                          //                                                   Icons.remove,
                                                          //                                                   color: Colors.black,
                                                          //                                                 ),
                                                          //                                               ),
                                                          //                                             ),
                                                          //                                           ),
                                                          //                                           Expanded(
                                                          //                                             flex: 4,
                                                          //                                             child: Container(
                                                          //                                               // color: Colors.blueAccent,
                                                          //                                               color: Colors.transparent,

                                                          //                                               child: Center(
                                                          //                                                 child: CustomTextWidget(
                                                          //                                                   text: 0.toString(),
                                                          //                                                   fontFamily: '.SF Pro Display',
                                                          //                                                   fontSize: 20.0,
                                                          //                                                   fontWeight: FontWeight.bold,
                                                          //                                                   color: Colors.black,
                                                          //                                                 ),
                                                          //                                               ),
                                                          //                                             ),
                                                          //                                           ),
                                                          //                                           Expanded(
                                                          //                                             flex: 3,
                                                          //                                             child: Container(
                                                          //                                               // color: Colors.blueAccent,

                                                          //                                               decoration: BoxDecoration(
                                                          //                                                 color: CustomColor.MaroonTheme,
                                                          //                                                 borderRadius: const BorderRadius.only(
                                                          //                                                   topLeft: Radius.circular(3.0),
                                                          //                                                   topRight: Radius.circular(3.0),
                                                          //                                                   bottomLeft: Radius.circular(3.0),
                                                          //                                                   bottomRight: Radius.circular(3.0),
                                                          //                                                 ),
                                                          //                                               ),
                                                          //                                               child: Center(
                                                          //                                                 child: Icon(
                                                          //                                                   Icons.add,
                                                          //                                                   color: Colors.white,
                                                          //                                                 ),
                                                          //                                               ),
                                                          //                                             ),
                                                          //                                           ),
                                                          //                                         ]),
                                                          //                                       ),
                                                          //                                     ),
                                                          //                                     SizedBox(
                                                          //                                       width: 18,
                                                          //                                     ),
                                                          //                                   ],
                                                          //                                 ),
                                                          //                               ),
                                                          //                             ),
                                                          //                           ],
                                                          //                         ),
                                                          //                       ),
                                                          //                     ),
                                                          //                     Expanded(
                                                          //                       flex: 4,
                                                          //                       child: ClipRRect(
                                                          //                         borderRadius: BorderRadius.circular(10.0),
                                                          //                         child: FadeInImage.memoryNetwork(
                                                          //                           placeholder: kTransparentImage,
                                                          //                           image: listOfSubSectionDish[index].img_url ?? 'https://em-cdn.eatmubarak.pk/flutter/restaurant.png',
                                                          //                           fit: BoxFit.fitWidth,
                                                          //                           height: 120.0,
                                                          //                           width: 80,
                                                          //                         ),
                                                          //                       ),
                                                          //                     ),
                                                          //                     SizedBox(
                                                          //                       width: 8,
                                                          //                     ),
                                                          //                   ],
                                                          //                 )),
                                                          //           ),
                                                          //           SizedBox(
                                                          //             width: 10,
                                                          //           ),
                                                          //         ],
                                                          //       ),
                                                          //       const Divider(
                                                          //         color: Color(
                                                          //             0xFFE8E8E8),
                                                          //         thickness: 1,
                                                          //         indent: 20,
                                                          //         endIndent: 20,
                                                          //       ),
                                                          //     ],
                                                          //   )
                                                          // : Column(
                                                          //     children: [
                                                          //       Row(
                                                          //         children: [
                                                          //           SizedBox(
                                                          //             width: 18,
                                                          //           ),
                                                          //           Expanded(
                                                          //             flex: 2,
                                                          //             child: Container(
                                                          //                 //  width: MediaQuery.of(context).size.width *,
                                                          //                 height: 120,
                                                          //                 decoration: BoxDecoration(
                                                          //                   color:
                                                          //                       Colors.transparent,
                                                          //                   //     color: Colors.black,
                                                          //                   borderRadius:
                                                          //                       const BorderRadius.only(
                                                          //                     topLeft: Radius.circular(5.0),
                                                          //                     topRight: Radius.circular(5.0),
                                                          //                     bottomLeft: Radius.circular(5.0),
                                                          //                     bottomRight: Radius.circular(5.0),
                                                          //                   ),
                                                          //                 ),
                                                          //                 child: Row(
                                                          //                   mainAxisAlignment:
                                                          //                       MainAxisAlignment.start,
                                                          //                   mainAxisSize:
                                                          //                       MainAxisSize.max,
                                                          //                   children: [
                                                          //                     SizedBox(
                                                          //                       width: 5,
                                                          //                     ),
                                                          //                     Expanded(
                                                          //                       flex: 6,
                                                          //                       child: Container(
                                                          //                         decoration: BoxDecoration(
                                                          //                           color: Colors.transparent,
                                                          //                           borderRadius: const BorderRadius.only(
                                                          //                             // topLeft: Radius.circular(8.0),
                                                          //                             topRight: Radius.circular(8.0),
                                                          //                             // bottomLeft: Radius.circular(8.0),
                                                          //                             bottomRight: Radius.circular(8.0),
                                                          //                           ),
                                                          //                         ),
                                                          //                         child: Column(
                                                          //                           children: [
                                                          //                             SizedBox(
                                                          //                               height: 5.0,
                                                          //                             ),
                                                          //                             Expanded(
                                                          //                               flex: 3,
                                                          //                               child: Container(
                                                          //                                 //color: Colors.yellow,
                                                          //                                 child: Row(
                                                          //                                   mainAxisSize: MainAxisSize.max,
                                                          //                                   //   mainAxisAlignment: MainAxisAlignment.start,

                                                          //                                   children: [
                                                          //                                     Expanded(
                                                          //                                       flex: 8,
                                                          //                                       child: Container(
                                                          //                                         // color: Colors.yellow,
                                                          //                                         child: CustomTextWidget(
                                                          //                                           text: _languagFilterHelper.languageFilter("Dummy Data", _welcomeController.languageSelectedIndex.value),
                                                          //                                           color: Colors.black,
                                                          //                                           fontFamily: '.SF Pro Display',
                                                          //                                           fontSize: 14.0,
                                                          //                                           fontWeight: FontWeight.w600,
                                                          //                                         ),
                                                          //                                       ),
                                                          //                                     ),
                                                          //                                     Expanded(
                                                          //                                       flex: 2,
                                                          //                                       child: ContentInsideColor(width: 25.0, height: 25.0, shape: BoxShape.circle, roundContainerOutsideColor: Color(0xFFD3D3D3), icon: Icons.favorite, iconColor: Colors.white, iconSize: 14.0),
                                                          //                                     ),
                                                          //                                     SizedBox(
                                                          //                                       width: 8,
                                                          //                                     ),
                                                          //                                   ],
                                                          //                                 ),
                                                          //                               ),
                                                          //                             ),
                                                          //                             // SizedBox(
                                                          //                             //   height:
                                                          //                             //       10,
                                                          //                             // ),
                                                          //                             Expanded(
                                                          //                               flex: 3,
                                                          //                               child: Container(
                                                          //                                 decoration: BoxDecoration(
                                                          //                                   color: Colors.transparent,
                                                          //                                   borderRadius: const BorderRadius.only(
                                                          //                                     // topLeft: Radius.circular(8.0),
                                                          //                                     topRight: Radius.circular(8.0),
                                                          //                                     // bottomLeft: Radius.circular(8.0),
                                                          //                                     bottomRight: Radius.circular(8.0),
                                                          //                                   ),
                                                          //                                 ),
                                                          //                                 child: CustomTextWidget(
                                                          //                                   text: _languagFilterHelper.languageFilter("dummy description", _welcomeController.languageSelectedIndex.value),
                                                          //                                   color: Color(0xFF909090),
                                                          //                                   fontFamily: '.SF Pro Display',
                                                          //                                   fontSize: 13.0,
                                                          //                                   fontWeight: FontWeight.normal,
                                                          //                                 ),
                                                          //                               ),
                                                          //                             ),
                                                          //                             SizedBox(
                                                          //                               height: 10,
                                                          //                             ),
                                                          //                             Expanded(
                                                          //                               flex: 4,
                                                          //                               child: Container(
                                                          //                                 color: Colors.transparent,
                                                          //                                 child: Row(
                                                          //                                   mainAxisSize: MainAxisSize.max,
                                                          //                                   //   mainAxisAlignment: MainAxisAlignment.start,

                                                          //                                   children: [
                                                          //                                     Expanded(
                                                          //                                       flex: 5,
                                                          //                                       child: Container(
                                                          //                                         // color: Colors.yellow,
                                                          //                                         child: CustomTextWidget(
                                                          //                                           text: " ${_welcomeController.currencyChosen.value} ${"100"}",
                                                          //                                           color: CustomColor.MaroonTheme,
                                                          //                                           fontFamily: '.SF Pro Display',
                                                          //                                           fontSize: 13.0,
                                                          //                                           fontWeight: FontWeight.bold,
                                                          //                                         ),
                                                          //                                       ),
                                                          //                                     ),
                                                          //                                     Expanded(
                                                          //                                       flex: 8,
                                                          //                                       child: Container(
                                                          //                                         height: 34,
                                                          //                                         child: Row(mainAxisSize: MainAxisSize.max, children: [
                                                          //                                           Expanded(
                                                          //                                             flex: 3,
                                                          //                                             child: Container(
                                                          //                                               // color: Colors.blueAccent,

                                                          //                                               decoration: BoxDecoration(
                                                          //                                                 color: const Color(0xFFDBDBDB),
                                                          //                                                 borderRadius: const BorderRadius.only(
                                                          //                                                   topLeft: Radius.circular(3.0),
                                                          //                                                   topRight: Radius.circular(3.0),
                                                          //                                                   bottomLeft: Radius.circular(3.0),
                                                          //                                                   bottomRight: Radius.circular(3.0),
                                                          //                                                 ),
                                                          //                                               ),
                                                          //                                               child: Center(
                                                          //                                                 child: Icon(
                                                          //                                                   Icons.remove,
                                                          //                                                   color: Colors.black,
                                                          //                                                 ),
                                                          //                                               ),
                                                          //                                             ),
                                                          //                                           ),
                                                          //                                           Expanded(
                                                          //                                             flex: 4,
                                                          //                                             child: Container(
                                                          //                                               // color: Colors.blueAccent,
                                                          //                                               color: Colors.transparent,

                                                          //                                               child: Center(
                                                          //                                                 child: CustomTextWidget(
                                                          //                                                   text: 0.toString(),
                                                          //                                                   fontFamily: '.SF Pro Display',
                                                          //                                                   fontSize: 20.0,
                                                          //                                                   fontWeight: FontWeight.bold,
                                                          //                                                   color: Colors.black,
                                                          //                                                 ),
                                                          //                                               ),
                                                          //                                             ),
                                                          //                                           ),
                                                          //                                           Expanded(
                                                          //                                             flex: 3,
                                                          //                                             child: Container(
                                                          //                                               // color: Colors.blueAccent,

                                                          //                                               decoration: BoxDecoration(
                                                          //                                                 color: CustomColor.MaroonTheme,
                                                          //                                                 borderRadius: const BorderRadius.only(
                                                          //                                                   topLeft: Radius.circular(3.0),
                                                          //                                                   topRight: Radius.circular(3.0),
                                                          //                                                   bottomLeft: Radius.circular(3.0),
                                                          //                                                   bottomRight: Radius.circular(3.0),
                                                          //                                                 ),
                                                          //                                               ),
                                                          //                                               child: Center(
                                                          //                                                 child: Icon(
                                                          //                                                   Icons.add,
                                                          //                                                   color: Colors.white,
                                                          //                                                 ),
                                                          //                                               ),
                                                          //                                             ),
                                                          //                                           ),
                                                          //                                         ]),
                                                          //                                       ),
                                                          //                                     ),
                                                          //                                     SizedBox(
                                                          //                                       width: 18,
                                                          //                                     ),
                                                          //                                   ],
                                                          //                                 ),
                                                          //                               ),
                                                          //                             ),
                                                          //                           ],
                                                          //                         ),
                                                          //                       ),
                                                          //                     ),
                                                          //                     Expanded(
                                                          //                       flex: 4,
                                                          //                       child: ClipRRect(
                                                          //                         borderRadius: BorderRadius.circular(10.0),
                                                          //                         child: FadeInImage.memoryNetwork(
                                                          //                           placeholder: kTransparentImage,
                                                          //                           image: 'https://em-cdn.eatmubarak.pk/flutter/restaurant.png',
                                                          //                           fit: BoxFit.fitWidth,
                                                          //                           height: 120.0,
                                                          //                           width: 80,
                                                          //                         ),
                                                          //                       ),
                                                          //                     ),
                                                          //                     SizedBox(
                                                          //                       width: 8,
                                                          //                     ),
                                                          //                   ],
                                                          //                 )),
                                                          //           ),
                                                          //           SizedBox(
                                                          //             width: 10,
                                                          //           ),
                                                          //         ],
                                                          //       ),
                                                          //       const Divider(
                                                          //         color: Color(
                                                          //             0xFFE8E8E8),
                                                          //         thickness: 1,
                                                          //         indent: 20,
                                                          //         endIndent: 20,
                                                          //       ),
                                                          //     ],
                                                          //   );
                                               //     }),
            //                                   )
            //                                 ],
            //                               );



            /**copying the whole shit */
              // Obx(() {
              //           _homeController.isSectionReceived.value;
              //           return Row(
              //             children: [
              //               // SizedBox(
              //               //   width: 20,
              //               // ),
              //               Expanded(
              //                 flex: 2,
              //                 // child: InputTextField(
              //                 //   controller: searchController,
              //                 //   height: 50.0,
              //                 //   hintText: 'Search Items',
              //                 //   hintTextColor: const Color(0xFFAFAFAF),
              //                 //   fillColor: const Color(0xFFECECEC),
              //                 //   strokeColor: const Color(0xFFEAEAEA),
              //                 //   roundedCornerRadius: 30.0,
              //                 // ),

              //                 child: StickyHeader(
              //                   header: Container(
              //                     // key: goToScreenSection,
              //                     color: Colors.white,

              //                     height: 40,
              //                     child: ListView.builder(
              //                         physics: const BouncingScrollPhysics(),
              //                         shrinkWrap: true,
              //                         scrollDirection: Axis.horizontal,
              //                         itemCount: listOfSections.length,
              //                         itemBuilder:
              //                             (BuildContext context, int index) {
              //                           // final textValue = index == 0
              //                           //     ? 'Popular'
              //                           //     : index == 1
              //                           //         ? 'Limited Time Offers'
              //                           //         : index == 2
              //                           //             ? "Custom Choice"
              //                           //             : index == 3
              //                           //                 ? "Summer Deals"
              //                           //                 : "Burgers";
              //                           return GestureDetector(
              //                             onTap: (() {
              //                               _homeController
              //                                   .categoriesIndex.value = index;

              //                               // _homeController
              //                               //     .getStoreMenu
              //                               //     ?.data?[0]
              //                               //     .all_section?[index]
              //                               //     .all_sub_section?[0]
              //                               //     .dish
              //                               //     ?.forEach((dish) {
              //                               //   _homeController
              //                               //       .listOfSelectedSectionItemsTemporary
              //                               //       .add(dish);
              //                               // });

              //                               // _homeController.selectedSection
              //                               //     .value = listOfSections[index];
              //                               // _homeController
              //                               //     .listOfSelectedSectionItems
              //                               //     .length = 0;

              //                               // _homeController
              //                               //     .listOfSelectedSectionItemsTemporary
              //                               //     .forEach((selectedItems) {
              //                               //   _homeController
              //                               //       .listOfSelectedSectionItems
              //                               //       .add(selectedItems);
              //                               //   print(
              //                               //       "selected items ${selectedItems.name}");
              //                               // });

              //                               // _homeController
              //                               //     .listOfSelectedSectionItemsTemporary
              //                               //     .length = 0;

              //                               // if (_homeController
              //                               //     .isTriggerMenuList.value) {
              //                               //   _homeController.isTriggerMenuList
              //                               //       .value = false;
              //                               // } else {
              //                               //   _homeController.isTriggerMenuList
              //                               //       .value = true;
              //                               // }

              //                               //      print('list of selected section items ${_homeController.listOfSelectedSectionItems[0].name}');

              //                               /* this is for positioning the scroller as you want so you can uncomment it later on */

              //                               //valueKey = ValueKey("key${index}");
              //                               // print("Key ${valueKey}");

              //                               print(
              //                                   "target the index  ::: ${listOfGlobalKeys[index]}");

              //                               Scrollable.ensureVisible(
              //                                 listOfGlobalKeys[index]
              //                                     .currentContext!,
              //                                 duration: const Duration(
              //                                     milliseconds: 400),
              //                                 curve: Curves.easeIn,
              //                               );

              //                               // // switch (_homeController
              //                               //     .categoriesIndex.value) {
              //                               //   case 0:
              //                               //     {
              //                               //       Scrollable.ensureVisible(
              //                               //         popularScreenSection
              //                               //             .currentContext!,
              //                               //         duration: const Duration(
              //                               //             milliseconds: 400),
              //                               //         curve: Curves.easeInOut,
              //                               //       );
              //                               //       break;
              //                               //     }
              //                               //   case 1:
              //                               //     {
              //                               //       Scrollable.ensureVisible(
              //                               //         limitedOffersScreenSection
              //                               //             .currentContext!,
              //                               //         duration: const Duration(
              //                               //             milliseconds: 400),
              //                               //         curve: Curves.easeInOut,
              //                               //       );
              //                               //       break;
              //                               //     }
              //                               // }

              //                               // Scrollable.ensureVisible(
              //                               //     goToScreenSection[0].currentContext);
              //                             }),
              //                             child: Container(
              //                                 margin: index == 0
              //                                     ? EdgeInsets.only(left: 18.0)
              //                                     : index == 4
              //                                         ? EdgeInsets.only(
              //                                             left: 10.0,
              //                                             right: 18.0)
              //                                         : EdgeInsets.only(
              //                                             left: 10.0),
              //                                 padding: EdgeInsets.only(
              //                                     top: 11.0,
              //                                     left: 20.0,
              //                                     right: 20.0),
              //                                 decoration: BoxDecoration(
              //                                   color: _homeController
              //                                               .categoriesIndex
              //                                               .value ==
              //                                           index
              //                                       ? Color(0xFF911621)
              //                                       : const Color(0xFFECECEC),
              //                                   borderRadius:
              //                                       const BorderRadius.only(
              //                                     topLeft:
              //                                         Radius.circular(18.0),
              //                                     topRight:
              //                                         Radius.circular(18.0),
              //                                     bottomLeft:
              //                                         Radius.circular(18.0),
              //                                     bottomRight:
              //                                         Radius.circular(18.0),
              //                                   ),
              //                                 ),
              //                                 child: CustomTextWidget(
              //                                   text:
              //                                       listOfSections[index].name,
              //                                   fontFamily: '.SF Pro Display',
              //                                   color: _homeController
              //                                               .categoriesIndex
              //                                               .value ==
              //                                           index
              //                                       ? Colors.white
              //                                       : const Color(0xFF818181),
              //                                   fontWeight: _homeController
              //                                               .categoriesIndex
              //                                               .value ==
              //                                           index
              //                                       ? FontWeight.w600
              //                                       : FontWeight.normal,
              //                                 )),
              //                           );
              //                         }),
              //                   ),
              //                   content: Column(
              //                     children: [
              //                       const SizedBox(height: 18),
              //                       Container(
              //                         // width: 300,
              //                         height: 30,
              //                         // color: Colors.red,
              //                         // key: _homeController.categoriesIndex.value == 0
              //                         //     ? goToScreenSection[0]
              //                         //     : null,
              //                         key: popularScreenSection,

              //                         child: Row(
              //                           mainAxisSize: MainAxisSize.max,
              //                           children: [
              //                             SizedBox(
              //                               width: 18,
              //                             ),
              //                             Expanded(
              //                               flex: 14,
              //                               child: CustomTextWidget(
              //                                   text: 'Popular Deals',
              //                                   color: CustomColor.Black,
              //                                   fontFamily: '.SF Pro Display',
              //                                   fontSize: 18.0,
              //                                   fontWeight: FontWeight.w500),
              //                             ),
              //                             Expanded(
              //                               flex: 1,
              //                               child: Image.network(
              //                                 'https://em-cdn.eatmubarak.pk/flutter/forward-arrow.png',
              //                                 color: Color.fromRGBO(
              //                                     255, 255, 255, 0.4),
              //                                 colorBlendMode:
              //                                     BlendMode.modulate,
              //                               ),
              //                             ),
              //                             SizedBox(
              //                               width: 7,
              //                             ),
              //                           ],
              //                         ),
              //                       ),
              //                       const SizedBox(
              //                         height: 15,
              //                       ),
              //                       Row(
              //                         children: [
              //                           Expanded(
              //                             flex: 2,
              //                             child: Container(
              //                               width: 300,
              //                               height: 220,
              //                               //  color: Colors.black,
              //                               color: Colors.transparent,
              //                               child: ListView.builder(
              //                                   physics:
              //                                       const BouncingScrollPhysics(),
              //                                   shrinkWrap: true,
              //                                   scrollDirection:
              //                                       Axis.horizontal,
              //                                   itemCount: listOfDeals.length,
              //                                   itemBuilder:
              //                                       (BuildContext context,
              //                                           int index) {
              //                                     return CustomCard(
              //                                       index: index,
              //                                       name: listOfDeals[index]
              //                                           ['name'],
              //                                       price: listOfDeals[index]
              //                                           ['price'],
              //                                       isAddOn: listOfDeals[index]
              //                                           ['isAddOn'],
              //                                       controller: _homeController,
              //                                     );
              //                                   }),
              //                             ),
              //                           ),
              //                         ],
              //                       ),

              //                       const SizedBox(height: 20),

              //                       // ScrollableListTabView(
              //                       //     tabHeight: 48,
              //                       //     bodyAnimationDuration:
              //                       //         const Duration(milliseconds: 400),
              //                       //     tabAnimationCurve: Curves.easeIn,
              //                       //     tabAnimationDuration:
              //                       //         const Duration(milliseconds: 400),
              //                       //     tabs: scrollable_list_tabview),

              //                       // ListView.builder(
              //                       //     physics:
              //                       //         const NeverScrollableScrollPhysics(),
              //                       //     shrinkWrap: true,
              //                       //     scrollDirection: Axis.vertical,
              //                       //     itemCount: listOfSections.length,
              //                       //     itemBuilder:
              //                       //         (BuildContext context, int index) {
              //                       //       listOfSubSectionDish.length = 0;
              //                       //       listOfSubSectionDish = _homeController
              //                       //           .getSubSectionDishes(index);

              //                       //       listOfGlobalKeys.add(GlobalKey());

              //                       //       return Column(
              //                       //         children: [
              //                       //           Container(
              //                       //             width: MediaQuery.of(context)
              //                       //                     .size
              //                       //                     .width *
              //                       //                 1,
              //                       //             height: 50,
              //                       //             child: Row(
              //                       //               key: listOfGlobalKeys[index],
              //                       //               children: [
              //                       //                 SizedBox(
              //                       //                   width: 18,
              //                       //                 ),
              //                       //                 Expanded(
              //                       //                   flex: 14,
              //                       //                   child: CustomTextWidget(
              //                       //                     text: listOfSections[
              //                       //                             index]
              //                       //                         .name,
              //                       //                     color:
              //                       //                         CustomColor.Black,
              //                       //                     fontFamily:
              //                       //                         '.SF Pro Display',
              //                       //                     fontSize: 18.0,
              //                       //                     fontWeight:
              //                       //                         FontWeight.w500,
              //                       //                   ),
              //                       //                 ),
              //                       //                 Expanded(
              //                       //                   flex: 1,
              //                       //                   child: Image.network(
              //                       //                       'https://em-cdn.eatmubarak.pk/flutter/forward-arrow.png',
              //                       //                       color: Color.fromRGBO(
              //                       //                           255,
              //                       //                           255,
              //                       //                           255,
              //                       //                           0.4),
              //                       //                       colorBlendMode:
              //                       //                           BlendMode
              //                       //                               .modulate),
              //                       //                 ),
              //                       //                 SizedBox(
              //                       //                   width: 7,
              //                       //                 ),
              //                       //               ],
              //                       //             ),
              //                       //           ),
              //                       //           // SizedBox(
              //                       //           //   height: 10,
              //                       //           // ),
              //                       //           SizedBox(
              //                       //             height: 10,
              //                       //           ),

              //                       //           MediaQuery.removePadding(
              //                       //             context: context,
              //                       //             removeBottom: true,
              //                       //             removeTop: true,
              //                       //             child: ListView.builder(
              //                       //                 physics:
              //                       //                     const NeverScrollableScrollPhysics(),
              //                       //                 shrinkWrap: true,
              //                       //                 scrollDirection:
              //                       //                     Axis.vertical,
              //                       //                 itemCount:
              //                       //                     listOfSubSectionDish
              //                       //                             .isNotEmpty
              //                       //                         ? listOfSubSectionDish
              //                       //                             .length
              //                       //                         : 2,
              //                       //                 itemBuilder:
              //                       //                     (BuildContext context,
              //                       //                         int index) {
              //                       //                   return listOfSubSectionDish
              //                       //                           .isNotEmpty
              //                       //                       ? Column(
              //                       //                           children: [
              //                       //                             Row(
              //                       //                               children: [
              //                       //                                 SizedBox(
              //                       //                                   width: 18,
              //                       //                                 ),
              //                       //                                 Expanded(
              //                       //                                   flex: 2,
              //                       //                                   child: Container(
              //                       //                                       //  width: MediaQuery.of(context).size.width *,
              //                       //                                       height: 120,
              //                       //                                       decoration: BoxDecoration(
              //                       //                                         color:
              //                       //                                             Colors.transparent,
              //                       //                                         //     color: Colors.black,
              //                       //                                         borderRadius:
              //                       //                                             const BorderRadius.only(
              //                       //                                           topLeft: Radius.circular(5.0),
              //                       //                                           topRight: Radius.circular(5.0),
              //                       //                                           bottomLeft: Radius.circular(5.0),
              //                       //                                           bottomRight: Radius.circular(5.0),
              //                       //                                         ),
              //                       //                                       ),
              //                       //                                       child: Row(
              //                       //                                         mainAxisAlignment:
              //                       //                                             MainAxisAlignment.start,
              //                       //                                         mainAxisSize:
              //                       //                                             MainAxisSize.max,
              //                       //                                         children: [
              //                       //                                           SizedBox(
              //                       //                                             width: 5,
              //                       //                                           ),
              //                       //                                           Expanded(
              //                       //                                             flex: 6,
              //                       //                                             child: Container(
              //                       //                                               decoration: BoxDecoration(
              //                       //                                                 color: Colors.transparent,
              //                       //                                                 borderRadius: const BorderRadius.only(
              //                       //                                                   // topLeft: Radius.circular(8.0),
              //                       //                                                   topRight: Radius.circular(8.0),
              //                       //                                                   // bottomLeft: Radius.circular(8.0),
              //                       //                                                   bottomRight: Radius.circular(8.0),
              //                       //                                                 ),
              //                       //                                               ),
              //                       //                                               child: Column(
              //                       //                                                 children: [
              //                       //                                                   SizedBox(
              //                       //                                                     height: 5.0,
              //                       //                                                   ),
              //                       //                                                   Expanded(
              //                       //                                                     flex: 3,
              //                       //                                                     child: Container(
              //                       //                                                       //color: Colors.yellow,
              //                       //                                                       child: Row(
              //                       //                                                         mainAxisSize: MainAxisSize.max,
              //                       //                                                         //   mainAxisAlignment: MainAxisAlignment.start,

              //                       //                                                         children: [
              //                       //                                                           Expanded(
              //                       //                                                             flex: 8,
              //                       //                                                             child: Container(
              //                       //                                                               // color: Colors.yellow,
              //                       //                                                               child: CustomTextWidget(
              //                       //                                                                 text: _languagFilterHelper.languageFilter(listOfSubSectionDish[index].name, _welcomeController.languageSelectedIndex.value),
              //                       //                                                                 color: Colors.black,
              //                       //                                                                 fontFamily: '.SF Pro Display',
              //                       //                                                                 fontSize: 14.0,
              //                       //                                                                 fontWeight: FontWeight.w600,
              //                       //                                                               ),
              //                       //                                                             ),
              //                       //                                                           ),
              //                       //                                                           Expanded(
              //                       //                                                             flex: 2,
              //                       //                                                             child: ContentInsideColor(width: 25.0, height: 25.0, shape: BoxShape.circle, roundContainerOutsideColor: Color(0xFFD3D3D3), icon: Icons.favorite, iconColor: Colors.white, iconSize: 14.0),
              //                       //                                                           ),
              //                       //                                                           SizedBox(
              //                       //                                                             width: 8,
              //                       //                                                           ),
              //                       //                                                         ],
              //                       //                                                       ),
              //                       //                                                     ),
              //                       //                                                   ),
              //                       //                                                   // SizedBox(
              //                       //                                                   //   height:
              //                       //                                                   //       10,
              //                       //                                                   // ),
              //                       //                                                   Expanded(
              //                       //                                                     flex: 3,
              //                       //                                                     child: Container(
              //                       //                                                       decoration: BoxDecoration(
              //                       //                                                         color: Colors.transparent,
              //                       //                                                         borderRadius: const BorderRadius.only(
              //                       //                                                           // topLeft: Radius.circular(8.0),
              //                       //                                                           topRight: Radius.circular(8.0),
              //                       //                                                           // bottomLeft: Radius.circular(8.0),
              //                       //                                                           bottomRight: Radius.circular(8.0),
              //                       //                                                         ),
              //                       //                                                       ),
              //                       //                                                       child: CustomTextWidget(
              //                       //                                                         text: _languagFilterHelper.languageFilter(listOfSubSectionDish[index].desc, _welcomeController.languageSelectedIndex.value),
              //                       //                                                         color: Color(0xFF909090),
              //                       //                                                         fontFamily: '.SF Pro Display',
              //                       //                                                         fontSize: 13.0,
              //                       //                                                         fontWeight: FontWeight.normal,
              //                       //                                                       ),
              //                       //                                                     ),
              //                       //                                                   ),
              //                       //                                                   SizedBox(
              //                       //                                                     height: 10,
              //                       //                                                   ),
              //                       //                                                   Expanded(
              //                       //                                                     flex: 4,
              //                       //                                                     child: Container(
              //                       //                                                       color: Colors.transparent,
              //                       //                                                       child: Row(
              //                       //                                                         mainAxisSize: MainAxisSize.max,
              //                       //                                                         //   mainAxisAlignment: MainAxisAlignment.start,

              //                       //                                                         children: [
              //                       //                                                           Expanded(
              //                       //                                                             flex: 5,
              //                       //                                                             child: Container(
              //                       //                                                               // color: Colors.yellow,
              //                       //                                                               child: CustomTextWidget(
              //                       //                                                                 text: " ${_welcomeController.currencyChosen.value} ${listOfSubSectionDish[index].price}",
              //                       //                                                                 color: CustomColor.MaroonTheme,
              //                       //                                                                 fontFamily: '.SF Pro Display',
              //                       //                                                                 fontSize: 13.0,
              //                       //                                                                 fontWeight: FontWeight.bold,
              //                       //                                                               ),
              //                       //                                                             ),
              //                       //                                                           ),
              //                       //                                                           Expanded(
              //                       //                                                             flex: 8,
              //                       //                                                             child: Container(
              //                       //                                                               height: 34,
              //                       //                                                               child: Row(mainAxisSize: MainAxisSize.max, children: [
              //                       //                                                                 Expanded(
              //                       //                                                                   flex: 3,
              //                       //                                                                   child: Container(
              //                       //                                                                     // color: Colors.blueAccent,

              //                       //                                                                     decoration: BoxDecoration(
              //                       //                                                                       color: const Color(0xFFDBDBDB),
              //                       //                                                                       borderRadius: const BorderRadius.only(
              //                       //                                                                         topLeft: Radius.circular(3.0),
              //                       //                                                                         topRight: Radius.circular(3.0),
              //                       //                                                                         bottomLeft: Radius.circular(3.0),
              //                       //                                                                         bottomRight: Radius.circular(3.0),
              //                       //                                                                       ),
              //                       //                                                                     ),
              //                       //                                                                     child: Center(
              //                       //                                                                       child: Icon(
              //                       //                                                                         Icons.remove,
              //                       //                                                                         color: Colors.black,
              //                       //                                                                       ),
              //                       //                                                                     ),
              //                       //                                                                   ),
              //                       //                                                                 ),
              //                       //                                                                 Expanded(
              //                       //                                                                   flex: 4,
              //                       //                                                                   child: Container(
              //                       //                                                                     // color: Colors.blueAccent,
              //                       //                                                                     color: Colors.transparent,

              //                       //                                                                     child: Center(
              //                       //                                                                       child: CustomTextWidget(
              //                       //                                                                         text: 0.toString(),
              //                       //                                                                         fontFamily: '.SF Pro Display',
              //                       //                                                                         fontSize: 20.0,
              //                       //                                                                         fontWeight: FontWeight.bold,
              //                       //                                                                         color: Colors.black,
              //                       //                                                                       ),
              //                       //                                                                     ),
              //                       //                                                                   ),
              //                       //                                                                 ),
              //                       //                                                                 Expanded(
              //                       //                                                                   flex: 3,
              //                       //                                                                   child: Container(
              //                       //                                                                     // color: Colors.blueAccent,

              //                       //                                                                     decoration: BoxDecoration(
              //                       //                                                                       color: CustomColor.MaroonTheme,
              //                       //                                                                       borderRadius: const BorderRadius.only(
              //                       //                                                                         topLeft: Radius.circular(3.0),
              //                       //                                                                         topRight: Radius.circular(3.0),
              //                       //                                                                         bottomLeft: Radius.circular(3.0),
              //                       //                                                                         bottomRight: Radius.circular(3.0),
              //                       //                                                                       ),
              //                       //                                                                     ),
              //                       //                                                                     child: Center(
              //                       //                                                                       child: Icon(
              //                       //                                                                         Icons.add,
              //                       //                                                                         color: Colors.white,
              //                       //                                                                       ),
              //                       //                                                                     ),
              //                       //                                                                   ),
              //                       //                                                                 ),
              //                       //                                                               ]),
              //                       //                                                             ),
              //                       //                                                           ),
              //                       //                                                           SizedBox(
              //                       //                                                             width: 18,
              //                       //                                                           ),
              //                       //                                                         ],
              //                       //                                                       ),
              //                       //                                                     ),
              //                       //                                                   ),
              //                       //                                                 ],
              //                       //                                               ),
              //                       //                                             ),
              //                       //                                           ),
              //                       //                                           Expanded(
              //                       //                                             flex: 4,
              //                       //                                             child: ClipRRect(
              //                       //                                               borderRadius: BorderRadius.circular(10.0),
              //                       //                                               child: FadeInImage.memoryNetwork(
              //                       //                                                 placeholder: kTransparentImage,
              //                       //                                                 image: listOfSubSectionDish[index].img_url ?? 'https://em-cdn.eatmubarak.pk/flutter/restaurant.png',
              //                       //                                                 fit: BoxFit.fitWidth,
              //                       //                                                 height: 120.0,
              //                       //                                                 width: 80,
              //                       //                                               ),
              //                       //                                             ),
              //                       //                                           ),
              //                       //                                           SizedBox(
              //                       //                                             width: 8,
              //                       //                                           ),
              //                       //                                         ],
              //                       //                                       )),
              //                       //                                 ),
              //                       //                                 SizedBox(
              //                       //                                   width: 10,
              //                       //                                 ),
              //                       //                               ],
              //                       //                             ),
              //                       //                             const Divider(
              //                       //                               color: Color(
              //                       //                                   0xFFE8E8E8),
              //                       //                               thickness: 1,
              //                       //                               indent: 20,
              //                       //                               endIndent: 20,
              //                       //                             ),
              //                       //                           ],
              //                       //                         )
              //                       //                       : Column(
              //                       //                           children: [
              //                       //                             Row(
              //                       //                               children: [
              //                       //                                 SizedBox(
              //                       //                                   width: 18,
              //                       //                                 ),
              //                       //                                 Expanded(
              //                       //                                   flex: 2,
              //                       //                                   child: Container(
              //                       //                                       //  width: MediaQuery.of(context).size.width *,
              //                       //                                       height: 120,
              //                       //                                       decoration: BoxDecoration(
              //                       //                                         color:
              //                       //                                             Colors.transparent,
              //                       //                                         //     color: Colors.black,
              //                       //                                         borderRadius:
              //                       //                                             const BorderRadius.only(
              //                       //                                           topLeft: Radius.circular(5.0),
              //                       //                                           topRight: Radius.circular(5.0),
              //                       //                                           bottomLeft: Radius.circular(5.0),
              //                       //                                           bottomRight: Radius.circular(5.0),
              //                       //                                         ),
              //                       //                                       ),
              //                       //                                       child: Row(
              //                       //                                         mainAxisAlignment:
              //                       //                                             MainAxisAlignment.start,
              //                       //                                         mainAxisSize:
              //                       //                                             MainAxisSize.max,
              //                       //                                         children: [
              //                       //                                           SizedBox(
              //                       //                                             width: 5,
              //                       //                                           ),
              //                       //                                           Expanded(
              //                       //                                             flex: 6,
              //                       //                                             child: Container(
              //                       //                                               decoration: BoxDecoration(
              //                       //                                                 color: Colors.transparent,
              //                       //                                                 borderRadius: const BorderRadius.only(
              //                       //                                                   // topLeft: Radius.circular(8.0),
              //                       //                                                   topRight: Radius.circular(8.0),
              //                       //                                                   // bottomLeft: Radius.circular(8.0),
              //                       //                                                   bottomRight: Radius.circular(8.0),
              //                       //                                                 ),
              //                       //                                               ),
              //                       //                                               child: Column(
              //                       //                                                 children: [
              //                       //                                                   SizedBox(
              //                       //                                                     height: 5.0,
              //                       //                                                   ),
              //                       //                                                   Expanded(
              //                       //                                                     flex: 3,
              //                       //                                                     child: Container(
              //                       //                                                       //color: Colors.yellow,
              //                       //                                                       child: Row(
              //                       //                                                         mainAxisSize: MainAxisSize.max,
              //                       //                                                         //   mainAxisAlignment: MainAxisAlignment.start,

              //                       //                                                         children: [
              //                       //                                                           Expanded(
              //                       //                                                             flex: 8,
              //                       //                                                             child: Container(
              //                       //                                                               // color: Colors.yellow,
              //                       //                                                               child: CustomTextWidget(
              //                       //                                                                 text: _languagFilterHelper.languageFilter("Dummy Data", _welcomeController.languageSelectedIndex.value),
              //                       //                                                                 color: Colors.black,
              //                       //                                                                 fontFamily: '.SF Pro Display',
              //                       //                                                                 fontSize: 14.0,
              //                       //                                                                 fontWeight: FontWeight.w600,
              //                       //                                                               ),
              //                       //                                                             ),
              //                       //                                                           ),
              //                       //                                                           Expanded(
              //                       //                                                             flex: 2,
              //                       //                                                             child: ContentInsideColor(width: 25.0, height: 25.0, shape: BoxShape.circle, roundContainerOutsideColor: Color(0xFFD3D3D3), icon: Icons.favorite, iconColor: Colors.white, iconSize: 14.0),
              //                       //                                                           ),
              //                       //                                                           SizedBox(
              //                       //                                                             width: 8,
              //                       //                                                           ),
              //                       //                                                         ],
              //                       //                                                       ),
              //                       //                                                     ),
              //                       //                                                   ),
              //                       //                                                   // SizedBox(
              //                       //                                                   //   height:
              //                       //                                                   //       10,
              //                       //                                                   // ),
              //                       //                                                   Expanded(
              //                       //                                                     flex: 3,
              //                       //                                                     child: Container(
              //                       //                                                       decoration: BoxDecoration(
              //                       //                                                         color: Colors.transparent,
              //                       //                                                         borderRadius: const BorderRadius.only(
              //                       //                                                           // topLeft: Radius.circular(8.0),
              //                       //                                                           topRight: Radius.circular(8.0),
              //                       //                                                           // bottomLeft: Radius.circular(8.0),
              //                       //                                                           bottomRight: Radius.circular(8.0),
              //                       //                                                         ),
              //                       //                                                       ),
              //                       //                                                       child: CustomTextWidget(
              //                       //                                                         text: _languagFilterHelper.languageFilter("dummy description", _welcomeController.languageSelectedIndex.value),
              //                       //                                                         color: Color(0xFF909090),
              //                       //                                                         fontFamily: '.SF Pro Display',
              //                       //                                                         fontSize: 13.0,
              //                       //                                                         fontWeight: FontWeight.normal,
              //                       //                                                       ),
              //                       //                                                     ),
              //                       //                                                   ),
              //                       //                                                   SizedBox(
              //                       //                                                     height: 10,
              //                       //                                                   ),
              //                       //                                                   Expanded(
              //                       //                                                     flex: 4,
              //                       //                                                     child: Container(
              //                       //                                                       color: Colors.transparent,
              //                       //                                                       child: Row(
              //                       //                                                         mainAxisSize: MainAxisSize.max,
              //                       //                                                         //   mainAxisAlignment: MainAxisAlignment.start,

              //                       //                                                         children: [
              //                       //                                                           Expanded(
              //                       //                                                             flex: 5,
              //                       //                                                             child: Container(
              //                       //                                                               // color: Colors.yellow,
              //                       //                                                               child: CustomTextWidget(
              //                       //                                                                 text: " ${_welcomeController.currencyChosen.value} ${"100"}",
              //                       //                                                                 color: CustomColor.MaroonTheme,
              //                       //                                                                 fontFamily: '.SF Pro Display',
              //                       //                                                                 fontSize: 13.0,
              //                       //                                                                 fontWeight: FontWeight.bold,
              //                       //                                                               ),
              //                       //                                                             ),
              //                       //                                                           ),
              //                       //                                                           Expanded(
              //                       //                                                             flex: 8,
              //                       //                                                             child: Container(
              //                       //                                                               height: 34,
              //                       //                                                               child: Row(mainAxisSize: MainAxisSize.max, children: [
              //                       //                                                                 Expanded(
              //                       //                                                                   flex: 3,
              //                       //                                                                   child: Container(
              //                       //                                                                     // color: Colors.blueAccent,

              //                       //                                                                     decoration: BoxDecoration(
              //                       //                                                                       color: const Color(0xFFDBDBDB),
              //                       //                                                                       borderRadius: const BorderRadius.only(
              //                       //                                                                         topLeft: Radius.circular(3.0),
              //                       //                                                                         topRight: Radius.circular(3.0),
              //                       //                                                                         bottomLeft: Radius.circular(3.0),
              //                       //                                                                         bottomRight: Radius.circular(3.0),
              //                       //                                                                       ),
              //                       //                                                                     ),
              //                       //                                                                     child: Center(
              //                       //                                                                       child: Icon(
              //                       //                                                                         Icons.remove,
              //                       //                                                                         color: Colors.black,
              //                       //                                                                       ),
              //                       //                                                                     ),
              //                       //                                                                   ),
              //                       //                                                                 ),
              //                       //                                                                 Expanded(
              //                       //                                                                   flex: 4,
              //                       //                                                                   child: Container(
              //                       //                                                                     // color: Colors.blueAccent,
              //                       //                                                                     color: Colors.transparent,

              //                       //                                                                     child: Center(
              //                       //                                                                       child: CustomTextWidget(
              //                       //                                                                         text: 0.toString(),
              //                       //                                                                         fontFamily: '.SF Pro Display',
              //                       //                                                                         fontSize: 20.0,
              //                       //                                                                         fontWeight: FontWeight.bold,
              //                       //                                                                         color: Colors.black,
              //                       //                                                                       ),
              //                       //                                                                     ),
              //                       //                                                                   ),
              //                       //                                                                 ),
              //                       //                                                                 Expanded(
              //                       //                                                                   flex: 3,
              //                       //                                                                   child: Container(
              //                       //                                                                     // color: Colors.blueAccent,

              //                       //                                                                     decoration: BoxDecoration(
              //                       //                                                                       color: CustomColor.MaroonTheme,
              //                       //                                                                       borderRadius: const BorderRadius.only(
              //                       //                                                                         topLeft: Radius.circular(3.0),
              //                       //                                                                         topRight: Radius.circular(3.0),
              //                       //                                                                         bottomLeft: Radius.circular(3.0),
              //                       //                                                                         bottomRight: Radius.circular(3.0),
              //                       //                                                                       ),
              //                       //                                                                     ),
              //                       //                                                                     child: Center(
              //                       //                                                                       child: Icon(
              //                       //                                                                         Icons.add,
              //                       //                                                                         color: Colors.white,
              //                       //                                                                       ),
              //                       //                                                                     ),
              //                       //                                                                   ),
              //                       //                                                                 ),
              //                       //                                                               ]),
              //                       //                                                             ),
              //                       //                                                           ),
              //                       //                                                           SizedBox(
              //                       //                                                             width: 18,
              //                       //                                                           ),
              //                       //                                                         ],
              //                       //                                                       ),
              //                       //                                                     ),
              //                       //                                                   ),
              //                       //                                                 ],
              //                       //                                               ),
              //                       //                                             ),
              //                       //                                           ),
              //                       //                                           Expanded(
              //                       //                                             flex: 4,
              //                       //                                             child: ClipRRect(
              //                       //                                               borderRadius: BorderRadius.circular(10.0),
              //                       //                                               child: FadeInImage.memoryNetwork(
              //                       //                                                 placeholder: kTransparentImage,
              //                       //                                                 image: 'https://em-cdn.eatmubarak.pk/flutter/restaurant.png',
              //                       //                                                 fit: BoxFit.fitWidth,
              //                       //                                                 height: 120.0,
              //                       //                                                 width: 80,
              //                       //                                               ),
              //                       //                                             ),
              //                       //                                           ),
              //                       //                                           SizedBox(
              //                       //                                             width: 8,
              //                       //                                           ),
              //                       //                                         ],
              //                       //                                       )),
              //                       //                                 ),
              //                       //                                 SizedBox(
              //                       //                                   width: 10,
              //                       //                                 ),
              //                       //                               ],
              //                       //                             ),
              //                       //                             const Divider(
              //                       //                               color: Color(
              //                       //                                   0xFFE8E8E8),
              //                       //                               thickness: 1,
              //                       //                               indent: 20,
              //                       //                               endIndent: 20,
              //                       //                             ),
              //                       //                           ],
              //                       //                         );
              //                       //                 }),
              //                       //           )
              //                       //         ],
              //                       //       );
              //                       //       // return Row(
              //                       //       //   children: [
              //                       //       //     Expanded(
              //                       //       //       flex: 2,
              //                       //       //       child: MediaQuery
              //                       //       //           .removePadding(
              //                       //       //         context: context,
              //                       //       //         removeTop: true,
              //                       //       //         child:
              //                       //       //             ListView.builder(
              //                       //       //                 physics:
              //                       //       //                     const NeverScrollableScrollPhysics(),
              //                       //       //                 shrinkWrap:
              //                       //       //                     true,
              //                       //       //                 scrollDirection:
              //                       //       //                     Axis
              //                       //       //                         .vertical,
              //                       //       //                 itemCount: _homeController
              //                       //       //                         .listOfSelectedSectionItems
              //                       //       //                         .isNotEmpty
              //                       //       //                     ? _homeController
              //                       //       //                         .listOfSelectedSectionItems
              //                       //       //                         .length
              //                       //       //                     : 0,
              //                       //       //                 itemBuilder:
              //                       //       //                     (BuildContext
              //                       //       //                             context,
              //                       //       //                         int index) {
              //                       //       //                   return Column(
              //                       //       //                     children: [
              //                       //       //                       Row(
              //                       //       //                         children: [
              //                       //       //                           SizedBox(
              //                       //       //                             width: 18,
              //                       //       //                           ),
              //                       //       //                           Expanded(
              //                       //       //                             flex: 2,
              //                       //       //                             child: Container(
              //                       //       //                                 //  width: MediaQuery.of(context).size.width *,
              //                       //       //                                 height: 120,
              //                       //       //                                 decoration: BoxDecoration(
              //                       //       //                                   color: Colors.transparent,
              //                       //       //                                   //     color: Colors.black,
              //                       //       //                                   borderRadius: const BorderRadius.only(
              //                       //       //                                     topLeft: Radius.circular(5.0),
              //                       //       //                                     topRight: Radius.circular(5.0),
              //                       //       //                                     bottomLeft: Radius.circular(5.0),
              //                       //       //                                     bottomRight: Radius.circular(5.0),
              //                       //       //                                   ),
              //                       //       //                                 ),
              //                       //       //                                 child: Row(
              //                       //       //                                   mainAxisAlignment: MainAxisAlignment.start,
              //                       //       //                                   mainAxisSize: MainAxisSize.max,
              //                       //       //                                   children: [
              //                       //       //                                     SizedBox(
              //                       //       //                                       width: 5,
              //                       //       //                                     ),
              //                       //       //                                     Expanded(
              //                       //       //                                       flex: 6,
              //                       //       //                                       child: Container(
              //                       //       //                                         decoration: BoxDecoration(
              //                       //       //                                           color: Colors.transparent,
              //                       //       //                                           borderRadius: const BorderRadius.only(
              //                       //       //                                             // topLeft: Radius.circular(8.0),
              //                       //       //                                             topRight: Radius.circular(8.0),
              //                       //       //                                             // bottomLeft: Radius.circular(8.0),
              //                       //       //                                             bottomRight: Radius.circular(8.0),
              //                       //       //                                           ),
              //                       //       //                                         ),
              //                       //       //                                         child: Column(
              //                       //       //                                           children: [
              //                       //       //                                             SizedBox(
              //                       //       //                                               height: 5.0,
              //                       //       //                                             ),
              //                       //       //                                             Expanded(
              //                       //       //                                               flex: 3,
              //                       //       //                                               child: Container(
              //                       //       //                                                 //color: Colors.yellow,
              //                       //       //                                                 child: Row(
              //                       //       //                                                   mainAxisSize: MainAxisSize.max,
              //                       //       //                                                   //   mainAxisAlignment: MainAxisAlignment.start,

              //                       //       //                                                   children: [
              //                       //       //                                                     Expanded(
              //                       //       //                                                       flex: 8,
              //                       //       //                                                       child: Container(
              //                       //       //                                                         // color: Colors.yellow,
              //                       //       //                                                         child: CustomTextWidget(
              //                       //       //                                                           text: _languagFilterHelper.languageFilter(_homeController.listOfSelectedSectionItems[index].name, _welcomeController.languageSelectedIndex.value),
              //                       //       //                                                           color: Colors.black,
              //                       //       //                                                           fontFamily: '.SF Pro Display',
              //                       //       //                                                           fontSize: 14.0,
              //                       //       //                                                           fontWeight: FontWeight.w600,
              //                       //       //                                                         ),
              //                       //       //                                                       ),
              //                       //       //                                                     ),
              //                       //       //                                                     Expanded(
              //                       //       //                                                       flex: 2,
              //                       //       //                                                       child: ContentInsideColor(width: 25.0, height: 25.0, shape: BoxShape.circle, roundContainerOutsideColor: Color(0xFFD3D3D3), icon: Icons.favorite, iconColor: Colors.white, iconSize: 14.0),
              //                       //       //                                                     ),
              //                       //       //                                                     SizedBox(
              //                       //       //                                                       width: 8,
              //                       //       //                                                     ),
              //                       //       //                                                   ],
              //                       //       //                                                 ),
              //                       //       //                                               ),
              //                       //       //                                             ),
              //                       //       //                                             // SizedBox(
              //                       //       //                                             //   height:
              //                       //       //                                             //       10,
              //                       //       //                                             // ),
              //                       //       //                                             Expanded(
              //                       //       //                                               flex: 3,
              //                       //       //                                               child: Container(
              //                       //       //                                                 decoration: BoxDecoration(
              //                       //       //                                                   color: Colors.transparent,
              //                       //       //                                                   borderRadius: const BorderRadius.only(
              //                       //       //                                                     // topLeft: Radius.circular(8.0),
              //                       //       //                                                     topRight: Radius.circular(8.0),
              //                       //       //                                                     // bottomLeft: Radius.circular(8.0),
              //                       //       //                                                     bottomRight: Radius.circular(8.0),
              //                       //       //                                                   ),
              //                       //       //                                                 ),
              //                       //       //                                                 child: CustomTextWidget(
              //                       //       //                                                   text: _languagFilterHelper.languageFilter(_homeController.listOfSelectedSectionItems[index].desc, _welcomeController.languageSelectedIndex.value),
              //                       //       //                                                   color: Color(0xFF909090),
              //                       //       //                                                   fontFamily: '.SF Pro Display',
              //                       //       //                                                   fontSize: 13.0,
              //                       //       //                                                   fontWeight: FontWeight.normal,
              //                       //       //                                                 ),
              //                       //       //                                               ),
              //                       //       //                                             ),
              //                       //       //                                             SizedBox(
              //                       //       //                                               height: 10,
              //                       //       //                                             ),
              //                       //       //                                             Expanded(
              //                       //       //                                               flex: 4,
              //                       //       //                                               child: Container(
              //                       //       //                                                 color: Colors.transparent,
              //                       //       //                                                 child: Row(
              //                       //       //                                                   mainAxisSize: MainAxisSize.max,
              //                       //       //                                                   //   mainAxisAlignment: MainAxisAlignment.start,

              //                       //       //                                                   children: [
              //                       //       //                                                     Expanded(
              //                       //       //                                                       flex: 5,
              //                       //       //                                                       child: Container(
              //                       //       //                                                         // color: Colors.yellow,
              //                       //       //                                                         child: CustomTextWidget(
              //                       //       //                                                           text: " ${_welcomeController.currencyChosen.value} ${_homeController.listOfSelectedSectionItems[index].price}",
              //                       //       //                                                           color: CustomColor.MaroonTheme,
              //                       //       //                                                           fontFamily: '.SF Pro Display',
              //                       //       //                                                           fontSize: 13.0,
              //                       //       //                                                           fontWeight: FontWeight.bold,
              //                       //       //                                                         ),
              //                       //       //                                                       ),
              //                       //       //                                                     ),
              //                       //       //                                                     Expanded(
              //                       //       //                                                       flex: 8,
              //                       //       //                                                       child: Container(
              //                       //       //                                                         height: 34,
              //                       //       //                                                         child: Row(mainAxisSize: MainAxisSize.max, children: [
              //                       //       //                                                           Expanded(
              //                       //       //                                                             flex: 3,
              //                       //       //                                                             child: Container(
              //                       //       //                                                               // color: Colors.blueAccent,

              //                       //       //                                                               decoration: BoxDecoration(
              //                       //       //                                                                 color: const Color(0xFFDBDBDB),
              //                       //       //                                                                 borderRadius: const BorderRadius.only(
              //                       //       //                                                                   topLeft: Radius.circular(3.0),
              //                       //       //                                                                   topRight: Radius.circular(3.0),
              //                       //       //                                                                   bottomLeft: Radius.circular(3.0),
              //                       //       //                                                                   bottomRight: Radius.circular(3.0),
              //                       //       //                                                                 ),
              //                       //       //                                                               ),
              //                       //       //                                                               child: Center(
              //                       //       //                                                                 child: Icon(
              //                       //       //                                                                   Icons.remove,
              //                       //       //                                                                   color: Colors.black,
              //                       //       //                                                                 ),
              //                       //       //                                                               ),
              //                       //       //                                                             ),
              //                       //       //                                                           ),
              //                       //       //                                                           Expanded(
              //                       //       //                                                             flex: 4,
              //                       //       //                                                             child: Container(
              //                       //       //                                                               // color: Colors.blueAccent,
              //                       //       //                                                               color: Colors.transparent,

              //                       //       //                                                               child: Center(
              //                       //       //                                                                 child: CustomTextWidget(
              //                       //       //                                                                   text: 0.toString(),
              //                       //       //                                                                   fontFamily: '.SF Pro Display',
              //                       //       //                                                                   fontSize: 20.0,
              //                       //       //                                                                   fontWeight: FontWeight.bold,
              //                       //       //                                                                   color: Colors.black,
              //                       //       //                                                                 ),
              //                       //       //                                                               ),
              //                       //       //                                                             ),
              //                       //       //                                                           ),
              //                       //       //                                                           Expanded(
              //                       //       //                                                             flex: 3,
              //                       //       //                                                             child: Container(
              //                       //       //                                                               // color: Colors.blueAccent,

              //                       //       //                                                               decoration: BoxDecoration(
              //                       //       //                                                                 color: CustomColor.MaroonTheme,
              //                       //       //                                                                 borderRadius: const BorderRadius.only(
              //                       //       //                                                                   topLeft: Radius.circular(3.0),
              //                       //       //                                                                   topRight: Radius.circular(3.0),
              //                       //       //                                                                   bottomLeft: Radius.circular(3.0),
              //                       //       //                                                                   bottomRight: Radius.circular(3.0),
              //                       //       //                                                                 ),
              //                       //       //                                                               ),
              //                       //       //                                                               child: Center(
              //                       //       //                                                                 child: Icon(
              //                       //       //                                                                   Icons.add,
              //                       //       //                                                                   color: Colors.white,
              //                       //       //                                                                 ),
              //                       //       //                                                               ),
              //                       //       //                                                             ),
              //                       //       //                                                           ),
              //                       //       //                                                         ]),
              //                       //       //                                                       ),
              //                       //       //                                                     ),
              //                       //       //                                                     SizedBox(
              //                       //       //                                                       width: 18,
              //                       //       //                                                     ),
              //                       //       //                                                   ],
              //                       //       //                                                 ),
              //                       //       //                                               ),
              //                       //       //                                             ),
              //                       //       //                                           ],
              //                       //       //                                         ),
              //                       //       //                                       ),
              //                       //       //                                     ),
              //                       //       //                                     Expanded(
              //                       //       //                                       flex: 4,
              //                       //       //                                       child: ClipRRect(
              //                       //       //                                         borderRadius: BorderRadius.circular(10.0),
              //                       //       //                                         child: FadeInImage.memoryNetwork(
              //                       //       //                                           placeholder: kTransparentImage,
              //                       //       //                                           image: _homeController.listOfSelectedSectionItems[index].img_url ?? 'https://em-cdn.eatmubarak.pk/flutter/restaurant.png',
              //                       //       //                                           fit: BoxFit.fitWidth,
              //                       //       //                                           height: 120.0,
              //                       //       //                                           width: 80,
              //                       //       //                                         ),
              //                       //       //                                       ),
              //                       //       //                                     ),
              //                       //       //                                     SizedBox(
              //                       //       //                                       width: 8,
              //                       //       //                                     ),
              //                       //       //                                   ],
              //                       //       //                                 )),
              //                       //       //                           ),
              //                       //       //                           SizedBox(
              //                       //       //                             width: 10,
              //                       //       //                           ),
              //                       //       //                         ],
              //                       //       //                       ),
              //                       //       //                       const Divider(
              //                       //       //                         color:
              //                       //       //                             Color(0xFFE8E8E8),
              //                       //       //                         thickness:
              //                       //       //                             1,
              //                       //       //                         indent:
              //                       //       //                             20,
              //                       //       //                         endIndent:
              //                       //       //                             20,
              //                       //       //                       ),
              //                       //       //                     ],
              //                       //       //                   );
              //                       //       //                   //
              //                       //       //                 }),
              //                       //       //       ),
              //                       //       //     ),
              //                       //       //   ],
              //                       //       // );
              //                       //     }),

              //                       // const SizedBox(
              //                       //   height: 10,
              //                       // ),
              //                       SizedBox(
              //                         height: 10.0,
              //                       ),

              //                       // Obx(
              //                       //   () {
              //                       //      _homeController.isTriggerMenuList.value;
              //                       //    return

              //                       Obx(() {
              //                         _homeController.isTriggerMenuList.value;
              //                         return Row(
              //                           children: [
              //                             Expanded(
              //                               flex: 2,
              //                               child: ListView.builder(
              //                                   physics:
              //                                       const NeverScrollableScrollPhysics(),
              //                                   shrinkWrap: true,
              //                                   scrollDirection: Axis.vertical,
              //                                   itemCount:
              //                                       listOfSections.length,
              //                                   itemBuilder:
              //                                       (BuildContext context,
              //                                           int index) {
              //                                     return Container();
              //                                     // return Row(
              //                                     //   children: [
              //                                     //     Expanded(
              //                                     //       flex: 2,
              //                                     //       child: MediaQuery
              //                                     //           .removePadding(
              //                                     //         context: context,
              //                                     //         removeTop: true,
              //                                     //         child:
              //                                     //             ListView.builder(
              //                                     //                 physics:
              //                                     //                     const NeverScrollableScrollPhysics(),
              //                                     //                 shrinkWrap:
              //                                     //                     true,
              //                                     //                 scrollDirection:
              //                                     //                     Axis
              //                                     //                         .vertical,
              //                                     //                 itemCount: _homeController
              //                                     //                         .listOfSelectedSectionItems
              //                                     //                         .isNotEmpty
              //                                     //                     ? _homeController
              //                                     //                         .listOfSelectedSectionItems
              //                                     //                         .length
              //                                     //                     : 0,
              //                                     //                 itemBuilder:
              //                                     //                     (BuildContext
              //                                     //                             context,
              //                                     //                         int index) {
              //                                     //                   return Column(
              //                                     //                     children: [
              //                                     //                       Row(
              //                                     //                         children: [
              //                                     //                           SizedBox(
              //                                     //                             width: 18,
              //                                     //                           ),
              //                                     //                           Expanded(
              //                                     //                             flex: 2,
              //                                     //                             child: Container(
              //                                     //                                 //  width: MediaQuery.of(context).size.width *,
              //                                     //                                 height: 120,
              //                                     //                                 decoration: BoxDecoration(
              //                                     //                                   color: Colors.transparent,
              //                                     //                                   //     color: Colors.black,
              //                                     //                                   borderRadius: const BorderRadius.only(
              //                                     //                                     topLeft: Radius.circular(5.0),
              //                                     //                                     topRight: Radius.circular(5.0),
              //                                     //                                     bottomLeft: Radius.circular(5.0),
              //                                     //                                     bottomRight: Radius.circular(5.0),
              //                                     //                                   ),
              //                                     //                                 ),
              //                                     //                                 child: Row(
              //                                     //                                   mainAxisAlignment: MainAxisAlignment.start,
              //                                     //                                   mainAxisSize: MainAxisSize.max,
              //                                     //                                   children: [
              //                                     //                                     SizedBox(
              //                                     //                                       width: 5,
              //                                     //                                     ),
              //                                     //                                     Expanded(
              //                                     //                                       flex: 6,
              //                                     //                                       child: Container(
              //                                     //                                         decoration: BoxDecoration(
              //                                     //                                           color: Colors.transparent,
              //                                     //                                           borderRadius: const BorderRadius.only(
              //                                     //                                             // topLeft: Radius.circular(8.0),
              //                                     //                                             topRight: Radius.circular(8.0),
              //                                     //                                             // bottomLeft: Radius.circular(8.0),
              //                                     //                                             bottomRight: Radius.circular(8.0),
              //                                     //                                           ),
              //                                     //                                         ),
              //                                     //                                         child: Column(
              //                                     //                                           children: [
              //                                     //                                             SizedBox(
              //                                     //                                               height: 5.0,
              //                                     //                                             ),
              //                                     //                                             Expanded(
              //                                     //                                               flex: 3,
              //                                     //                                               child: Container(
              //                                     //                                                 //color: Colors.yellow,
              //                                     //                                                 child: Row(
              //                                     //                                                   mainAxisSize: MainAxisSize.max,
              //                                     //                                                   //   mainAxisAlignment: MainAxisAlignment.start,

              //                                     //                                                   children: [
              //                                     //                                                     Expanded(
              //                                     //                                                       flex: 8,
              //                                     //                                                       child: Container(
              //                                     //                                                         // color: Colors.yellow,
              //                                     //                                                         child: CustomTextWidget(
              //                                     //                                                           text: _languagFilterHelper.languageFilter(_homeController.listOfSelectedSectionItems[index].name, _welcomeController.languageSelectedIndex.value),
              //                                     //                                                           color: Colors.black,
              //                                     //                                                           fontFamily: '.SF Pro Display',
              //                                     //                                                           fontSize: 14.0,
              //                                     //                                                           fontWeight: FontWeight.w600,
              //                                     //                                                         ),
              //                                     //                                                       ),
              //                                     //                                                     ),
              //                                     //                                                     Expanded(
              //                                     //                                                       flex: 2,
              //                                     //                                                       child: ContentInsideColor(width: 25.0, height: 25.0, shape: BoxShape.circle, roundContainerOutsideColor: Color(0xFFD3D3D3), icon: Icons.favorite, iconColor: Colors.white, iconSize: 14.0),
              //                                     //                                                     ),
              //                                     //                                                     SizedBox(
              //                                     //                                                       width: 8,
              //                                     //                                                     ),
              //                                     //                                                   ],
              //                                     //                                                 ),
              //                                     //                                               ),
              //                                     //                                             ),
              //                                     //                                             // SizedBox(
              //                                     //                                             //   height:
              //                                     //                                             //       10,
              //                                     //                                             // ),
              //                                     //                                             Expanded(
              //                                     //                                               flex: 3,
              //                                     //                                               child: Container(
              //                                     //                                                 decoration: BoxDecoration(
              //                                     //                                                   color: Colors.transparent,
              //                                     //                                                   borderRadius: const BorderRadius.only(
              //                                     //                                                     // topLeft: Radius.circular(8.0),
              //                                     //                                                     topRight: Radius.circular(8.0),
              //                                     //                                                     // bottomLeft: Radius.circular(8.0),
              //                                     //                                                     bottomRight: Radius.circular(8.0),
              //                                     //                                                   ),
              //                                     //                                                 ),
              //                                     //                                                 child: CustomTextWidget(
              //                                     //                                                   text: _languagFilterHelper.languageFilter(_homeController.listOfSelectedSectionItems[index].desc, _welcomeController.languageSelectedIndex.value),
              //                                     //                                                   color: Color(0xFF909090),
              //                                     //                                                   fontFamily: '.SF Pro Display',
              //                                     //                                                   fontSize: 13.0,
              //                                     //                                                   fontWeight: FontWeight.normal,
              //                                     //                                                 ),
              //                                     //                                               ),
              //                                     //                                             ),
              //                                     //                                             SizedBox(
              //                                     //                                               height: 10,
              //                                     //                                             ),
              //                                     //                                             Expanded(
              //                                     //                                               flex: 4,
              //                                     //                                               child: Container(
              //                                     //                                                 color: Colors.transparent,
              //                                     //                                                 child: Row(
              //                                     //                                                   mainAxisSize: MainAxisSize.max,
              //                                     //                                                   //   mainAxisAlignment: MainAxisAlignment.start,

              //                                     //                                                   children: [
              //                                     //                                                     Expanded(
              //                                     //                                                       flex: 5,
              //                                     //                                                       child: Container(
              //                                     //                                                         // color: Colors.yellow,
              //                                     //                                                         child: CustomTextWidget(
              //                                     //                                                           text: " ${_welcomeController.currencyChosen.value} ${_homeController.listOfSelectedSectionItems[index].price}",
              //                                     //                                                           color: CustomColor.MaroonTheme,
              //                                     //                                                           fontFamily: '.SF Pro Display',
              //                                     //                                                           fontSize: 13.0,
              //                                     //                                                           fontWeight: FontWeight.bold,
              //                                     //                                                         ),
              //                                     //                                                       ),
              //                                     //                                                     ),
              //                                     //                                                     Expanded(
              //                                     //                                                       flex: 8,
              //                                     //                                                       child: Container(
              //                                     //                                                         height: 34,
              //                                     //                                                         child: Row(mainAxisSize: MainAxisSize.max, children: [
              //                                     //                                                           Expanded(
              //                                     //                                                             flex: 3,
              //                                     //                                                             child: Container(
              //                                     //                                                               // color: Colors.blueAccent,

              //                                     //                                                               decoration: BoxDecoration(
              //                                     //                                                                 color: const Color(0xFFDBDBDB),
              //                                     //                                                                 borderRadius: const BorderRadius.only(
              //                                     //                                                                   topLeft: Radius.circular(3.0),
              //                                     //                                                                   topRight: Radius.circular(3.0),
              //                                     //                                                                   bottomLeft: Radius.circular(3.0),
              //                                     //                                                                   bottomRight: Radius.circular(3.0),
              //                                     //                                                                 ),
              //                                     //                                                               ),
              //                                     //                                                               child: Center(
              //                                     //                                                                 child: Icon(
              //                                     //                                                                   Icons.remove,
              //                                     //                                                                   color: Colors.black,
              //                                     //                                                                 ),
              //                                     //                                                               ),
              //                                     //                                                             ),
              //                                     //                                                           ),
              //                                     //                                                           Expanded(
              //                                     //                                                             flex: 4,
              //                                     //                                                             child: Container(
              //                                     //                                                               // color: Colors.blueAccent,
              //                                     //                                                               color: Colors.transparent,

              //                                     //                                                               child: Center(
              //                                     //                                                                 child: CustomTextWidget(
              //                                     //                                                                   text: 0.toString(),
              //                                     //                                                                   fontFamily: '.SF Pro Display',
              //                                     //                                                                   fontSize: 20.0,
              //                                     //                                                                   fontWeight: FontWeight.bold,
              //                                     //                                                                   color: Colors.black,
              //                                     //                                                                 ),
              //                                     //                                                               ),
              //                                     //                                                             ),
              //                                     //                                                           ),
              //                                     //                                                           Expanded(
              //                                     //                                                             flex: 3,
              //                                     //                                                             child: Container(
              //                                     //                                                               // color: Colors.blueAccent,

              //                                     //                                                               decoration: BoxDecoration(
              //                                     //                                                                 color: CustomColor.MaroonTheme,
              //                                     //                                                                 borderRadius: const BorderRadius.only(
              //                                     //                                                                   topLeft: Radius.circular(3.0),
              //                                     //                                                                   topRight: Radius.circular(3.0),
              //                                     //                                                                   bottomLeft: Radius.circular(3.0),
              //                                     //                                                                   bottomRight: Radius.circular(3.0),
              //                                     //                                                                 ),
              //                                     //                                                               ),
              //                                     //                                                               child: Center(
              //                                     //                                                                 child: Icon(
              //                                     //                                                                   Icons.add,
              //                                     //                                                                   color: Colors.white,
              //                                     //                                                                 ),
              //                                     //                                                               ),
              //                                     //                                                             ),
              //                                     //                                                           ),
              //                                     //                                                         ]),
              //                                     //                                                       ),
              //                                     //                                                     ),
              //                                     //                                                     SizedBox(
              //                                     //                                                       width: 18,
              //                                     //                                                     ),
              //                                     //                                                   ],
              //                                     //                                                 ),
              //                                     //                                               ),
              //                                     //                                             ),
              //                                     //                                           ],
              //                                     //                                         ),
              //                                     //                                       ),
              //                                     //                                     ),
              //                                     //                                     Expanded(
              //                                     //                                       flex: 4,
              //                                     //                                       child: ClipRRect(
              //                                     //                                         borderRadius: BorderRadius.circular(10.0),
              //                                     //                                         child: FadeInImage.memoryNetwork(
              //                                     //                                           placeholder: kTransparentImage,
              //                                     //                                           image: _homeController.listOfSelectedSectionItems[index].img_url ?? 'https://em-cdn.eatmubarak.pk/flutter/restaurant.png',
              //                                     //                                           fit: BoxFit.fitWidth,
              //                                     //                                           height: 120.0,
              //                                     //                                           width: 80,
              //                                     //                                         ),
              //                                     //                                       ),
              //                                     //                                     ),
              //                                     //                                     SizedBox(
              //                                     //                                       width: 8,
              //                                     //                                     ),
              //                                     //                                   ],
              //                                     //                                 )),
              //                                     //                           ),
              //                                     //                           SizedBox(
              //                                     //                             width: 10,
              //                                     //                           ),
              //                                     //                         ],
              //                                     //                       ),
              //                                     //                       const Divider(
              //                                     //                         color:
              //                                     //                             Color(0xFFE8E8E8),
              //                                     //                         thickness:
              //                                     //                             1,
              //                                     //                         indent:
              //                                     //                             20,
              //                                     //                         endIndent:
              //                                     //                             20,
              //                                     //                       ),
              //                                     //                     ],
              //                                     //                   );
              //                                     //                   //
              //                                     //                 }),
              //                                     //       ),
              //                                     //     ),
              //                                     //   ],
              //                                     // );
              //                                   }),
              //                             ),
              //                           ],
              //                         );
              //                       }),

              //                       // Row(
              //                       //   children: [
              //                       //     Expanded(
              //                       //       flex: 2,
              //                       //       child: MediaQuery.removePadding(
              //                       //         context: context,
              //                       //         removeTop: true,
              //                       //         child: ListView.builder(
              //                       //             physics:
              //                       //                 const NeverScrollableScrollPhysics(),
              //                       //             shrinkWrap: true,
              //                       //             scrollDirection: Axis.vertical,
              //                       //             itemCount: _homeController
              //                       //                     .listOfSelectedSectionItems
              //                       //                     .isNotEmpty
              //                       //                 ? _homeController
              //                       //                     .listOfSelectedSectionItems
              //                       //                     .length
              //                       //                 : 0,
              //                       //             itemBuilder:
              //                       //                 (BuildContext context,
              //                       //                     int index) {
              //                       //               return Column(
              //                       //                 children: [
              //                       //                   Row(
              //                       //                     children: [
              //                       //                       SizedBox(
              //                       //                         width: 18,
              //                       //                       ),
              //                       //                       Expanded(
              //                       //                         flex: 2,
              //                       //                         child: Container(
              //                       //                             //  width: MediaQuery.of(context).size.width *,
              //                       //                             height: 120,
              //                       //                             decoration:
              //                       //                                 BoxDecoration(
              //                       //                               color: Colors
              //                       //                                   .transparent,
              //                       //                               //     color: Colors.black,
              //                       //                               borderRadius:
              //                       //                                   const BorderRadius
              //                       //                                       .only(
              //                       //                                 topLeft: Radius
              //                       //                                     .circular(
              //                       //                                         5.0),
              //                       //                                 topRight: Radius
              //                       //                                     .circular(
              //                       //                                         5.0),
              //                       //                                 bottomLeft:
              //                       //                                     Radius.circular(
              //                       //                                         5.0),
              //                       //                                 bottomRight:
              //                       //                                     Radius.circular(
              //                       //                                         5.0),
              //                       //                               ),
              //                       //                             ),
              //                       //                             child: Row(
              //                       //                               mainAxisAlignment:
              //                       //                                   MainAxisAlignment
              //                       //                                       .start,
              //                       //                               mainAxisSize:
              //                       //                                   MainAxisSize
              //                       //                                       .max,
              //                       //                               children: [
              //                       //                                 SizedBox(
              //                       //                                   width: 5,
              //                       //                                 ),
              //                       //                                 Expanded(
              //                       //                                   flex: 6,
              //                       //                                   child:
              //                       //                                       Container(
              //                       //                                     decoration:
              //                       //                                         BoxDecoration(
              //                       //                                       color:
              //                       //                                           Colors.transparent,
              //                       //                                       borderRadius:
              //                       //                                           const BorderRadius.only(
              //                       //                                         // topLeft: Radius.circular(8.0),
              //                       //                                         topRight:
              //                       //                                             Radius.circular(8.0),
              //                       //                                         // bottomLeft: Radius.circular(8.0),
              //                       //                                         bottomRight:
              //                       //                                             Radius.circular(8.0),
              //                       //                                       ),
              //                       //                                     ),
              //                       //                                     child:
              //                       //                                         Column(
              //                       //                                       children: [
              //                       //                                         SizedBox(
              //                       //                                           height: 5.0,
              //                       //                                         ),
              //                       //                                         Expanded(
              //                       //                                           flex: 3,
              //                       //                                           child: Container(
              //                       //                                             //color: Colors.yellow,
              //                       //                                             child: Row(
              //                       //                                               mainAxisSize: MainAxisSize.max,
              //                       //                                               //   mainAxisAlignment: MainAxisAlignment.start,

              //                       //                                               children: [
              //                       //                                                 Expanded(
              //                       //                                                   flex: 8,
              //                       //                                                   child: Container(
              //                       //                                                     // color: Colors.yellow,
              //                       //                                                     child: CustomTextWidget(
              //                       //                                                       text: _languagFilterHelper.languageFilter(_homeController.listOfSelectedSectionItems[index].name, _welcomeController.languageSelectedIndex.value),
              //                       //                                                       color: Colors.black,
              //                       //                                                       fontFamily: '.SF Pro Display',
              //                       //                                                       fontSize: 14.0,
              //                       //                                                       fontWeight: FontWeight.w600,
              //                       //                                                     ),
              //                       //                                                   ),
              //                       //                                                 ),
              //                       //                                                 Expanded(
              //                       //                                                   flex: 2,
              //                       //                                                   child: ContentInsideColor(width: 25.0, height: 25.0, shape: BoxShape.circle, roundContainerOutsideColor: Color(0xFFD3D3D3), icon: Icons.favorite, iconColor: Colors.white, iconSize: 14.0),
              //                       //                                                 ),
              //                       //                                                 SizedBox(
              //                       //                                                   width: 8,
              //                       //                                                 ),
              //                       //                                               ],
              //                       //                                             ),
              //                       //                                           ),
              //                       //                                         ),
              //                       //                                         // SizedBox(
              //                       //                                         //   height:
              //                       //                                         //       10,
              //                       //                                         // ),
              //                       //                                         Expanded(
              //                       //                                           flex: 3,
              //                       //                                           child: Container(
              //                       //                                             decoration: BoxDecoration(
              //                       //                                               color: Colors.transparent,
              //                       //                                               borderRadius: const BorderRadius.only(
              //                       //                                                 // topLeft: Radius.circular(8.0),
              //                       //                                                 topRight: Radius.circular(8.0),
              //                       //                                                 // bottomLeft: Radius.circular(8.0),
              //                       //                                                 bottomRight: Radius.circular(8.0),
              //                       //                                               ),
              //                       //                                             ),
              //                       //                                             child: CustomTextWidget(
              //                       //                                               text: _languagFilterHelper.languageFilter(_homeController.listOfSelectedSectionItems[index].desc, _welcomeController.languageSelectedIndex.value),
              //                       //                                               color: Color(0xFF909090),
              //                       //                                               fontFamily: '.SF Pro Display',
              //                       //                                               fontSize: 13.0,
              //                       //                                               fontWeight: FontWeight.normal,
              //                       //                                             ),
              //                       //                                           ),
              //                       //                                         ),
              //                       //                                         SizedBox(
              //                       //                                           height: 10,
              //                       //                                         ),
              //                       //                                         Expanded(
              //                       //                                           flex: 4,
              //                       //                                           child: Container(
              //                       //                                             color: Colors.transparent,
              //                       //                                             child: Row(
              //                       //                                               mainAxisSize: MainAxisSize.max,
              //                       //                                               //   mainAxisAlignment: MainAxisAlignment.start,

              //                       //                                               children: [
              //                       //                                                 Expanded(
              //                       //                                                   flex: 5,
              //                       //                                                   child: Container(
              //                       //                                                     // color: Colors.yellow,
              //                       //                                                     child: CustomTextWidget(
              //                       //                                                       text: " ${_welcomeController.currencyChosen.value} ${_homeController.listOfSelectedSectionItems[index].price}",
              //                       //                                                       color: CustomColor.MaroonTheme,
              //                       //                                                       fontFamily: '.SF Pro Display',
              //                       //                                                       fontSize: 13.0,
              //                       //                                                       fontWeight: FontWeight.bold,
              //                       //                                                     ),
              //                       //                                                   ),
              //                       //                                                 ),
              //                       //                                                 Expanded(
              //                       //                                                   flex: 8,
              //                       //                                                   child: Container(
              //                       //                                                     height: 34,
              //                       //                                                     child: Row(mainAxisSize: MainAxisSize.max, children: [
              //                       //                                                       Expanded(
              //                       //                                                         flex: 3,
              //                       //                                                         child: Container(
              //                       //                                                           // color: Colors.blueAccent,

              //                       //                                                           decoration: BoxDecoration(
              //                       //                                                             color: const Color(0xFFDBDBDB),
              //                       //                                                             borderRadius: const BorderRadius.only(
              //                       //                                                               topLeft: Radius.circular(3.0),
              //                       //                                                               topRight: Radius.circular(3.0),
              //                       //                                                               bottomLeft: Radius.circular(3.0),
              //                       //                                                               bottomRight: Radius.circular(3.0),
              //                       //                                                             ),
              //                       //                                                           ),
              //                       //                                                           child: Center(
              //                       //                                                             child: Icon(
              //                       //                                                               Icons.remove,
              //                       //                                                               color: Colors.black,
              //                       //                                                             ),
              //                       //                                                           ),
              //                       //                                                         ),
              //                       //                                                       ),
              //                       //                                                       Expanded(
              //                       //                                                         flex: 4,
              //                       //                                                         child: Container(
              //                       //                                                           // color: Colors.blueAccent,
              //                       //                                                           color: Colors.transparent,

              //                       //                                                           child: Center(
              //                       //                                                             child: CustomTextWidget(
              //                       //                                                               text: 0.toString(),
              //                       //                                                               fontFamily: '.SF Pro Display',
              //                       //                                                               fontSize: 20.0,
              //                       //                                                               fontWeight: FontWeight.bold,
              //                       //                                                               color: Colors.black,
              //                       //                                                             ),
              //                       //                                                           ),
              //                       //                                                         ),
              //                       //                                                       ),
              //                       //                                                       Expanded(
              //                       //                                                         flex: 3,
              //                       //                                                         child: Container(
              //                       //                                                           // color: Colors.blueAccent,

              //                       //                                                           decoration: BoxDecoration(
              //                       //                                                             color: CustomColor.MaroonTheme,
              //                       //                                                             borderRadius: const BorderRadius.only(
              //                       //                                                               topLeft: Radius.circular(3.0),
              //                       //                                                               topRight: Radius.circular(3.0),
              //                       //                                                               bottomLeft: Radius.circular(3.0),
              //                       //                                                               bottomRight: Radius.circular(3.0),
              //                       //                                                             ),
              //                       //                                                           ),
              //                       //                                                           child: Center(
              //                       //                                                             child: Icon(
              //                       //                                                               Icons.add,
              //                       //                                                               color: Colors.white,
              //                       //                                                             ),
              //                       //                                                           ),
              //                       //                                                         ),
              //                       //                                                       ),
              //                       //                                                     ]),
              //                       //                                                   ),
              //                       //                                                 ),
              //                       //                                                 SizedBox(
              //                       //                                                   width: 18,
              //                       //                                                 ),
              //                       //                                               ],
              //                       //                                             ),
              //                       //                                           ),
              //                       //                                         ),
              //                       //                                       ],
              //                       //                                     ),
              //                       //                                   ),
              //                       //                                 ),
              //                       //                                 Expanded(
              //                       //                                   flex: 4,
              //                       //                                   child:
              //                       //                                       ClipRRect(
              //                       //                                     borderRadius:
              //                       //                                         BorderRadius.circular(10.0),
              //                       //                                     child: FadeInImage
              //                       //                                         .memoryNetwork(
              //                       //                                       placeholder:
              //                       //                                           kTransparentImage,
              //                       //                                       image:
              //                       //                                           _homeController.listOfSelectedSectionItems[index].img_url ?? 'https://em-cdn.eatmubarak.pk/flutter/restaurant.png',
              //                       //                                       fit: BoxFit
              //                       //                                           .fitWidth,
              //                       //                                       height:
              //                       //                                           120.0,
              //                       //                                       width:
              //                       //                                           80,
              //                       //                                     ),
              //                       //                                   ),
              //                       //                                 ),
              //                       //                                 SizedBox(
              //                       //                                   width: 8,
              //                       //                                 ),
              //                       //                               ],
              //                       //                             )),
              //                       //                       ),
              //                       //                       SizedBox(
              //                       //                         width: 10,
              //                       //                       ),
              //                       //                     ],
              //                       //                   ),
              //                       //                   const Divider(
              //                       //                     color:
              //                       //                         Color(0xFFE8E8E8),
              //                       //                     thickness: 1,
              //                       //                     indent: 20,
              //                       //                     endIndent: 20,
              //                       //                   ),
              //                       //                 ],
              //                       //               );
              //                       //               //
              //                       //             }),
              //                       //       ),
              //                       //     ),
              //                       //   ],

              //                       // ),
              //                       SizedBox(
              //                         height: 50,
              //                       ),
              //                     ],
              //                   ),
              //                 ),
              //               ),
              //               // SizedBox(
              //               //   width: 20,
              //               // ),
              //             ],
              //           );
              //         }),