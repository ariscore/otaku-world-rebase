// analytics_service.dart
import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:package_info_plus/package_info_plus.dart';

class AnalyticsService {
  AnalyticsService._internal();

  static final AnalyticsService _instance = AnalyticsService._internal();

  factory AnalyticsService() => _instance;

  final FirebaseAnalytics _analytics = FirebaseAnalytics.instance;

  bool _initialized = false;

  Future<void> init() async {
    if (_initialized) return; // Avoid re-initialization
    _initialized = true;

    final packageInfo = await PackageInfo.fromPlatform();
    final deviceInfo = DeviceInfoPlugin();

    String deviceModel = 'unknown';
    String osVersion = 'unknown';
    String platform = Platform.operatingSystem;

    if (Platform.isAndroid) {
      final info = await deviceInfo.androidInfo;
      deviceModel = info.model;
      osVersion = info.version.release;
    } else if (Platform.isIOS) {
      final info = await deviceInfo.iosInfo;
      deviceModel = info.utsname.machine;
      osVersion = info.systemVersion;
    }

    await _analytics.setDefaultEventParameters({
      'app_version': packageInfo.version,
      'build_number': packageInfo.buildNumber,
      'device_model': deviceModel,
      'os': platform,
      'os_version': osVersion,
    });

    await _analytics.setUserProperty(
        name: 'app_version', value: packageInfo.version);
    await _analytics.setUserProperty(
        name: 'build_number', value: packageInfo.buildNumber);
    await _analytics.setUserProperty(name: 'device_model', value: deviceModel);
    await _analytics.setUserProperty(name: 'os', value: platform);
    await _analytics.setUserProperty(name: 'os_version', value: osVersion);
  }

  Future<void> setUser({required String userId, String? username}) async {
    await _analytics.setUserId(id: userId);
    if (username != null) {
      await _analytics.setUserProperty(name: 'username', value: username);
    }
  }

  Future<void> clearUser() async {
    await _analytics.setUserId(id: null);
    await _analytics.resetAnalyticsData();
  }

  Future<void> logEvent(String name, {Map<String, Object>? params}) {
    return _analytics.logEvent(name: name, parameters: params);
  }

  Future<void> logScreenView({
    required String screenName,
    String? screenClass,
  }) {
    return _analytics.logScreenView(
      screenName: screenName,
      screenClass: screenClass,
    );
  }
}
