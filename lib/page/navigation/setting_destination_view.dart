import 'package:flutter/material.dart';
import 'package:now_in_movie/page/setting/page/setting_page.dart';

class SettingDestinationView extends StatefulWidget {
  const SettingDestinationView({super.key, required this.navigationKey});

  final Key navigationKey;

  @override
  State<SettingDestinationView> createState() => _SettingDestinationViewState();
}

class _SettingDestinationViewState extends State<SettingDestinationView> {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: widget.navigationKey,
      onGenerateRoute: (settings) {
        return MaterialPageRoute(
          builder: (context) {
            switch (settings.name) {
              case "/":
                return const SettingPage();
              default:
                return const SizedBox();
            }
          },
        );
      },
    );
  }
}
