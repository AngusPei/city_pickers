import 'package:flutter/material.dart';

// 公共的基本样式
class BaseStyle {
  final double fontSize;
  final String fontFamily; 
  final Color color;
  final Color activeColor;
  final Color backgroundColor;
  final double height;
  final Color backgroundActiveColor;

  BaseStyle(
      {this.color,
      this.fontFamily,
      this.fontSize,
      this.height,
      this.activeColor,
      this.backgroundActiveColor,
      this.backgroundColor});

  BaseStyle copyWith(
      {double fontSize,
      String fontFamily,
      Color color,
      double height,
      Color activeColor,
      Color backgroundColor,
      Color backgroundActiveColor}) {
//    print("copyWidth >>> fontSize: ${fontSize ?? this.fontSize}");
    return BaseStyle(
        fontSize: fontSize ?? this.fontSize,
        fontFamily: fontFamily?? this.fontFamily,
        color: color ?? this.color,
        height: height ?? this.height,
        activeColor: activeColor ?? this.activeColor,
        backgroundColor: backgroundColor ?? this.backgroundColor,
        backgroundActiveColor:
            backgroundActiveColor ?? this.backgroundActiveColor);
  }

  BaseStyle merge(BaseStyle other) {
    if (other == null) return this;
    return copyWith(
        fontSize: other.fontSize,
        fontFamily: other.fontFamily,
        color: other.color,
        height: other.height,
        activeColor: other.activeColor,
        backgroundColor: other.backgroundColor,
        backgroundActiveColor: other.backgroundActiveColor);
  }
}
