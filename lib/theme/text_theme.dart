// ignore_for_file: non_constant_identifier_names, duplicate_ignore

import 'package:extraedge_assignment/theme/colors.dart';
import 'package:flutter/material.dart';

class TextStyleTheme {
  static TextStyle HeadingH1(
      {TextDecoration? decoration, double? height, Color? color}) {
    return TextStyle(
      color: color ?? ColorTheme.primaryBlack,
      fontSize: 24,
      height: height,
      fontWeight: FontWeight.w700,
      fontStyle: FontStyle.normal,
      decoration: decoration,
    );
  }

  static TextStyle HeadingH2(
      {TextDecoration? decoration, double? height, Color? color}) {
    return TextStyle(
      color: color ?? ColorTheme.primaryBlack,
      fontSize: 16,
      height: height,
      fontWeight: FontWeight.w600,
      fontStyle: FontStyle.normal,
      decoration: decoration,
    );
  }

  static TextStyle HeadingH3(
      {TextDecoration? decoration, double? height, Color? color}) {
    return TextStyle(
      color: color ?? ColorTheme.primaryBlack,
      fontSize: 14,
      height: height,
      fontWeight: FontWeight.w600,
      fontStyle: FontStyle.normal,
      decoration: decoration,
    );
  }

  static TextStyle HeadingH4(
      {TextDecoration? decoration, double? height, Color? color}) {
    return TextStyle(
      color: color ?? ColorTheme.primaryBlack,
      fontSize: 12,
      height: height,
      fontWeight: FontWeight.w600,
      fontStyle: FontStyle.normal,
      decoration: decoration,
    );
  }

  static TextStyle HeadingH5(
      {TextDecoration? decoration,
      double? height,
      Color? color,
      FontWeight? fontWeight}) {
    return TextStyle(
      color: color ?? ColorTheme.primaryBlack,
      fontSize: 14,
      height: height,
      fontWeight: fontWeight ?? FontWeight.w400,
      fontStyle: FontStyle.normal,
      decoration: decoration,
    );
  }

  static TextStyle HeadingH6(
      {TextDecoration? decoration,
      double? height,
      Color? color,
      FontWeight? fontWeight}) {
    return TextStyle(
      color: color ?? ColorTheme.primaryBlack,
      fontSize: 11,
      height: height,
      fontWeight: fontWeight ?? FontWeight.w600,
      fontStyle: FontStyle.normal,
      decoration: decoration,
    );
  }

  static TextStyle SubHeading(
      {TextDecoration? decoration, double? height, Color? color}) {
    return TextStyle(
      color: color ?? ColorTheme.primaryBlack,
      fontSize: 18,
      height: height,
      fontWeight: FontWeight.w300,
      fontStyle: FontStyle.normal,
      decoration: decoration,
    );
  }

  static TextStyle FormHeading(
      {TextDecoration? decoration,
      double? height,
      Color? color,
      FontWeight? fontWeight}) {
    return TextStyle(
      color: color ?? ColorTheme.primaryBlack,
      fontSize: 13,
      height: height,
      fontWeight: fontWeight ?? FontWeight.w500,
      fontStyle: FontStyle.normal,
      decoration: decoration,
    );
  }

  static TextStyle HintStyle(
      {TextDecoration? decoration, double? height, Color? color}) {
    return TextStyle(
      color: color ?? ColorTheme.primaryBlack,
      fontSize: 13,
      height: height,
      fontWeight: FontWeight.w300,
      fontStyle: FontStyle.normal,
      decoration: decoration,
    );
  }

  static TextStyle HintStyle1(
      {TextDecoration? decoration, double? height, Color? color}) {
    return TextStyle(
      color: color ?? ColorTheme.primaryBlack,
      fontSize: 13,
      height: height,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
      decoration: decoration,
    );
  }

  static TextStyle ButtonStyle(
      {TextDecoration? decoration, double? height, Color? color}) {
    return TextStyle(
      color: color ?? ColorTheme.primaryWhite,
      fontSize: 16,
      height: height,
      fontWeight: FontWeight.w600,
      fontStyle: FontStyle.normal,
      decoration: decoration,
    );
  }

