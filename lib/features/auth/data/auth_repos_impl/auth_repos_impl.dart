import 'package:dartz/dartz.dart';
import 'package:fruits_e_commerce/core/errors/custom_exception.dart';

import 'package:fruits_e_commerce/core/errors/failures.dart';
import 'package:fruits_e_commerce/core/service/firebase_service/firebase_auth_service.dart';
import 'package:fruits_e_commerce/features/auth/data/models/user_model.dart';

import 'package:fruits_e_commerce/features/auth/domain/entity/user_entity.dart';

import '../../domain/auth_repo/auth_repo.dart';

class AuthReposImpl extends AuthRepo {
  final FirebaseAuthService firebaseAuthService;

  AuthReposImpl({required this.firebaseAuthService});
  @override
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword(
      {required String email,
      required String password,
      required String name}) async {
    try {
      var user = await firebaseAuthService.createWithEmailAndPassword(
          email: email, password: password);
      return right(UserModel.fromFirebaseUser(user));
    } on CustomException catch (e) {
      return Left(SeverFailure(e.message));
      // TODO
    } catch (e) {
      return left(SeverFailure("An error occured. please try again"));
    }
    // TODO: implement createUserWithEmailAndPassword
  }
}
