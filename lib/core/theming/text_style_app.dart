import 'package:flutter/material.dart';
import 'package:fruits_e_commerce/core/theming/colors_app.dart';
import 'package:fruits_e_commerce/core/theming/font_wieght_helper.dart';

class TextStylesApp {
  static TextStyle font24BlackBold = const TextStyle(
      fontSize: 24, color: Colors.black, fontWeight: FontWeightHelper.bold700);
  static TextStyle font23Black700 = const TextStyle(
      fontSize: 23, color: Colors.black, fontWeight: FontWeightHelper.bold700);
  static TextStyle font13rimarycolor600 = const TextStyle(
      fontSize: 13,
      color: ColorsApp.primarygreen,
      fontWeight: FontWeightHelper.semiBold600);
  static TextStyle font19Black700 = const TextStyle(
      fontSize: 19, color: Colors.black, fontWeight: FontWeightHelper.bold700);
  static TextStyle font13Grey600 = const TextStyle(
      fontSize: 13,
      color: Colors.grey,
      fontWeight: FontWeightHelper.semiBold600);
  static TextStyle font13Grey700 = const TextStyle(
      fontSize: 13, color: Colors.grey, fontWeight: FontWeightHelper.bold700);
  static TextStyle font16White700 = const TextStyle(
      fontSize: 16, color: Colors.white, fontWeight: FontWeightHelper.bold700);
  static TextStyle font16black600 = const TextStyle(
      fontSize: 16,
      color: Colors.black,
      fontWeight: FontWeightHelper.semiBold600);
  static TextStyle font16Primarygreen600 = const TextStyle(
      fontSize: 16,
      color: ColorsApp.primarygreen,
      fontWeight: FontWeightHelper.semiBold600);
  static TextStyle font13Grey400 = const TextStyle(
      fontSize: 13,
      color: Color(0xff949D9E),
      fontWeight: FontWeightHelper.regular400);
}
