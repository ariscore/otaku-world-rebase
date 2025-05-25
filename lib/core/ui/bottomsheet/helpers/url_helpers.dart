import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:otaku_world/config/router/router_constants.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../config/app_config.dart';
import '../../../../utils/ui_utils.dart';

class UrlHelpers {
  static String getMediaLocalUrl(int mediaId) {
    return '${AppConfig.baseUrl}${RouteConstants.mediaDetail}?id=$mediaId';
  }

  static String getStaffLocalUrl(int staffId) {
    return '${AppConfig.baseUrl}${RouteConstants.staffDetail}?id=$staffId';
  }

  static String getCharacterLocalUrl(int characterId) {
    return '${AppConfig.baseUrl}${RouteConstants.characterDetail}?id=$characterId';
  }

  static String getStudioLocalUrl(int studioId) {
    return '${AppConfig.baseUrl}${RouteConstants.studioDetail}?id=$studioId';
  }

  static Future<void> launchUri(BuildContext context, Uri uri) async {
    try {
      await launchUrl(
        uri,
        mode: LaunchMode.externalApplication,
      );
    } catch (e) {
      if (context.mounted) {
        UIUtils.showSnackBar(context, 'Unable to launch url');
      }
    }
  }

  static Future<void> launchUrlLink(BuildContext context, String url) async {
    try {
      final uri = Uri.parse(url);
      await launchUri(context, uri);
    } catch (e) {
      if (context.mounted) {
        UIUtils.showSnackBar(context, 'Invalid URL');
      }
    }
  }

  static void copyUrlToClipboard(BuildContext context, String url) {
    Clipboard.setData(ClipboardData(text: url));
    UIUtils.showSnackBar(context, 'URL copied to clipboard');
  }
}
