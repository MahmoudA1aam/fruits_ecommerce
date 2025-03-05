import 'package:dartz/dartz.dart';

import 'package:fruits_e_commerce/core/errors/failures.dart';

import 'package:fruits_e_commerce/features/auth/domain/entity/user_entity.dart';

import '../../domain/auth_repo/auth_repo.dart';

class AuthReposImpl extends AuthRepo {
  @override
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword(
      {required String email, required String password}) {
    // TODO: implement createUserWithEmailAndPassword
    throw UnimplementedError();
  }
}
