import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'theme_event.dart';
part 'theme_state.dart';
part 'theme_bloc.freezed.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(ThemeState.initial()) {
    on<ChangeTheme>((event, emit) async {
      SharedPreferences preferences = await SharedPreferences.getInstance();
      if (state.isDarkTheme) {
        await preferences.setBool("isDarkMode", false);
        emit(state.copyWith(isDarkTheme: false));
      } else {
        await preferences.setBool("isDarkMode", true);
        emit(state.copyWith(isDarkTheme: true));
      }
    });

    on<GetCurrentTheme>((event, emit) async {
      SharedPreferences preferences = await SharedPreferences.getInstance();
      bool isDarkMode = preferences.getBool("isDarkMode") ?? false;
      emit(state.copyWith(isDarkTheme: isDarkMode));
    });
  }
}
