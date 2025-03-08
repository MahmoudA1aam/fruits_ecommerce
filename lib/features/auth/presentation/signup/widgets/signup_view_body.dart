import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_e_commerce/core/theming/colors_app.dart';
import 'package:fruits_e_commerce/core/widgets/custom_build_error_bar.dart';
import 'package:fruits_e_commerce/core/widgets/custom_button.dart';
import 'package:fruits_e_commerce/core/widgets/custom_text_from_field.dart';
import 'package:fruits_e_commerce/features/auth/presentation/login/widgets/have_account.dart';
import 'package:fruits_e_commerce/features/auth/presentation/signup/widgets/termsandcondation.dart';

import '../cubit/signup_cubit_cubit.dart';

class SignupViewBody extends StatefulWidget {
  const SignupViewBody({super.key});

  @override
  State<SignupViewBody> createState() => _RegisterViewBodyState();
}

class _RegisterViewBodyState extends State<SignupViewBody> {
  bool isvisible = false;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  final TextEditingController nameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  late bool isTermsAccepted = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
          child: Form(
        key: formKey,
        autovalidateMode: autovalidateMode,
        child: Column(
          children: [
            CustomTextFormField(
                validator: (p0) {},
                hintText: "الاسم كامل",
                controller: nameController),
            const SizedBox(
              height: 16,
            ),
            CustomTextFormField(
                validator: (p0) {},
                hintText: " البريد الإلكتروني",
                controller: emailController),
            const SizedBox(
              height: 16,
            ),
            CustomTextFormField(
              validator: (p0) {},
              hintText: "كلمة المرور ",
              controller: passwordController,
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
            Termsandcondation(
              onChecked: (value) {
                isTermsAccepted = value;
              },
            ),
            const SizedBox(
              height: 15,
            ),
            CustomButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    if (isTermsAccepted == true) {
                      context
                          .read<SignupCubit>()
                          .createUserWithemailAndPassword(
                              email: emailController.text,
                              password: passwordController.text,
                              name: nameController.text);
                    } else {
                      customBuildErrorBar(
                          massege: "يرجى الموافقة على الشروط والأحكام",
                          context: context);
                    }
                  }
                },
                title: "إنشاء حساب جديد"),
            const SizedBox(
              height: 15,
            ),
            const CreatAndNotHaveAccount(
                textHave: "تمتلك حساب بالفعل؟", creatAccount: "تسجيل دخول")
          ],
        ),
      )),
    );
  }
}