  static TextStyle BodyText1(
      {TextDecoration? decoration, double? height, Color? color}) {
    return TextStyle(
      color: color ?? ColorTheme.primaryBlack,
      fontSize: 12,
      height: height,
      fontWeight: FontWeight.w500,
      fontStyle: FontStyle.normal,
      decoration: decoration,
    );
  }

  static TextStyle BodyText2(
      {TextDecoration? decoration,
      double? height,
      Color? color,
      double? fontSize,
      FontWeight? fontWeight}) {
    return TextStyle(
      color: color ?? ColorTheme.primaryBlack,
      fontSize: fontSize ?? 14,
      height: height,
      fontWeight: fontWeight ?? FontWeight.w400,
      fontStyle: FontStyle.normal,
      decoration: decoration,
    );
  }

  static TextStyle BodyText3(
      {TextDecoration? decoration, double? height, Color? color}) {
    return TextStyle(
      color: color ?? ColorTheme.primaryBlack,
      fontSize: 13,
      height: height,
      fontWeight: FontWeight.w600,
      fontStyle: FontStyle.normal,
      decoration: decoration,
    );
  }

  static TextStyle BodyText4(
      {TextDecoration? decoration, double? height, Color? color}) {
    return TextStyle(
      color: color ?? ColorTheme.primaryBlack,
      fontSize: 10,
      height: height,
      fontWeight: FontWeight.w500,
      fontStyle: FontStyle.normal,
      decoration: decoration,
    );
  }

  static TextStyle BodyText5(
      {TextDecoration? decoration, double? height, Color? color}) {
    return TextStyle(
      color: color ?? ColorTheme.primaryBlack,
      fontSize: 14,
      height: height,
      fontWeight: FontWeight.w500,
      fontStyle: FontStyle.normal,
      decoration: decoration,
    );
  }

  static TextStyle BodyText6(
      {TextDecoration? decoration, double? height, Color? color}) {
    return TextStyle(
      color: color ?? ColorTheme.primaryBlack,
      fontSize: 11,
      height: height,
      fontWeight: FontWeight.w500,
      fontStyle: FontStyle.normal,
      decoration: decoration,
    );
  }

  static TextStyle ButtonStyle2(
      {TextDecoration? decoration, double? height, Color? color}) {
    return TextStyle(
      color: color ?? ColorTheme.primaryWhite,
      fontSize: 8,
      height: height,
      fontWeight: FontWeight.w600,
      fontStyle: FontStyle.normal,
      decoration: decoration,
    );
  }

  static TextStyle SearchStyle(
      {TextDecoration? decoration, double? height, Color? color}) {
    return TextStyle(
      color: color ?? ColorTheme.primaryWhite,
      fontSize: 16,
      height: height,
      fontWeight: FontWeight.w300,
      fontStyle: FontStyle.normal,
      decoration: decoration,
    );
  }

  static TextStyle PriceHeadingH1(
      {TextDecoration? decoration, double? height, Color? color}) {
    return TextStyle(
      color: color ?? ColorTheme.primaryWhite,
      fontSize: 40,
      height: height,
      fontWeight: FontWeight.w700,
      fontStyle: FontStyle.normal,
      decoration: decoration,
    );
  }

  static TextStyle PriceStyle1(
      {TextDecoration? decoration, double? height, Color? color}) {
    return TextStyle(
      color: color ?? ColorTheme.primaryWhite,
      fontSize: 18,
      height: height,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
      decoration: decoration,
    );
  }

  static TextStyle montserratTextStyle({
    Color color = ColorTheme.primaryWhite,
    double fontSize = 15,
    double height = 0,
    FontWeight fontWeight = FontWeight.normal,
    TextDecoration line = TextDecoration.none,
  }) {
    return TextStyle(
      color: color,
      fontSize: fontSize,
      height: height,
      fontWeight: fontWeight,
      decoration: line,
    );
  }

  static TextStyle italicTextStyle({
    Color color = ColorTheme.primaryWhite,
    double height = 0,
    TextDecoration decoration = TextDecoration.none,
  }) {
    return TextStyle(
        color: color,
        fontSize: 10,
        height: height,
        fontWeight: FontWeight.w400,
        decoration: decoration,
        fontStyle: FontStyle.italic);
  }
}
