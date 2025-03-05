import 'package:flutter/material.dart';
import 'package:fruits_e_commerce/core/widgets/custom_button.dart';
import 'package:fruits_e_commerce/features/auth/presentation/login/widgets/have_account.dart';
import 'package:fruits_e_commerce/features/auth/presentation/login/widgets/or_divider.dart';
import 'package:fruits_e_commerce/features/auth/presentation/login/widgets/social_login_button.dart';

import '../../../../../core/service/routes/route_names.dart';
import '../../../../../core/theming/text_style_app.dart';
import '../../../../../core/widgets/custom_text_from_field.dart';

class LoginViewBody extends StatefulWidget {
  const LoginViewBody({super.key});

  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
  TextEditingController controller = TextEditingController();

  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 24,
            ),
            CustomTextFormField(
              validator: (p0) {},
              hintText: "اسم المستخدم",
              controller: controller,
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(
              height: 24,
            ),
            CustomTextFormField(
              validator: (p0) {},
              hintText: "كلمة المرور ",
              controller: controller,
              obscureText: obscureText,
              suffixIcon: IconButton(
                  onPressed: () {
                    obscureText = !obscureText;
                    setState(() {});
                  },
                  icon: obscureText
                      ? const Icon(
                          Icons.visibility,
                          color: Color(0XffC9CECF),
                        )
                      : const Icon(
                          Icons.visibility_off,
                          color: Color(0XffC9CECF),
                        )),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("نسيت كلمة المرور؟",
                    textAlign: TextAlign.end,
                    style: TextStylesApp.font13Grey600
                        .copyWith(color: const Color(0xff2D9F5D))),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            CustomButton(onPressed: () {}, title: "تسجيل دخول"),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, RouteNames.registerView);
              },
              child: const CreatAndNotHaveAccount(
                textHave: "لا تمتلك حساب ؟",
                creatAccount: " قم بإنشاء حساب",
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const OrDivider(),
            const SizedBox(
              height: 15,
            ),
            SocialLoginButton(
              image: "assets/images/google_icon.svg",
              title: "تسجيل دخول بواسطة جوجل",
              onPressed: () {},
            ),
            const SizedBox(
              height: 15,
            ),
            SocialLoginButton(
              image: "assets/images/apple_icon.svg",
              title: "تسجيل دخول بواسطة أبل",
              onPressed: () {},
            ),
            const SizedBox(
              height: 15,
            ),
            SocialLoginButton(
              image: "assets/images/facebook_icon.svg",
              title: "تسجيل دخول بواسطة فيسبوك",
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
