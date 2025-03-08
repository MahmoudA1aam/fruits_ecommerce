import 'package:bloc/bloc.dart';

import 'package:fruits_e_commerce/features/auth/domain/auth_repo/auth_repo.dart';
import 'package:meta/meta.dart';

import '../../../domain/entity/user_entity.dart';

part 'signin_state.dart';

class SigninCubit extends Cubit<SigninState> {
  SigninCubit({required this.authRepo}) : super(SigninInitial());
  late AuthRepo authRepo;
  Future<void> siginWithEmailAndPassword(
      {required String email, required String password}) async {
    final result = await authRepo.siginWithEmailAndPassword(
        email: email, password: password);
    result.fold(
      (failure) => emit(SigninFailure(massege: failure.message)),
      (userEntity) => emit(SigninSuccess(userEntity: userEntity)),
    );
  }
}
