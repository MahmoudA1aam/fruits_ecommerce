part of 'signup_cubit_cubit.dart';

@immutable
abstract class SignupCubitState {}

class SignupCubitInitial extends SignupCubitState {}

class SignupCubitLoading extends SignupCubitState {}

class SignupCubitSuccess extends SignupCubitState {
  final UserEntity userEntity;

  SignupCubitSuccess({required this.userEntity});
}

class SignupCubitFaliure extends SignupCubitState {
  final String massege;
  SignupCubitFaliure({required this.massege});
}
