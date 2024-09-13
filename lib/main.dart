import 'package:agency/app_config.dart';
import 'package:agency/app_config_singelton.dart';
import 'package:flutter/material.dart';

void main() {
  // Note: Don't change App Environment here, Instead use lib/app/main/main_sit.dart

  // Setup App Configuration and Run the App.
  WidgetsFlutterBinding.ensureInitialized();
  AppConfigSingleton().runAppIn(AppEnvironment.sit);
}
