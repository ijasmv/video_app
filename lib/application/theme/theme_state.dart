part of 'theme_bloc.dart';

@freezed
class ThemeState with _$ThemeState {
  const factory ThemeState({
    required bool isDarkTheme,
  }) = _ThemeState;

  factory ThemeState.initial() {
    return const ThemeState(
      isDarkTheme: false,
    );
  }
}
