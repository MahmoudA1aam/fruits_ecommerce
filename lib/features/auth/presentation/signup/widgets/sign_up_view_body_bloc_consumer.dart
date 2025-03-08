import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Row(
                children: [
                  Icon(Icons.error_outline_sharp),
                  SizedBox(width: 10),
                  Text(state.massege),
                ],
              ),
            ),
          );
        }
      },
      builder: (context, state) {
        return const SignupViewBody();
      },
    );
  }
}
