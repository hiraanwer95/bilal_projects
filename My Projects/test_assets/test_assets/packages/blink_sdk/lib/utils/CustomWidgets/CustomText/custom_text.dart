// ignore: must_be_immutable
import 'package:flutter/cupertino.dart';

class CustomTextWidget extends StatelessWidget {
  final text;
  final color;
  final fontFamily;
  final fontWeight;
  final fontSize;
  final textAlignment;
  final isUnderline;

  // ignore: prefer_typing_uninitialized_variables
  const CustomTextWidget({
    this.isUnderline = false,
    @required this.text,
    this.color,
    this.fontFamily,
    this.fontWeight,
    this.fontSize,
    this.textAlignment,
  }) : super();

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.left,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
        fontFamily: fontFamily,
        decoration:
            isUnderline ? TextDecoration.underline : TextDecoration.none,
      ),
    );
  }
}
