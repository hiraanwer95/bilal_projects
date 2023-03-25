import 'package:blink_sdk/controllers/home_controller.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InputTextField extends StatelessWidget {
  InputTextField({
    this.isTextFieldFontBlack = false,
    this.isNextNodeFocus = false,
    this.isSearch,
    this.roundedCornerRadius,
    this.hintText,
    this.hintTextColor,
    this.width,
    this.height,
    this.fillColor,
    this.strokeColor,
    this.isNumberInputType = false,
    this.controller,
    this.hintTextSize,
    this.textFontSize,
    this.isPrefixIcon = false,
    this.isSearchTextField,
    this.isTextAlignLeft = true,
    this.onChangeFunction,
  }) : super();

  var roundedCornerRadius,
      hintText,
      hintTextColor,
      width,
      height,
      fillColor,
      strokeColor,
      isNumberInputType,
      controller,
      hintTextSize,
      textFontSize,
      isPrefixIcon,
      isSearchTextField,
      isTextFieldFontBlack = false,
      isTextAlignLeft,
      isNextNodeFocus;

  var isSearch;
  var onChangeFunction;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: width,
        height: height,
        child: TextField(
          textInputAction: isNextNodeFocus
              ? TextInputAction.next
              : TextInputAction.done, // Moves focus to next.

          onChanged: (String text){
             onChangeFunction.call(text);
          },

          style: TextStyle(
            fontSize: textFontSize,
            color:
                isTextFieldFontBlack ? Colors.black : const Color(0xFFAFAFAF),
          ),
          autocorrect: true,
          textAlign: isTextAlignLeft ? TextAlign.left : TextAlign.center,
          textAlignVertical: TextAlignVertical.bottom,
          maxLines: 1,
          controller: controller,
          keyboardType:
              isNumberInputType ? TextInputType.number : TextInputType.text,
          decoration: isPrefixIcon
              ? InputDecoration(
                  prefixIcon: InkWell(
                    onTap: () {
                      isSearch.isSearchBar.value = false;
                    },
                    child: Icon(
                      Icons.arrow_back_ios_new_sharp,
                      size: 12.0,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(roundedCornerRadius),

                    borderSide: BorderSide(
                      color: strokeColor,
                    ), //<-- SEE HERE
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(roundedCornerRadius),

                    borderSide: BorderSide(
                      color: strokeColor,
                    ), //<-- SEE HERE
                  ),
                  filled: true,
                  hintStyle: TextStyle(
                      color: hintTextColor,
                      fontFamily: '.SF Pro Display',
                      fontSize: hintTextSize),
                  hintText: hintText,
                  fillColor: fillColor)
              : InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(roundedCornerRadius),

                    borderSide: BorderSide(
                      color: strokeColor,
                    ), //<-- SEE HERE
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(roundedCornerRadius),

                    borderSide: BorderSide(
                      color: strokeColor,
                    ), //<-- SEE HERE
                  ),
                  filled: true,
                  hintStyle: TextStyle(
                      color: hintTextColor,
                      fontFamily: '.SF Pro Display',
                      fontSize: hintTextSize),
                  hintText: hintText,
                  fillColor: fillColor),
        ));
  }
}
