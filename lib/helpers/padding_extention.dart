import 'package:flutter/material.dart';

extension padding on Widget {
  Widget onlyPadding(
      {double top = 0, double bottom = 0, double left = 0, double right = 0}) {
    return Padding(
      padding: EdgeInsets.only(
        left: left,
        right: right,
        top: top,
        bottom: bottom,
      ),
      child: this,
    );
  }

  Widget symmetricPadding({double vertical = 0, double horizontal = 0}) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical),
      child: this,
    );
  }
}
