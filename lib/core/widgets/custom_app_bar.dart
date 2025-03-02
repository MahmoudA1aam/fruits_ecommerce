import 'package:flutter/material.dart';
import 'package:fruits_e_commerce/core/theming/text_style_app.dart';

AppBar customAppBar(
    {required String title,
    required bool arrowBackisVisible,
    BuildContext? context}) {
  return AppBar(
    title: Text(title, style: TextStylesApp.font19Black700),
    centerTitle: true,
    backgroundColor: Colors.transparent,
    leading: Visibility(
        visible: arrowBackisVisible,
        child: IconButton(
            onPressed: () {
              Navigator.pop(context!);
            },
            icon: const Icon(Icons.arrow_back_ios))),
  );
}
