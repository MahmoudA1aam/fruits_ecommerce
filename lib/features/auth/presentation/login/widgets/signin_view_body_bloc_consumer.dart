import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_e_commerce/features/auth/presentation/login/cubit/signin_cubit.dart';
import 'package:fruits_e_commerce/features/auth/presentation/login/widgets/login_view_body.dart';

import '../../../../../core/widgets/custom_build_error_bar.dart';

class SigninViewBodyBlocConsumer extends StatelessWidget {
  const SigninViewBodyBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SigninCubit, SigninState>(
      listener: (context, state) {
        if (state is SigninFailure) {
          customBuildErrorBar(massege: state.massege, context: context);
        }
      },
      builder: (context, state) {
        return const LoginViewBody();
      },
    );
  }
}
