import 'dart:developer';
import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';

class AndroidVersionUtils {
  /// Checks if the current Android device is running Android 12 (API level 31) or higher
  /// Returns false for non-Android platforms
  static Future<bool> isAndroid12Plus() async {
    try {
      // Return false if not running on Android
      if (!Platform.isAndroid) {
        return false;
      }

      final DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
      final AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;

      // Android 12 corresponds to API level 31
      // Android 13 = API 33, Android 14 = API 34, etc.
      return androidInfo.version.sdkInt >= 31;
    } catch (e) {
      log('Error checking android version : ${e.toString()}');
      return false;
    }
  }

  /// Gets the Android API level
  /// Returns null for non-Android platforms
  static Future<int?> getAndroidApiLevel() async {
    try {
      if (!Platform.isAndroid) {
        return null;
      }

      final DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
      final AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;

      return androidInfo.version.sdkInt;
    } catch (e) {
      log('Error getting android version : ${e.toString()}');
      return null;
    }
  }
}
