import 'package:agency/app_config.dart';
import 'package:agency/app_config_singelton.dart';
import 'package:agency/router/custom_navigation_helper.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  CustomNavigationHelper.instance;
  AppConfigSingleton().runAppIn(AppEnvironment.sit);
}
