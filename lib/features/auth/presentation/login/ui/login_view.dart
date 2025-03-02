import 'package:flutter/material.dart';
import 'package:fruits_e_commerce/features/auth/presentation/login/widgets/login_view_body.dart';

import '../../../../../core/theming/text_style_app.dart';
import '../../../../../core/widgets/custom_app_bar.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: "تسجيل دخول", arrowBackisVisible: false),
      body: const LoginViewBody(),
    );
  }
}
