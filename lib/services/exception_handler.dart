import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:extraedge_assignment/utils/commom_widgets.dart';
import 'package:flutter/material.dart';

class ExceptionHandler {
  getExceptionString(BuildContext context, Object exception) {
    if (exception is SocketException) {
      showSnackbar(
          context: context, msg: "No internet connection!", color: Colors.red);
      log("Exception: ${exception.toString()}");
    } else if (exception is HttpException) {
      showSnackbar(
          context: context, msg: "HTTP error occured!", color: Colors.red);
      log("Exception: ${exception.toString()}");
    } else if (exception is FormatException) {
      showSnackbar(
          context: context, msg: "Invalid data format!", color: Colors.red);
      log("Exception: ${exception.toString()}");
    } else if (exception is TimeoutException) {
      showSnackbar(
          context: context, msg: "Request time out!", color: Colors.red);
      log("Exception: ${exception.toString()}");
    } else {
      showSnackbar(
          context: context,
          msg: "Something went wrong please try again later!",
          color: Colors.red);
    }
  }
}
