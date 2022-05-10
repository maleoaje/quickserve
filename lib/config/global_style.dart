/*
this is global style
This file is used to styling a whole application
 */

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class GlobalStyle {
  // appBar
  static const Color appBarIconThemeColor = Colors.black;
  static const double appBarElevation = 0;
  static const SystemUiOverlayStyle appBarSystemOverlayStyle =
      SystemUiOverlayStyle.dark;
  static const Color appBarBackgroundColor = Colors.white;
  static const TextStyle appBarTitle =
      TextStyle(fontSize: 18, color: Colors.black);
  /*
  this is used for height at product card using gridDelegate
  if you change font size or using custom font such as google font, sometimes there is an error said
  "Bottom overflowed by xx pixel" depends on the font height (Every font has a different height)
  so you need to change below
  */
  static const double gridDelegateRatio = 0.625; // lower is more longer
  static const double gridDelegateFlashsaleRatio = 3; // lower is more longer
  static const double horizontalProductHeightMultiplication =
      1.90; // higher is more longer

  // styling product card
  static const TextStyle normalText = TextStyle(
      fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xff303030));
  static const TextStyle productName = TextStyle(
      fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xff303030));
  static const TextStyle productPrice = TextStyle(
      fontSize: 14, fontWeight: FontWeight.w600, color: Color(0xff303030));
  static const TextStyle productDesc = TextStyle(
      fontSize: 12, fontWeight: FontWeight.w300, color: Color(0xff303030));

  static const TextStyle normalText2 = TextStyle(
      fontSize: 12, fontWeight: FontWeight.w400, color: Color(0xff303030));
  static const TextStyle h3 =
      TextStyle(fontSize: 16, fontWeight: FontWeight.bold);

  static const TextStyle liteText = TextStyle(
      fontSize: 12,
      color: Color.fromARGB(255, 68, 68, 68),
      fontWeight: FontWeight.w200);

  static const TextStyle serverTip =
      TextStyle(fontSize: 16, color: Color(0xff361616));

  static const TextStyle subTitle = TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w700,
      color: Color.fromARGB(255, 0, 0, 0));

  static const TextStyle h4 = TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w700,
      color: Color.fromARGB(255, 0, 0, 0));
  static const TextStyle restaurantTitle = TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w700,
      color: Color.fromARGB(255, 0, 0, 0));

  static const TextStyle restaurantDesc = TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: Color.fromARGB(255, 163, 163, 163));

  static const TextStyle restaurantDistDelivery = TextStyle(
      fontSize: 11,
      fontWeight: FontWeight.w300,
      color: Color.fromARGB(255, 123, 123, 123));

  static const TextStyle pageTitle = TextStyle(
      fontSize: 25,
      fontWeight: FontWeight.w800,
      color: Color.fromARGB(255, 0, 0, 0));
}
