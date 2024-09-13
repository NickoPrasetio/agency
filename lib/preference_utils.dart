/*
  preference_utils.dart
  
  Created by GABRIELSORE on 21/08/24.
  Copyright © 2024 Allianz. All rights reserved.
*/

import 'dart:async' show Future;


class PreferenceUtils {
  static Future<SharedPreferences> get _instance async =>
      _prefsInstance ??= await SharedPreferences.getInstance();
  static SharedPreferences? _prefsInstance;

  // call this method from iniState() function of mainApp().
  static Future<SharedPreferences> init() async {
    _prefsInstance = await _instance;
    return _prefsInstance!;
  }

  static String getString(String key, [String? defValue]) {
    return _prefsInstance!.getString(key) ?? defValue ?? "";
  }

  static int getInt(String key, [int? defValue]) {
    return _prefsInstance!.getInt(key) ?? defValue ?? 0;
  }

  static Future<bool> setString(String key, String value) async {
    var prefs = await _instance;
    return prefs?.setString(key, value) ?? Future.value(false);
  }
}
