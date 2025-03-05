import 'package:bloc/bloc.dart';
import 'package:fruits_e_commerce/features/auth/domain/auth_repo/auth_repo.dart';
import 'package:fruits_e_commerce/features/auth/domain/entity/user_entity.dart';
import 'package:meta/meta.dart';

part 'signup_cubit_state.dart';

class SignupCubit extends Cubit<SignupCubitState> {
  SignupCubit({required this.authRepo}) : super(SignupCubitInitial());

  final AuthRepo authRepo;
  Future<void> createUserWithemailAndPassword(
      {required String email,
      required String password,
      required String name}) async {
    final result = await authRepo.createUserWithEmailAndPassword(
        email: email, password: password, name: name);
    result.fold(
      (failure) => emit(SignupCubitFaliure(massege: failure.message)),
      (userEntity) => emit(SignupCubitSuccess(userEntity: userEntity)),
    );
  }
}
