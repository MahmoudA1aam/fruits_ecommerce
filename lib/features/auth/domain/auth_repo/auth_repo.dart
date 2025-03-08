import 'package:dartz/dartz.dart';
import 'package:fruits_e_commerce/core/errors/failures.dart';
import 'package:fruits_e_commerce/features/auth/domain/entity/user_entity.dart';

abstract class AuthRepo {
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword(
      {required String email, required String password, required String name});

  Future<Either<Failure, UserEntity>> siginWithEmailAndPassword(
      {required String email, required String password});
}
