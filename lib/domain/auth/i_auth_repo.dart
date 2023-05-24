import 'dart:io';
import 'package:firebase_auth/firebase_auth.dart';
import 'model/auth_response.dart';

abstract class IAuthRepo {
  Future<AuthResponse> verifyMobile(String mobile);
  Future<AuthResponse> verifyOtp(String otp, String verificationId);
  Future<AuthResponse> signIn(PhoneAuthCredential credential);
  Future<String> uploadFile(File file, String path);
}
