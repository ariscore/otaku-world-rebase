import 'package:otaku_world/config/app_config.dart';
import 'package:share_plus/share_plus.dart';

class ShareHelpers {
  static void mediaShareOptions(int mediaId) {
    Share.share(
      "Check out this New MEDIA ${AppConfig.baseUrl}"
      "media-detail?id=$mediaId",
    );
  }
}
