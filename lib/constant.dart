//
//  constant.dart
//

import 'package:flutter_ui_helper/flutter_ui_helper.dart';
import 'package:flutter/material.dart';

final class Constant {
  // =============== App Theme =============== //
  static const String fontFamily = 'AllianzNeo';
  static ThemeData theme = ThemeData(
    useMaterial3: false,
    primarySwatch: Colors.blue,
    scaffoldBackgroundColor: ColorPalette.whiteBGColor,
    dialogBackgroundColor: ColorPalette.whiteBGColor,
    fontFamily: Constant.fontFamily,
  );

  // =============== App Layout =============== //
  // Web, Tablet, Mobile
  static const double maxContentWidth = 1280;
  static const double minContentHeight = 1050;

  // =============== Local Storage =============== //
  // Login Screen
  static String loginModelStorageKey = 'Login_Model_Storage_Key';
  static String loginModelIVStorageKey = 'Login_Model_IV_Storage_Key';

  // =============== Images Path =============== //
  static const String path = 'assets/images';
  static const String iconsPath = 'assets/icons';

  // Inspire Home Screen
  static const inspireHomeBG = '$path/InspireHomeBGPortrait.png';
  static const inspireHomeLogo = '$path/InspireHomeLogo.png';
  static const bankStaffBtnImg = '$path/InspireHomeBankStaffBtn.png';
  static const salesforceBtnImg = '$path/InspireHomeSalesforceBtn.png';

  // Login Screen
  static const inspireLoginLogo = '$path/InspireLoginLogo.png';

  // Salesforce Home
  static const sfHomeAllianzLogo = '$path/SFHomeAllianzLogo.png';
  static const sfHomeSmallAllianzLogo = '$path/SFHomeSmallAllianzLogo.png';
  static const sfHomeCalendarIcon = '$path/SFHomeCalendarIcon.png';
  static const sfHomeCaseStudyIcon = '$path/SFHomeCaseStudyIcon.png';
  static const sfHomeClaimFormIcon = '$path/SFHomeClaimFormIcon.png';
  static const sfHomeEFNAIcon = '$path/SFHomeEFNAIcon.png';
  static const sfHomeESPAJIcon = '$path/SFHomeESPAJIcon.png';
  static const sfHomeIllustrationIcon = '$path/SFHomeIllustrationIcon.png';
  static const sfHomePipelineIcon = '$path/SFHomePipelineIcon.png';
  static const sfHomePSATransactionIcon = '$path/SFHomePSATransactionIcon.png';
  static const sfHomeSalesVideoIcon = '$path/SFHomeSalesVideoIcon.png';
  static const sfHomeSectionTitleIcon = '$path/SFHomeSectionTitleIcon.png';
  static const arrowIcon = '$path/ArrowBlue.png';
  static const searchIcon = '$path/Search.png';
  static const closeIcon = '$path/Close.png';
  static const avatarIcon = '$path/Avatar.png';
  static const calendarIcon = '$path/Calendar.png';
  static const paper = '$path/paper.png';
  static const userIcon = '$iconsPath/User.png';
  static const sortIcon = '$iconsPath/Sort.png';
  static const sortAscIcon = '$iconsPath/SortAsc.png';
  static const sortDscIcon = '$iconsPath/SortDsc.png';
  static const trend = '$iconsPath/Trend.png';
  static const trashIcon = '$iconsPath/Trash.png';
  static const azPlus = '$iconsPath/AzPlus.png';
  static const arrowDown = '$iconsPath/ArrowDown.png';
  static const arrowUp = '$iconsPath/ArrowUp.png';


  // Dashboard Screen
  static const dashboardAddIllustration = '$path/DashboardAddIllustration.png';

  // TRENDS on Funds Table
  static const trendUpText = 'UP';
  static const trendDownText = 'DOWN';

  // TABLE
  static const List<int> availableRowsPerPage = [10, 20, 50, 100];
  static const paginationStartPage = 1;
  static const dialogRowsPerPage = 30;

  static const maxFundsSelected = 12;

  //illustration
  static const sfIllustrationSampleBanner = '$path/illustrationBannerSample.png';
}
