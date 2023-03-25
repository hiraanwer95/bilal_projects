import 'package:blink_sdk/utils/CustomWidgets/CustomText/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContentInsideColor extends StatelessWidget {
  final width,
      height,
      roundContainerOutsideColor,
      shape,
      icon,
      iconSize,
      iconColor,
      isDigit,
      text,
      fontSize
      ;
  const ContentInsideColor({
    this.fontSize,
    this.width,
    this.height,
    this.roundContainerOutsideColor,
    this.shape,
    this.icon,
    this.iconSize,
    this.iconColor,
    this.isDigit = true,
    this.text,
  }) : super();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width, //30
      height: height, //30
      decoration: BoxDecoration(
        shape: shape, //BoxShape.circle
        color: roundContainerOutsideColor, //Color(0xFFD3D3D3)
      ),
      child: Center(
        child: isDigit
            ? Icon(
                icon, //Icons.favorite
                color: iconColor, //Colors.white
                size: iconSize, //20.0
              )
            : CustomTextWidget(
                text: text,
                color: Colors.black,
                fontFamily: '.SF Pro Display',
                fontSize: fontSize == 14 ? fontSize : 12.0,
                fontWeight: text == "1" ? FontWeight.bold : FontWeight.w400,
              ),
      ),
    );
  }
}
