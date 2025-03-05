import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruits_e_commerce/core/service/firebase_service/firebase_auth_service.dart';
import 'package:fruits_e_commerce/features/auth/data/auth_repos_impl/auth_repos_impl.dart';
import 'package:fruits_e_commerce/features/auth/domain/auth_repo/auth_repo.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void setupGetIt() {
  getIt.registerSingleton<FirebaseAuthService>(FirebaseAuthService());
  getIt.registerSingleton<AuthRepo>(
      AuthReposImpl(firebaseAuthService: getIt<FirebaseAuthService>()));
}
