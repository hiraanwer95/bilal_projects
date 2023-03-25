import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../theme/colors.dart';
import '../CustomText/custom_text.dart';

class CustomButton extends StatelessWidget {

  final btnTextFontSize, btnBackgroundColor, borderRadius, btnText, btnTextColor, btnTextFontFamily, onPressed;
  const CustomButton({
     this.btnTextFontSize, this.btnBackgroundColor, this.borderRadius, this.btnText, this.btnTextColor, this.btnTextFontFamily, this.onPressed,
  }) : super();

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        shape: MaterialStateProperty
            .all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
          borderRadius:
              BorderRadius.circular(
                  borderRadius),
        )),
        backgroundColor:
            MaterialStateProperty.all(
                btnBackgroundColor),
      ),
      child:  CustomTextWidget(
        text: btnText,
        color: btnTextColor,
        fontSize: btnTextFontSize,
        fontFamily: btnTextFontFamily,
      ),
    );
  }
}
