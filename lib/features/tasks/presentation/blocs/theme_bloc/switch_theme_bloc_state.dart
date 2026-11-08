part of 'switch_theme_bloc_bloc.dart';

class SwitchThemeBlocState extends Equatable {
  final bool themeValue;
  const SwitchThemeBlocState({required this.themeValue});
  
  @override
  List<Object> get props => [themeValue];
}

final class SwitchThemeBlocInitial extends SwitchThemeBlocState {
  const SwitchThemeBlocInitial({required super.themeValue});
}
