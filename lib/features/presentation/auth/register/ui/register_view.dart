import 'package:flutter/material.dart';
import 'package:fruits_e_commerce/core/widgets/custom_app_bar.dart';
import 'package:fruits_e_commerce/features/presentation/auth/register/widgets/register_view_body.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
          title: "حساب جديد", arrowBackisVisible: true, context: context),
      body: const RegisterViewBody(),
    );
  }
}
