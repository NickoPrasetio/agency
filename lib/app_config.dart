//
//  app_config.dart
//

import 'package:flutter/material.dart';

enum AppEnvironment { dev, sit, uat, production }

final class AppConfig {
  // Properties
  final String appTitle;
  final String appVersion;
  final AppEnvironment environment;
  final String fontFamily;
  final ThemeData theme;
  final ThemeMode themeMode;
  final bool debugShowCheckedModeBanner;
  final String httpsHostUrl;
  final String apiBasePath;
  final List<String> allowedSHAFingerprints;

  // arg const
  final String arg1 = '{arg1}';
  final String arg2 = '{arg2}';
  final String arg3 = '{arg3}';
  final String arg4 = '{arg4}';

  // AES 256 Encryption key: Must be 32 Char
  final String encryptionKey = 'id.co.allianz.AZ360.Illustration';

  // API Path
  final String loginURLPath = 'authservice/v1/auth/authentication';
  final String ssoURLPath = 'auth/login';

  // master data
  final String masterDataPath = 'master-data/api/v1/init/list';
  final String occupationsPath = 'master-data/api/v1/occupation';
  final String productsPath = 'master-data/api/v1/product/list';
  final String productDetailPath = 'master-data/api/v1/product/id/{arg1}/channelType/{arg2}/channel/{arg3}/currency/{arg4}';
  final String fundsPath = 'master-data/api/v1/fund/list';
  final String getRider = 'master-data/api/v1/rider/search';
  final String getRiderCatregory = "master-data/api/v1/rider/category-list";
  final String getRiderConfig = "master-data/api/v1/rider/get-rider-config";
  final String occupationCategoriesPath = 'master-data/api/v1/occupation-classification';
  final String getDetailbenefit = 'master-data/api/v1/detail-benefit/list';
  // illustration
  final String getIllustrationList = 'illustration/api/v1/list';
  final String deleteIllustrationList = 'illustration/api/v1';
  final String saveIllustration = 'illustration/api/v1';
  final String sumAssured = 'illustration/api/v1/sumassured';
  final String bbu = 'illustration/api/v1/bbu';
  final String getIllustrationDetail = 'illustration/api/v1/';
  final String detailpremium = 'illustration/api/v1/detailpremium';
  final String corBenefitTable = 'illustration/api/v1/constantofrate';
  final String trrBenefitTable = 'illustration/api/v1/totalofrate';

  // agent
  final String agentProfile = 'agent/api/v1/profile';

  // Class Constructor
  AppConfig({
    required this.appTitle,
    required this.appVersion,
    required this.environment,
    required this.fontFamily,
    required this.theme,
    required this.themeMode,
    required this.httpsHostUrl,
    required this.apiBasePath,
    required this.allowedSHAFingerprints,
    this.debugShowCheckedModeBanner = false,
  });
}
