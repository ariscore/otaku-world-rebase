import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceUtils {
  static const String keyIsAdult = 'is_adult';
  static const String keyAccessToken = 'access_token';
  static const String keyIsFirstTime = 'is_first_time';

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

  static Future<void> clearData() async {
    await clearAccessToken();
  }
}
