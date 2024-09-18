//
//  inspire_app.dart
//

import 'package:agency/app_config_singelton.dart';
import 'package:agency/router/custom_navigation_helper.dart';
import 'package:flutter_ui_helper/flutter_ui_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AgencyApp extends StatefulWidget {
  // Class Constructor
  const AgencyApp({super.key});

  // Widget State
  @override
  State<AgencyApp> createState() => _InspireAppState();

  // Class Level Public Methods
  static void setLocale(BuildContext context, Locale? newLocale) {
    _InspireAppState? state =
        context.findAncestorStateOfType<_InspireAppState>();
    state?.changeLocale(newLocale);
  }
}

class _InspireAppState extends State<AgencyApp> {
  // Properties
  Locale _locale = const Locale('zh', '');
  // Locale _locale = const Locale('en', '');

  // Object Level Public Methods
  void changeLocale(Locale? newLocale) {
    if (newLocale != null) {
      setState(() {
        _locale = newLocale;
      });
    }
  }

  // Widget Methods
  @override
  void dispose() async {
    // dispose of any global services that were initialized
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    // - Push Notifications
    // - Crash Reporting (Firebase crashlytics)
    // - Connectivity monitoring
  }

  @override
  Widget build(BuildContext context) {
    var config = AppConfigSingleton().config;

    if (Device.isHandheldDeviceApp()) {
      SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
        DeviceOrientation.landscapeLeft,
        DeviceOrientation.landscapeRight,
      ]);
    }

    return MaterialApp.router(
      title: config.appTitle,
      theme: config.theme,
      themeMode: config.themeMode,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: _locale,
      debugShowCheckedModeBanner: config.debugShowCheckedModeBanner,
      routerConfig: CustomNavigationHelper.router,
    );
  }
}
