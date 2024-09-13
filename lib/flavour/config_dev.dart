//
//  config_dev.dart
//  Inspire
//
//  Created by Vivekanandh Rao on 25/10/2023.
//  Copyright © 2023 Allianz. All rights reserved.
//

import 'package:agency/app_config.dart';
import 'package:agency/constant.dart';
import 'package:flutter/material.dart';

final appDevConfig = AppConfig(
  appTitle: 'Inspire Dev',
  appVersion: '1.0.0',
  environment: AppEnvironment.dev,
  httpsHostUrl: 'bcn-aws-sit.dev.azlife.allianz.co.id',
  apiBasePath: 'backend-aws/',
  allowedSHAFingerprints: [
    '51:50:FD:8C:53:B5:FB:CC:31:45:86:5D:3C:41:3B:E4:3B:1A:88:38:27:63:CB:23:4A:C4:0E:91:A0:2E:3E:1B',
  ],
  themeMode: ThemeMode.system,
  fontFamily: Constant.fontFamily,
  theme: Constant.theme,
);
