import 'dart:developer';
import 'dart:io';

import 'package:in_app_update/in_app_update.dart';

import '../../../config/app_config.dart';

class AppUpdateService {
  static Future<void> checkForAppUpdate() async {
    if (true) {
      //
      if (Platform.isAndroid) {
        await _checkAndroidUpdate();
      } else if (Platform.isIOS) {
        // await _checkIOSUpdate();
      }
    }
  }

  static Future<void> _checkAndroidUpdate() async {
    try {
      final updateInfo = await InAppUpdate.checkForUpdate();
      if (updateInfo.updateAvailability == UpdateAvailability.updateAvailable) {
        if (updateInfo.immediateUpdateAllowed) {
          await _performImmediateUpdate();
        } else if (updateInfo.flexibleUpdateAllowed) {
          await _performFlexibleUpdate();
        }
      }
    } catch (error) {
      log('Update check error: $error');
    }
  }

  static Future<void> _performImmediateUpdate() async {
    final result = await InAppUpdate.performImmediateUpdate();
    if (result == AppUpdateResult.success) {
      log('Update successful');
    } else {
      log('Update failed');
      if (AppConfig.enableForceUpdateFeature) {
        checkForAppUpdate();
      }
    }
  }

  static Future<void> _performFlexibleUpdate() async {
    final result = await InAppUpdate.startFlexibleUpdate();
    if (result == AppUpdateResult.success) {
      log('Flexible update successful');
      await InAppUpdate.completeFlexibleUpdate();
    } else {
      log('Flexible update failed');
      if (AppConfig.enableForceUpdateFeature) {
        checkForAppUpdate();
      }
    }
  }

/* static Future<void> _checkIOSUpdate() async {
    final response = await ApiServiceConfig.apiService.getRequest(
      'https://itunes.apple.com/lookup?bundleId=${AppConfig.appBundleIdentifier}&country=in',
      fromJson: (data) => IosInAppUpdateResponse.fromJson(data),
    );
    if (response.data?.results != null && response.data!.results!.isNotEmpty) {
      final String? appStoreVersion = response.data!.results!.first.version;
      final int? appId = response.data!.results!.first.trackId;

      final String currentVersion = await AppInfo.getAppVersion();
      if (appId != null &&
          appStoreVersion != null &&
          _isNewVersionAvailable(currentVersion, appStoreVersion)) {
        _showInAppUpdateDialog(appId);
      }
    }
  }

  static bool _isNewVersionAvailable(
      String currentVersion, String appStoreVersion) {
    final currentParts = currentVersion.split('.').map(int.parse).toList();
    final storeParts = appStoreVersion.split('.').map(int.parse).toList();

    for (int i = 0; i < storeParts.length; i++) {
      if (storeParts[i] > (i < currentParts.length ? currentParts[i] : 0)) {
        return true;
      }
    }
    return false;
  }

  static void _showInAppUpdateDialog(int appId) {
    // TODO : change the dialog design.
    Get.defaultDialog(
      title: 'New Update Available',
      middleText: 'A new version is available. Please update now.',
      confirm: ElevatedButton(
        onPressed: () async {
          final url = Uri.parse('${AppConfig.appStoreLink}$appId');
          if (await canLaunchUrl(url)) {
            await launchUrl(url, mode: LaunchMode.externalApplication);
          }
        },
        child: const Text('Update Now'),
      ),
      barrierDismissible: false,
    );
  } */
}
