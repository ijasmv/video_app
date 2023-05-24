import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:video_app/domain/auth/model/auth_status.dart';
import 'package:video_app/domain/auth/i_auth_repo.dart';
import 'package:video_app/domain/auth/model/auth_response.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthRepo _iAuthRepo;
  AuthBloc(this._iAuthRepo) : super(AuthState.initial()) {
    FirebaseAuth auth = FirebaseAuth.instance;

    on<VerifyMobile>((event, emit) async {
      Completer<AuthState> c = Completer<AuthState>();
      AuthResponse response = AuthResponse();
      AuthState newState = AuthState(
        verifyId: "",
        isLoading: true,
        authenticated: false,
        authResponse: AuthResponse(),
      );
      emit(newState);

      await auth.verifyPhoneNumber(
          phoneNumber: event.mobile,
          timeout: const Duration(minutes: 2),
          verificationCompleted: (PhoneAuthCredential authCredential) {
            // Auto verified

            response.status = const AuthStatus.otpVerified();
            newState = newState.copyWith(
              authResponse: response,
              authenticated: false,
              isLoading: false,
            );
            c.complete(newState);

            // Sign In User
            auth.signInWithCredential(authCredential).then((UserCredential result) {
              response.status = const AuthStatus.authenticated();
              response.userCredential = result;

              newState = newState.copyWith(
                authenticated: true,
                authResponse: response,
                verifyId: response.verifyId ?? "",
                isLoading: false,
                userData: auth.currentUser,
              );
              c.complete(newState);
            }).catchError((e) {
              response.status = const AuthStatus.authFailed();
              newState = newState.copyWith(
                authResponse: response,
                authenticated: false,
                isLoading: false,
              );
              c.complete(newState);
            });
          },
          verificationFailed: (FirebaseAuthException authException) {
            // response.status = AuthStatus.authFailed(error: authException.message);
            // emit(state.copyWith(
            //     authResponse: response, verifyId: response.verifyId ?? "", isLoading: false));
          },
          codeSent: (String verificationId, int? forceResendingToken) {
            print("###Code Sent");
            response =
                AuthResponse(status: const AuthStatus.otpSent(), verifyId: verificationId);
            newState = newState.copyWith(
              authResponse: response,
              verifyId: response.verifyId ?? "",
              isLoading: false,
              authenticated: false,
            );

            c.complete(newState);
          },
          codeAutoRetrievalTimeout: (String verificationId) {
            // print(verificationId);
            // print("Timout");
          });
      await Future.delayed(const Duration(seconds: 5));
      var stateToRetern = c.future;
      // newState = newState.copyWith(isLoading: false);
      print("emitting..");
      emit(await stateToRetern);
    });

    on<VerifyOtp>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final resp = await _iAuthRepo.verifyOtp(event.otp, state.verifyId);
      if (resp.status == const AuthStatus.authenticated()) {
        emit(state.copyWith(
            authenticated: true,
            userData: auth.currentUser,
            authResponse: resp,
            isLoading: false));
      } else {
        emit(state.copyWith(authResponse: resp, isLoading: false));
      }
    });

    on<Logout>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      try {
        await auth.signOut();
        emit(state.copyWith(
            authResponse: AuthResponse(status: const AuthStatus.logout()),
            isLoading: false,
            userData: null,
            authenticated: false));
      } catch (_) {
        emit(state.copyWith(isLoading: false));
      }
    });

    on<CheckAuth>((event, emit) {
      final user = auth.currentUser;
      if (user != null) {
        emit(state.copyWith(userData: user, authenticated: true));
      }
    });

    on<UpdateProfile>((event, emit) async {
      final user = auth.currentUser;
      if (user != null) {
        emit(state.copyWith(isLoading: true));

        if (event.name.isNotEmpty) {
          await user.updateDisplayName(event.name);
        }
        if (event.email.isNotEmpty) {
          await user.updateEmail(event.email);
        }
        if (event.image.isNotEmpty) {
          String imgUrl = await _iAuthRepo.uploadFile(
              File(event.image), "userImgs/${DateTime.now().millisecondsSinceEpoch}");
          if (imgUrl.isNotEmpty) {
            await user.updatePhotoURL(imgUrl);
          }
        }
        var respo = state.authResponse;
        respo.status = const AuthStatus.profileUpdated();
        emit(state.copyWith(
          isLoading: false,
          userData: auth.currentUser,
          authResponse: respo,
        ));
      }
    });
  }
}
