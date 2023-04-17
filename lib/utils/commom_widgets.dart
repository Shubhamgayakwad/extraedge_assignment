import 'package:extraedge_assignment/theme/colors.dart';
import 'package:extraedge_assignment/theme/text_theme.dart';
import 'package:flutter/material.dart';

showSnackbar({@required BuildContext? context, String? msg, Color? color}) {
  ScaffoldMessenger.of(context!).showSnackBar(SnackBar(
    content: Text("$msg"),
    backgroundColor: color ?? Colors.red,
  ));
}

showLoading(BuildContext context) {
  showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => WillPopScope(
            onWillPop: () async => false,
            child: Center(
              child: Container(
                height: 40,
                width: 40,
                padding: const EdgeInsets.all(8),
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: ColorTheme.primaryWhite),
                child: const CircularProgressIndicator(
                  strokeWidth: 2,
                  color: ColorTheme.primaryGreen,
                ),
              ),
            ),
          ));
}

hideLoading(BuildContext context) {
  Navigator.pop(context);
}

appBar(BuildContext context,
    {required String title,
    List<Widget>? actions,
    bool? centerTitle,
    Widget? leading,
    void Function()? onBack}) {
  return AppBar(
    elevation: 0.0,
    backgroundColor: Colors.white,
    leading: Padding(
      padding: const EdgeInsets.only(left: 0.0),
      child: leading ??
          IconButton(
              onPressed: onBack ?? () => Navigator.pop(context),
              icon: const Icon(
                Icons.arrow_back_ios,
                color: ColorTheme.primaryGreen,
                size: 24,
              )),
    ),
    centerTitle: centerTitle ?? true,
    title: Text(title, style: TextStyleTheme.HeadingH3()),
    actions: actions,
  );
}
