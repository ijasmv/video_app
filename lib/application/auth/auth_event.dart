part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.verifyMobile({required String mobile}) = VerifyMobile;
  const factory AuthEvent.verifyOtp({required String otp}) = VerifyOtp;
  const factory AuthEvent.logout() = Logout;
  const factory AuthEvent.checkAuth() = CheckAuth;
  const factory AuthEvent.updateProfile(
      {required String image, required String name, required String email}) = UpdateProfile;
}
