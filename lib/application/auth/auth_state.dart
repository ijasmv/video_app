part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    required String verifyId,
    required bool isLoading,
    required bool authenticated,
    required AuthResponse authResponse,
    User? userData,
  }) = _AuthState;

  factory AuthState.initial() {
    return AuthState(
      verifyId: "",
      authenticated: false,
      isLoading: false,
      authResponse: AuthResponse(),
    );
  }
}
