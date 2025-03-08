// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'signin_cubit.dart';

@immutable
abstract class SigninState {}

class SigninInitial extends SigninState {}

class SigninSuccess extends SigninState {
  final UserEntity userEntity;
  SigninSuccess({
    required this.userEntity,
  });
}

class SigninFailure extends SigninState {
  final String massege;
  SigninFailure({
    required this.massege,
  });
}

class SigninLoading extends SigninState {}
