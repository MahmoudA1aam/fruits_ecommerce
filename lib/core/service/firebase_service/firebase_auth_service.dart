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
      if (e.code == 'weak-password') {
        throw CustomException(message: "كلمة المرور ضعيفة.");
      } else if (e.code == 'email-already-in-use') {
        throw CustomException(message: "هذا البريد الإلكتروني مستخدم بالفعل.");
      } else {
        throw CustomException(message: "حدث خطأ ما. يرجى المحاولة مرة أخرى.");
      }
      // Throw an exception to indicate failure
    } catch (e) {
      // Throw an exception to indicate failure
      throw CustomException(message: 'حدث خطأ ما. يرجى المحاولة مرة أخرى.');
    }
  }
}
