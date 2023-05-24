import 'package:freezed_annotation/freezed_annotation.dart';
part 'auth_status.freezed.dart';

@freezed
class AuthStatus with _$AuthStatus {
  const factory AuthStatus() = _AuthStatus;
  const factory AuthStatus.otpSent() = _OtpSent;
  const factory AuthStatus.otpFailed() = _OtpFailed;
  const factory AuthStatus.otpVerified() = _OtpVerified;
  const factory AuthStatus.authFailed({String? error}) = _AuthFailed;
  const factory AuthStatus.authenticated() = _Authenticated;
  const factory AuthStatus.logout() = _Logout;
  const factory AuthStatus.profileUpdated() = _ProfileUpdated;
}
