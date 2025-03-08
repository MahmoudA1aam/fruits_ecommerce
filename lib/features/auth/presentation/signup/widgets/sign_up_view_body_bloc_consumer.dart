import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widgets/custom_build_error_bar.dart';
import '../cubit/signup_cubit_cubit.dart';
import 'signup_view_body.dart';

class SignUpViewBodyBlocConsumer extends StatelessWidget {
  const SignUpViewBodyBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignupCubit, SignupCubitState>(
      listener: (context, state) {
        if (state is SignupCubitFaliure) {
          customBuildErrorBar(massege: state.massege, context: context);
        }
      },
      builder: (context, state) {
        return const SignupViewBody();
      },
    );
  }
}
