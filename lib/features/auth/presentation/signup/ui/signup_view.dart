import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_e_commerce/core/widgets/custom_app_bar.dart';
import 'package:fruits_e_commerce/features/auth/domain/auth_repo/auth_repo.dart';
import 'package:fruits_e_commerce/features/auth/presentation/signup/cubit/signup_cubit_cubit.dart';

import '../../../../../core/service/get_it/get_it.dart';
import '../widgets/sign_up_view_body_bloc_consumer.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignupCubit(authRepo: getIt<AuthRepo>()),
      child: Scaffold(
        appBar: customAppBar(
            title: "حساب جديد", arrowBackisVisible: true, context: context),
        body: SignUpViewBodyBlocConsumer(),
      ),
    );
  }
}
