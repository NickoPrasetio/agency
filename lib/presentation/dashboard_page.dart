//
// dashboard_page.dart
//

import 'package:agency/common_widget/agency_color.dart';
import 'package:agency/common_widget/dropdown_text_field/custom_dropdown_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_helper/flutter_ui_helper.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class DashboardPage extends StatefulWidget {
  // Class Constructor
  const DashboardPage({super.key});

  // Widget State
  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  void dispose() {
    super.dispose();
  }

  // Widget Methods
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Padding(
        padding:
            const EdgeInsets.only(top: 75, left: 20, right: 20, bottom: 20),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _dashboardTitle(),
                  Row(children: [
                    _iconSearch(),
                    _verticalSpace8(),
                    _iconNotification(),
                    _verticalSpace8(),
                    _iconUser()
                  ])
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [_recuritmentAnalytcsText(), _seeDetailTitle()],
              ),
              Row(children: [_dropDownFilterHistory()])
            ]),
      ),
    );
  }

  Widget _iconSearch() {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        border: Border.all(color: AgencyColors.greyDark),
        borderRadius: BorderRadius.circular(4),
      ),
      child: const Icon(Icons.search, color: ColorPalette.black),
    );
  }

  Widget _iconNotification() {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        border: Border.all(color: AgencyColors.greyDark),
        borderRadius: BorderRadius.circular(4),
      ),
      child: const Icon(Icons.notifications, color: ColorPalette.black),
    );
  }

  Widget _iconUser() {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        border: Border.all(color: AgencyColors.greyDark),
        borderRadius: BorderRadius.circular(4),
      ),
      child: const Icon(Icons.notifications, color: ColorPalette.black),
    );
  }

  Widget _dashboardTitle() {
    final localized = AppLocalizations.of(context);
    return AdaptiveText(
      text: localized?.dashboard ?? '-',
      textAlign: TextAlign.center,
      color: ColorPalette.black,
      fontSize: UIFont.h1,
      fontSystem: UIFontSystem.bold,
      mobileFactor: 0.8,
      smallMobileFactor: 0.6,
    );
  }

  Widget _recuritmentAnalytcsText() {
    return AdaptiveText(
      text: AppLocalizations.of(context)?.recuritmentAnalystics ?? '-',
      textAlign: TextAlign.center,
      color: ColorPalette.black,
      fontSize: UIFont.h3,
      fontSystem: UIFontSystem.regular,
      mobileFactor: 0.8,
      smallMobileFactor: 0.6,
    );
  }

  Widget _verticalSpace8() {
    return Container(width: 8);
  }

  Widget _seeDetailTitle() {
    return AdaptiveText(
      text: AppLocalizations.of(context)?.seeDetails ?? '-',
      textAlign: TextAlign.center,
      color: ColorPalette.textBlueColor,
      fontSize: UIFont.h5,
      fontSystem: UIFontSystem.bold,
      mobileFactor: 0.8,
      smallMobileFactor: 0.6,
    );
  }

  final List<String> items = [
    'Self',
  ];

  Widget _dropDownFilterHistory() {
    return CustomDropdownButton(
      buttonWidth: 200,
      onChanged: (String? newValue) {},
      hint: "Self",
      paddingIcon: Icons.keyboard_arrow_down,
      icon: Icon(Icons.keyboard_arrow_down),
      iconSize: 40,
      value: "",
      dropdownItems: [],
    );
  }
}
