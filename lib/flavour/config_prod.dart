//
//  config_prod.dart
//

import 'package:agency/app_config.dart';
import 'package:agency/constant.dart';
import 'package:flutter/material.dart';

final appProductionConfig = AppConfig(
  appTitle: 'Inspire',
  appVersion: '1.0.0.Release',
  environment: AppEnvironment.production,
  httpsHostUrl: 'services.allianz.co.id',
  apiBasePath: 'bancaconnect/backend-aws/',
  allowedSHAFingerprints: [
    '0E:B8:A4:A7:DF:0F:98:83:05:89:90:82:81:BB:58:3E:EA:EF:F8:D4:FD:D7:1E:D2:F0:C6:86:04:0C:3E:E3:C8',
  ],
  themeMode: ThemeMode.system,
  fontFamily: Constant.fontFamily,
  theme: Constant.theme,
);
