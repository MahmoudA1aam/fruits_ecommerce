import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_e_commerce/core/service/get_it/get_it.dart';
import 'package:fruits_e_commerce/features/auth/domain/auth_repo/auth_repo.dart';
import 'package:fruits_e_commerce/features/auth/presentation/login/cubit/signin_cubit.dart';
import 'package:fruits_e_commerce/features/auth/presentation/login/widgets/signin_view_body_bloc_consumer.dart';

import '../../../../../core/widgets/custom_app_bar.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SigninCubit>(
      create: (context) => SigninCubit(authRepo: getIt<AuthRepo>()),
      child: Scaffold(
        appBar: customAppBar(title: "تسجيل دخول", arrowBackisVisible: false),
        body: const SigninViewBodyBlocConsumer(),
      ),
    );
  }
}
