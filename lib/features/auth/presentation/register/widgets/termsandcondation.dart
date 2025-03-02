import 'package:flutter/material.dart';
import 'package:fruits_e_commerce/core/theming/text_style_app.dart';
import 'package:fruits_e_commerce/features/auth/presentation/register/widgets/custom_check_box.dart';

class Termsandcondation extends StatefulWidget {
  Termsandcondation({super.key});

  @override
  State<Termsandcondation> createState() => _TermsandcondationState();
}

class _TermsandcondationState extends State<Termsandcondation> {
  bool acceptedonTerms = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomCheckBox(
          isChecked: acceptedonTerms,
          onChecked: (value) {
            acceptedonTerms = value;
            setState(() {});
          },
        ),
        const SizedBox(
          width: 10,
        ),
        SizedBox(
          width: MediaQuery.sizeOf(context).width - (14 * 2) - 52,
          child: Text.rich(TextSpan(children: [
            TextSpan(
                text: "من خلال إنشاء حساب ، فإنك توافق على ",
                style: TextStylesApp.font13Grey600),
            TextSpan(
                text: "الشروط والأحكام الخاصة بنا",
                style: TextStylesApp.font13rimarycolor600)
          ])),
        ),
      ],
    );
  }
}
