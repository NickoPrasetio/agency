//
//  config_sit.dart
//

import 'package:agency/app_config.dart';
import 'package:agency/constant.dart';
import 'package:flutter/material.dart';

final appSITConfig = AppConfig(
  appTitle: 'AZ360 Illustration SIT',
  appVersion: '0.0.1.RC7',
  environment: AppEnvironment.sit,
  httpsHostUrl: 'banca-az360.dev.azlife.allianz.co.id',
  apiBasePath: '/',
  allowedSHAFingerprints: [
    '93:75:6A:64:3A:9C:59:2E:83:96:F7:BF:BA:80:64:DE:62:AE:EC:5F:E7:2F:A9:C2:CE:93:15:AB:EF:C2:2A:B0',
  ],
  themeMode: ThemeMode.system,
  fontFamily: Constant.fontFamily,
  theme: Constant.theme,
);
