import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'theme_event.dart';
part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(ThemeLight()) {
    on<ThemeSwitch>((event, emit) {
      if (state is ThemeLight) {
        emit(ThemeDark());
      } else if (state is ThemeDark) {
        emit(ThemeLight());
      }
    });
  }
}
