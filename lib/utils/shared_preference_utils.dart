import 'dart:convert';

import 'package:otaku_world/graphql/__generated/graphql/fragments.graphql.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceUtils {
  static const String keyIsAdult = 'is_adult';
  static const String keyAccessToken = 'access_token';
  static const String keyIsFirstTime = 'is_first_time';
  static const String keyUser = 'user';
  static const String keyUserId = 'user_id';
  static const String keyUserName = 'user_name';
  static const String keyUserAvatar = 'user_avatar';

  static SharedPreferences? _prefs;

  static Future<void> init() async {
    _prefs ??= await SharedPreferences.getInstance();
  }

  static Future<void> setAccessToken(String token) async {
    await _prefs?.setString(keyAccessToken, token);
  }

  static String? getAccessToken() {
    return _prefs?.getString(keyAccessToken);
  }

  static Future<void> clearAccessToken() async {
    await _prefs?.remove(keyAccessToken);
  }

  static Future<void> setIsFirstTime(bool isFirstTime) async {
    await _prefs?.setBool(keyIsFirstTime, isFirstTime);
  }

  static bool getIsFirstTime() {
    return _prefs?.getBool(keyIsFirstTime) ??
        true; // Assume first time by default
  }

  static Future<void> setUserData(Fragment$Settings user) async {
    await _prefs?.setString(keyUser, jsonEncode(user.toJson()));
  }

  static Fragment$Settings? getUserData() {
    final userJson = _prefs?.getString(keyUser);
    if (userJson != null) {
      try {
        return Fragment$Settings.fromJson(jsonDecode(userJson));
      } catch (e) {
        _prefs?.remove(keyUser);
      }
    }
    return null;
  }

  static Future<void> clearData() async {
    await clearAccessToken();
  }
}
