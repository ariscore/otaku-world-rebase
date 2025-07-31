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

  static const String keyReviewRequested = 'review_requested';
  static const String keyReviewDeclined = 'review_declined';
  static const String keyAppOpenCount = 'app_open_count';
  static const String keyLastReviewPrompt = 'last_review_prompt';
  static const String keyReviewPromptCount = 'review_prompt_count';
  static const String positiveActionsKey = 'positive_actions_count';

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

  static Future<void> setReviewRequested(bool requested) async {
    await _prefs?.setBool(keyReviewRequested, requested);
  }

  static bool getReviewRequested() {
    return _prefs?.getBool(keyReviewRequested) ?? false;
  }

  static Future<void> setReviewDeclined(bool declined) async {
    await _prefs?.setBool(keyReviewDeclined, declined);
  }

  static bool getReviewDeclined() {
    return _prefs?.getBool(keyReviewDeclined) ?? false;
  }

  static Future<void> setAppOpenCount(int count) async {
    await _prefs?.setInt(keyAppOpenCount, count);
  }

  static int getAppOpenCount() {
    return _prefs?.getInt(keyAppOpenCount) ?? 0;
  }

  static Future<void> setLastReviewPrompt(int timestamp) async {
    await _prefs?.setInt(keyLastReviewPrompt, timestamp);
  }

  static int getLastReviewPrompt() {
    return _prefs?.getInt(keyLastReviewPrompt) ?? 0;
  }

  static Future<void> setReviewPromptCount(int count) async {
    await _prefs?.setInt(keyReviewPromptCount, count);
  }

  static int getReviewPromptCount() {
    return _prefs?.getInt(keyReviewPromptCount) ?? 0;
  }

  static void setPositiveActionsCount(int count) {
    _prefs?.setInt(positiveActionsKey, count);
  }

  static int getPositiveActionsCount() {
    return _prefs?.getInt(positiveActionsKey) ?? 0;
  }

  static Future<void> clearReviewData() async {
    await _prefs?.remove(keyReviewRequested);
    await _prefs?.remove(keyReviewDeclined);
    await _prefs?.remove(keyAppOpenCount);
    await _prefs?.remove(keyLastReviewPrompt);
    await _prefs?.remove(keyReviewPromptCount);
  }

  static Future<void> clearData() async {
    await clearAccessToken();
  }
}
