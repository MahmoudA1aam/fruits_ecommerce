import 'package:flutter/material.dart';
import 'package:fruits_e_commerce/core/theming/colors_app.dart';
import 'package:fruits_e_commerce/core/widgets/custom_button.dart';
import 'package:fruits_e_commerce/core/widgets/custom_text_from_field.dart';
import 'package:fruits_e_commerce/features/auth/presentation/login/widgets/have_account.dart';
import 'package:fruits_e_commerce/features/auth/presentation/register/widgets/termsandcondation.dart';

class RegisterViewBody extends StatefulWidget {
  const RegisterViewBody({super.key});

  @override
  State<RegisterViewBody> createState() => _RegisterViewBodyState();
}

class _RegisterViewBodyState extends State<RegisterViewBody> {
  TextEditingController controller = TextEditingController();
  bool isvisible = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
          child: Column(
        children: [
          CustomTextFormField(
              validator: (p0) {},
              hintText: "الاسم كامل",
              controller: controller),
          const SizedBox(
            height: 16,
          ),
          CustomTextFormField(
              validator: (p0) {},
              hintText: " البريد الإلكتروني",
              controller: controller),
          const SizedBox(
            height: 16,
          ),
          CustomTextFormField(
            validator: (p0) {},
            hintText: "كلمة المرور ",
            controller: controller,
            obscureText: isvisible,
            suffixIcon: IconButton(
              onPressed: () {
                isvisible = !isvisible;
                setState(() {});
              },
              icon: isvisible
                  ? const Icon(
                      Icons.visibility,
                      color: ColorsApp.gray,
                    )
                  : const Icon(
                      Icons.visibility_off,
                      color: ColorsApp.gray,
                    ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Termsandcondation(),
          const SizedBox(
            height: 15,
          ),
          CustomButton(onPressed: () {}, title: "إنشاء حساب جديد"),
          const SizedBox(
            height: 15,
          ),
          const CreatAndNotHaveAccount(
              textHave: "تمتلك حساب بالفعل؟", creatAccount: "تسجيل دخول")
        ],
      )),
    );
  }
}
