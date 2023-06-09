import 'package:flutter/material.dart';
import 'dart:math' as math;

Color primary = const Color(0xFF678daf);

class Styles {
  static Color primaryColor = primary;
  static Color textColor = const Color(0xFF3b3b3b);
  static Color bgColor = const Color(0xFFeeedf2);
  static Color orageColor = const Color(0xFFF37B67);
  static Color blueGreyColor = const Color(0xFF526799);
  static Color kakiColor = const Color(0xFFd2bdb6);
  static Color randomColor =
      Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
  static TextStyle textStyle =
      TextStyle(fontSize: 16, color: textColor, fontWeight: FontWeight.w500);
  static TextStyle headLineStyle1 =
      TextStyle(fontSize: 26, color: textColor, fontWeight: FontWeight.bold);
  static TextStyle headLineStyle1Kaki =
      TextStyle(fontSize: 26, color: kakiColor, fontWeight: FontWeight.bold);
  static TextStyle headLineStyle2 =
      TextStyle(fontSize: 21, color: textColor, fontWeight: FontWeight.bold);
  static TextStyle headLineStyle2Kaki =
      TextStyle(fontSize: 21, color: kakiColor, fontWeight: FontWeight.bold);
  static TextStyle headLineStyle2White = const TextStyle(
      fontSize: 21, color: Colors.white, fontWeight: FontWeight.bold);
  static TextStyle headLineStyle3 = TextStyle(
      fontSize: 17, color: Colors.grey.shade500, fontWeight: FontWeight.w500);
  static TextStyle headLineStyle3White = const TextStyle(
      fontSize: 17, color: Colors.white, fontWeight: FontWeight.w500);
  static TextStyle headLineStyle4 = TextStyle(
      fontSize: 14, color: Colors.grey.shade500, fontWeight: FontWeight.w500);
  static TextStyle headLineStyle4White = const TextStyle(
      fontSize: 14, color: Colors.white, fontWeight: FontWeight.w500);
}
