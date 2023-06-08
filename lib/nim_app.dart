import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:now_in_movie/generated/l10n.dart';
import 'package:now_in_movie/page/home/home_page.dart';
import 'package:now_in_movie/page/theme/theme_bloc.dart';
import 'package:now_in_movie/widget/theme_provider.dart';
import 'package:shared/di/get_it.dart';

class NimApp extends StatelessWidget {
  const NimApp({super.key});

  static const _navigationBarColor = Colors.transparent;
  static const _statusBarColor = Colors.transparent;
  static const _sourceColor = Color(0xFF6750A4);

  void _updateSystemUi(ThemeMode themeMode) {
    final systemUiStyle = themeMode == ThemeMode.light
        ? SystemUiOverlayStyle.dark.copyWith(
            systemNavigationBarColor: _navigationBarColor,
            statusBarColor: _statusBarColor,
          )
        : SystemUiOverlayStyle.light.copyWith(
            systemNavigationBarColor: _navigationBarColor,
            statusBarColor: _statusBarColor,
          );
    SystemChrome.setSystemUIOverlayStyle(systemUiStyle);
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        return getIt<ThemeBloc>()..add(const ThemeModeLoaded());
      },
      child: BlocConsumer<ThemeBloc, ThemeState>(
        listenWhen: (previous, current) {
          return previous.themeMode != current.themeMode;
        },
        listener: (context, state) {
          _updateSystemUi(state.themeMode);
        },
        buildWhen: (previous, current) {
          return previous.themeMode != current.themeMode;
        },
        builder: (context, state) {
          final setting = ThemeSetting(
            sourceColor: _sourceColor,
            themeMode: state.themeMode,
          );
          return DynamicColorBuilder(
            builder: (lightDynamic, darkDynamic) {
              return ThemeProvider(
                lightDynamic: null,
                darkDynamic: null,
                setting: setting,
                child: Builder(
                  builder: (context) {
                    final themeProvider = ThemeProvider.of(context);
                    return MaterialApp(
                      debugShowCheckedModeBanner: false,
                      title: "Now in movie",
                      supportedLocales: S.delegate.supportedLocales,
                      localizationsDelegates: const [
                        S.delegate,
                        GlobalMaterialLocalizations.delegate,
                        GlobalCupertinoLocalizations.delegate,
                        GlobalWidgetsLocalizations.delegate
                      ],
                      theme: themeProvider.light(setting.sourceColor),
                      darkTheme: themeProvider.dark(setting.sourceColor),
                      themeMode: setting.themeMode,
                      home: const HomePage(),
                    );
                  },
                ),
              );
            },
          );
        },
      ),
    );
  }
}
