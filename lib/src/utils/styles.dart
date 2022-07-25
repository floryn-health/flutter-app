import 'package:floryn/src/utils/colors.dart';
import 'package:floryn/src/utils/strings.dart';
import 'package:flutter/material.dart';

class FlorynTextStyles {
  const FlorynTextStyles();

  static TextStyle h1({FontWeight? fontWeight, Color? fontColor}) => TextStyle(
      fontFamily: ConstantString.fontName,
      fontWeight: fontWeight ?? FontWeight.w700,
      fontSize: 40,
      color: fontColor ?? FlorynColors.neutralColors.textblack);

  static TextStyle h2({FontWeight? fontWeight, Color? fontColor}) => TextStyle(
      fontFamily: ConstantString.fontName,
      fontWeight: fontWeight ?? FontWeight.w700,
      fontSize: 36,
      color: fontColor ?? FlorynColors.neutralColors.textblack);

  static TextStyle h3({FontWeight? fontWeight, Color? fontColor}) => TextStyle(
      fontFamily: ConstantString.fontName,
      fontWeight: fontWeight ?? FontWeight.w600,
      fontSize: 24,
      color: fontColor ?? FlorynColors.neutralColors.textblack);

  static TextStyle h4({FontWeight? fontWeight, Color? fontColor}) => TextStyle(
      fontFamily: ConstantString.fontName,
      fontWeight: fontWeight ?? FontWeight.w600,
      fontSize: 20,
      color: fontColor ?? FlorynColors.neutralColors.textblack);

  static TextStyle m1({FontWeight? fontWeight, Color? fontColor}) => TextStyle(
      fontFamily: ConstantString.fontName,
      fontWeight: fontWeight ?? FontWeight.w600,
      fontSize: 18,
      color: fontColor ?? FlorynColors.neutralColors.textblack);

  static TextStyle m2(
          {FontWeight? fontWeight,
          Color? fontColor,
          TextDecoration? textDecoration}) =>
      TextStyle(
          fontFamily: ConstantString.fontName,
          fontWeight: fontWeight ?? FontWeight.w600,
          fontSize: 16,
          decoration: textDecoration,
          color: fontColor ?? FlorynColors.neutralColors.textblack);

  static TextStyle m3({FontWeight? fontWeight, Color? fontColor}) => TextStyle(
      fontFamily: ConstantString.fontName,
      fontWeight: fontWeight ?? FontWeight.w400,
      fontSize: 14,
      color: fontColor ?? FlorynColors.neutralColors.textblack);

  static TextStyle s1(
          {FontWeight? fontWeight,
          Color? fontColor,
          TextDecoration? textDecoration}) =>
      TextStyle(
          fontFamily: ConstantString.fontName,
          fontWeight: fontWeight ?? FontWeight.w400,
          fontSize: 12,
          decoration: textDecoration,
          color: fontColor ?? FlorynColors.neutralColors.textblack);

  static TextStyle s2({FontWeight? fontWeight, Color? fontColor}) => TextStyle(
      fontFamily: ConstantString.fontName,
      fontWeight: fontWeight ?? FontWeight.w400,
      fontSize: 10,
      color: fontColor ?? FlorynColors.neutralColors.textblack);
}
