import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/core/di/service_locator.dart' as di;
import 'package:todo_app/core/router/app_router.dart';
import 'package:todo_app/core/themes/theme_manager.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:todo_app/features/tasks/presentation/blocs/theme_bloc/switch_theme_bloc_bloc.dart';
// import your SwitchThemeBlocBloc here

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  setUrlStrategy(PathUrlStrategy());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => SwitchThemeBlocBloc(),
      child: BlocBuilder<SwitchThemeBlocBloc, SwitchThemeBlocState>(
        builder: (context, state) {


          return MaterialApp.router(
            title: 'Flutter Demo',
            themeMode: state.themeValue ? ThemeMode.light : ThemeMode.dark,
            theme: AppThemes.appThemeData[AppTheme.lightTheme],
            darkTheme: AppThemes.appThemeData[AppTheme.darkTheme],
            routerConfig: di.sl<AppRouter>().router,
          );
        },
      ),
    );
  }
}