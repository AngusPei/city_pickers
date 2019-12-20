import 'package:flutter/material.dart';

class TagContainer extends StatelessWidget {
  final String content;
  final double height;
  final double radius;
  final double padding;
  final double fontSize;
  final Color fontColor;
  final Color bgColor;
  final double borderWidth;
  final Color borderColor;
  final FontWeight fontWeight;

  TagContainer({
    @required this.content,
    this.height = 18.0,
    this.radius = 9.0,
    this.padding = 8.0,
    this.fontSize = 12.0,
    this.fontColor = const Color(0xff999999),
    this.bgColor = const Color(0xfff2f3f7),
    this.borderWidth = 0.0,
    this.borderColor = Colors.white,
    Key key,
    this.fontWeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (content == null) return Wrap();
    return IntrinsicWidth(
      child: Container(
        height: height,
        padding: EdgeInsets.symmetric(horizontal: padding),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border.all(
            width: borderWidth,
            color: borderColor,
          ),
          color: bgColor,
          borderRadius: BorderRadius.circular(radius),
        ),
        child: Text(
          content,
          style: TextStyle(
            fontSize: fontSize,
            color: fontColor,
            fontWeight: fontWeight,
          ),
        ),
      ),
    );
  }
}
