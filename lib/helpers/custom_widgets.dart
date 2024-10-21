import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'constant.dart';

class MyText extends StatelessWidget {
  String? text;
  double? fontSize;
  FontWeight? fontWeightText;
  Color? textColor;
  TextDecoration? textDecorationText;

  MyText({
    required this.text,
    this.fontSize,
    this.fontWeightText,
    this.textColor,
    this.textDecorationText,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text ?? "",
      style: TextStyle(
        decoration: textDecorationText,
        fontFamily: 'poppins',
        fontSize: fontSize,
        fontWeight: fontWeightText,
        color: textColor,
      ),
    );
  }
}
