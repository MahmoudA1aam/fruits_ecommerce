import 'package:flutter/material.dart';
import 'package:fruits_e_commerce/features/auth/presentation/login/ui/login_view.dart';
import 'package:fruits_e_commerce/features/auth/presentation/register/ui/register_view.dart';

import 'package:fruits_e_commerce/test.dart';

import '../../../features/onboarding_view/presentation/ui/onboarding_view.dart';

import '../../../features/splash/presentation/ui/splash_view.dart';
import 'route_names.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case RouteNames.splashView:
      return MaterialPageRoute(builder: (context) => const SplashView());
    case RouteNames.onboardingView:
      return MaterialPageRoute(
        builder: (context) => const OnBoardingView(),
      );
    case RouteNames.loginView:
      return MaterialPageRoute(
        builder: (context) => const LoginView(),
      );
    case RouteNames.registerView:
      return MaterialPageRoute(
        builder: (context) => const RegisterView(),
      );
    case RouteNames.test:
      return MaterialPageRoute(
        builder: (context) => const Test(),
      );

    default:
      return MaterialPageRoute(builder: (context) => const SplashView());
  }
}
