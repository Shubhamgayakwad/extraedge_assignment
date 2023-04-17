import 'package:flutter/material.dart';

class ColorTheme {
  ///GRADIENTS
  static LinearGradient splashScreenGradient = const LinearGradient(
    begin: Alignment(2.0, 1.0),
    end: Alignment.center,
    colors: [Color(0xffFA3030), Color(0xff9B9B9B)],
  );

  /// basic colors
  static const Color primaryGreen = Color(0xff01AF40);
  static const Color darkGreen = Color(0xff007129);
  static const Color primaryBlack = Color(0xff151522);
  static const Color primaryWhite = Color(0xffFFFFFF);

//status colors
  static const Color primaryYellow = Color(0xffF2BA0E);
  static const Color primaryYellow1 = Color(0xffC99A09);
  static const Color primaryYellowdark = Color(0xffAF9301);
  static const Color primaryRed = Color(0xffF44336);

//gray
  static const Color primaryGrey = Color(0xFFD2D2D2);
  static const Color lightGrey = Color(0xffEEEEEE);
  static const Color lightGrey1 = Color(0xffF6F6F6);
  static const Color darkGrey = Color(0xff616B71);
  static const Color darkGrey1 = Color(0xffA4A4A4);
  static const Color borderGrey = Color(0xffC6CFD8);
}
