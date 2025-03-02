import 'package:flutter/material.dart';
import 'package:fruits_e_commerce/core/theming/colors_app.dart';
import 'package:fruits_e_commerce/core/theming/text_style_app.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.onPressed, required this.title});
  final VoidCallback onPressed;
  final String title;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: TextButton(
          onPressed: onPressed,
          child: Container(
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
                color: ColorsApp.primarygreen,
                borderRadius: BorderRadius.circular(16)),
            child: Center(
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: TextStylesApp.font16White700,
              ),
            ),
          )),
    );
  }
}
