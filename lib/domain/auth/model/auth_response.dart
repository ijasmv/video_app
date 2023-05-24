import 'package:firebase_auth/firebase_auth.dart';
import 'package:video_app/domain/auth/model/auth_status.dart';

class AuthResponse {
  AuthStatus? status;
  String? verifyId;
  UserCredential? userCredential;
  AuthResponse({
    this.status,
    this.verifyId,
    this.userCredential,
  });
}
