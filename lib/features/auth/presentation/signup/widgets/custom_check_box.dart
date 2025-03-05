import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/theming/colors_app.dart';

class CustomCheckBox extends StatelessWidget {
  const CustomCheckBox(
      {super.key, required this.isChecked, required this.onChecked});

  final bool isChecked;

  final ValueChanged<bool> onChecked;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onChecked(!isChecked);
      },
      child: AnimatedContainer(
          padding: EdgeInsets.zero,
          decoration: BoxDecoration(
              color: isChecked ? ColorsApp.primarygreen : Colors.transparent,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                  color: isChecked ? ColorsApp.primarygreen : ColorsApp.gray,
                  width: 1.5)),
          height: 24,
          width: 24,
          duration: const Duration(milliseconds: 200),
          child: Padding(
            padding: const EdgeInsets.all(3),
            child: isChecked
                ? SvgPicture.asset("assets/images/icons_checked_box.svg")
                : const SizedBox(),
          )),
    );
  }
}
