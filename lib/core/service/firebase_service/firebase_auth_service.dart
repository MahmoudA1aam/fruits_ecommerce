import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruits_e_commerce/core/errors/custom_exception.dart';

class FirebaseAuthService {
  Future<User> createWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      log("Expection in FireBaseAuthService.createWithEmailAndPassword: ${e.toString()}");
      if (e.code == 'weak-password') {
        throw CustomException(message: "كلمة المرور ضعيفة.");
      } else if (e.code == 'email-already-in-use') {
        throw CustomException(message: "هذا البريد الإلكتروني مستخدم بالفعل.");
      } else if (e.code == 'network-request-failed') {
        throw CustomException(message: "يرجي التحقق من اتصالك بالانترنت");
      } else {
        throw CustomException(message: "حدث خطأ ما. يرجى المحاولة مرة أخرى.");
      }
      // Throw an exception to indicate failure
    } catch (e) {
      log("Expection in FireBaseAuthService.createWithEmailAndPassword: ${e.toString()}");
      // Throw an exception to indicate failure
      throw CustomException(message: 'حدث خطأ ما. يرجى المحاولة مرة أخرى.');
    }
  }

  Future<User> signInWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      log("Expection in FireBaseAuthService.signInWithEmailAndPassword: ${e.toString()}");
      if (e.code == 'user-not-found') {
        throw CustomException(message: "هذا البريد الإلكتروني غير موجود.");
      } else if (e.code == 'wrong-password') {
        throw CustomException(
            message: "كلمة المرور أو البريد الإلكتروني غير صحيحة.");
      } else if (e.code == 'network-request-failed') {
        throw CustomException(message: "يرجي التحقق من اتصالك بالانترنت");
      } else {
        throw CustomException(message: "حدث خطأ ما. يرجى المحاولة مرة أخرى.");
      }
    } catch (e) {
      log("Expection in FireBaseAuthService.signInWithEmailAndPassword: ${e.toString()}");
      // Throw an exception to indicate failure
      throw CustomException(message: 'حدث خطأ ما. يرجى المحاولة مرة أخرى.');
    }
  }
}
