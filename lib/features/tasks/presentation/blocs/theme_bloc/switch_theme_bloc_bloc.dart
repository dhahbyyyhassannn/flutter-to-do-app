import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'switch_theme_bloc_event.dart';
part 'switch_theme_bloc_state.dart';

class SwitchThemeBlocBloc extends Bloc<SwitchThemeBlocEvent, SwitchThemeBlocState> {
  SwitchThemeBlocBloc() : super(const SwitchThemeBlocInitial(themeValue: true)) {
    on<SwitchThemeBlocEvent>((event, emit) {
      if (event is SwitchLightThemeEvent) {
        emit(const SwitchThemeBlocState(themeValue: true));
      } else {
        emit(const SwitchThemeBlocState(themeValue: false));
      }
    });
  }
}
