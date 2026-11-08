part of 'switch_theme_bloc_bloc.dart';

class SwitchThemeBlocEvent extends Equatable {
  const SwitchThemeBlocEvent();

  @override
  List<Object> get props => [];
}

class SwitchLightThemeEvent extends SwitchThemeBlocEvent {}

class SwitchDarkThemeEvent extends SwitchThemeBlocEvent {}