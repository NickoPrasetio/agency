//
//  login_page.dart
//

import 'package:agency/router/custom_navigation_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_ui_helper/flutter_ui_helper.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

enum AppHomeBtnType { agent, candidate, adt, none }

class LoginPage extends StatefulWidget {
  // Class Constructor
  const LoginPage({super.key});

  // Widget State
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // State Properties
  AppHomeBtnType _appHomeBtnType = AppHomeBtnType.none;
  final _usernameTxtController = TextEditingController();
  final _passwordTxtController = TextEditingController();

  @override
  void dispose() {
    _usernameTxtController.dispose();
    _passwordTxtController.dispose();
    super.dispose();
  }

  // Widget Methods
  @override
  Widget build(BuildContext context) {
    final localized = AppLocalizations.of(context);
    double iconSize = 24.0;

    return Scaffold(
      backgroundColor: ColorPalette.codGray,
      appBar: AppBar(
        backgroundColor: ColorPalette.codGray,
        centerTitle: true,
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      body: Padding(
        padding: const EdgeInsets.only(left: 24, right: 24),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AdaptiveTextFormField(
                textFieldType: AdaptiveTextFormFieldType.boxShowingHint,
                maxLength: 30,
                maxLengthEnforcement: MaxLengthEnforcement.none,
                controller: _usernameTxtController,
                prefix: Icon(Icons.person_outline_sharp, size: iconSize),
                hintText: localized?.userName ?? '',
                isMandatory: true,
                mandatoryErrorMsg: '-',
                validations: [
                  Regex(
                    expression: RegexExp.allowAlphanumericWithOutSpace,
                    errorMessage: '-',
                  )
                ],
              ),
              _hSpacer(),
              AdaptiveTextFormField(
                textFieldType: AdaptiveTextFormFieldType.boxShowingHint,
                maxLength: 30,
                maxLengthEnforcement: MaxLengthEnforcement.none,
                controller: _passwordTxtController,
                prefix: Icon(Icons.key, size: iconSize),
                hintText: localized?.password ?? '',
                isMandatory: true,
                mandatoryErrorMsg: '-',
                validations: [
                  Regex(
                    expression: RegexExp.allowAlphanumericWithOutSpace,
                    errorMessage: '-',
                  )
                ],
              ),
              _hSpacer(),
              _loginButton(20)
            ]),
      ),
    );
  }

  Widget _hSpacer() {
    return Container(height: 12);
  }

  AdaptiveButton _loginButton(double iconSize) {
    return AdaptiveButton(
      prefix: SizedBox(width: iconSize, height: iconSize),
      suffix: Icon(Icons.keyboard_arrow_right,
          size: iconSize, color: ColorPalette.white),
      titleText: "Login",
      onTap: () {
        CustomNavigationHelper.router.push(
          CustomNavigationHelper.dashboardPage,
        );
      },
    );
  }
}
