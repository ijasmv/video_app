import 'dart:async';
import 'dart:io';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:video_app/domain/auth/model/auth_status.dart';
import 'package:video_app/domain/auth/i_auth_repo.dart';
import 'package:video_app/domain/auth/model/auth_response.dart';

@LazySingleton(as: IAuthRepo)
class AuthRepository implements IAuthRepo {
  @override
  Future<AuthResponse> verifyMobile(String mobile) async {
    FirebaseAuth auth = FirebaseAuth.instance;

    AuthResponse response = AuthResponse();
    // await auth.signOut();
    await auth.verifyPhoneNumber(
        phoneNumber: mobile,
        timeout: const Duration(minutes: 2),
        verificationCompleted: (PhoneAuthCredential authCredential) {
          response.status = const AuthStatus.otpVerified();

          // status = const AuthStatus.otpVerified();
          auth.signInWithCredential(authCredential).then((UserCredential result) {
            response.status = const AuthStatus.authenticated();
            response.userCredential = result;
            // status = const AuthStatus.authenticated();
          }).catchError((e) {
            response.status = const AuthStatus.authFailed();
          });
        },
        verificationFailed: (FirebaseAuthException authException) {
          print(authException.message);
          response.status = AuthStatus.authFailed(error: authException.message);
        },
        codeSent: (String verificationId, int? forceResendingToken) {
          response =
              AuthResponse(status: const AuthStatus.otpSent(), verifyId: verificationId);
        },
        codeAutoRetrievalTimeout: (String verificationId) {});
    return response;
  }

  @override
  Future<AuthResponse> verifyOtp(String otp, String verificationId) async {
    FirebaseAuth auth = FirebaseAuth.instance;
    AuthResponse response = AuthResponse();

    final credential =
        PhoneAuthProvider.credential(verificationId: verificationId, smsCode: otp);
    await auth.signInWithCredential(credential).then((UserCredential result) {
      response.status = const AuthStatus.authenticated();
      response.userCredential = result;
    }).catchError((e) {
      print(e);
      response.status = const AuthStatus.authFailed();
    });
    return response;
  }

  @override
  Future<AuthResponse> signIn(PhoneAuthCredential credential) async {
    AuthResponse response = AuthResponse();
    FirebaseAuth auth = FirebaseAuth.instance;

    await auth.signInWithCredential(credential).then((UserCredential result) {
      response.status = const AuthStatus.authenticated();
      response.userCredential = result;
    }).catchError((e) {
      response.status = const AuthStatus.authFailed();
    });

    return response;
  }

  @override
  Future<String> uploadFile(File file, String path) async {
    final firebaseStorageInstance = FirebaseStorage.instance.ref();

    String url = "";
    try {
      final task = await firebaseStorageInstance.child(path).putFile(file);
      url = await task.ref.getDownloadURL();
    } on FirebaseException catch (e) {
      throw e.message ?? "Upload Error";
    }
    return url;
  }
}
