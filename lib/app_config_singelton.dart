//
//  app_config_singleton.dart
//

import 'package:agency/app_config.dart';
import 'package:agency/flavour/config_dev.dart';
import 'package:agency/flavour/config_prod.dart';
import 'package:agency/flavour/config_sit.dart';
import 'package:agency/flavour/config_uat.dart';
import 'package:agency/injection_module/base_module.dart';
import 'package:agency/preference_utils.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';

class AppConfigSingleton {
  // Properties
  late AppConfig _config;

  // Getter
  AppConfig get config => _config;

  // Singleton
  static final AppConfigSingleton _instance = AppConfigSingleton._internal();
  factory AppConfigSingleton() => _instance;
  AppConfigSingleton._internal();

  // Run the App in App Environment
  void runAppIn(AppEnvironment appEnvironment) async {
    switch (appEnvironment) {
      case AppEnvironment.dev:
        _config = appDevConfig;
        break;
      case AppEnvironment.sit:
        _config = appSITConfig;
        break;
      case AppEnvironment.uat:
        _config = appUATConfig;
        break;
      case AppEnvironment.production:
        _config = appProductionConfig;
        break;
    }

    initModule();

    // Initialize PreferenceUtils instance.
    await PreferenceUtils.init();

    // Run Inspire App
    runApp(const InspireApp());

    // IMPORTANT: uncomment to check semantics label
    if (kIsWeb) {
      SemanticsBinding.instance.ensureSemantics();
    }
  }
}
