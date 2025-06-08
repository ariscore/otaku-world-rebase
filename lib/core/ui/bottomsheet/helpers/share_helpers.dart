import 'package:otaku_world/config/app_config.dart';
import 'package:otaku_world/config/router/router_constants.dart';
import 'package:otaku_world/core/ui/bottomsheet/helpers/url_helpers.dart';
import 'package:share_plus/share_plus.dart';

class ShareHelpers {
  static void mediaShareOptions(int mediaId) {
    Share.share(
        "Check out this New MEDIA ${UrlHelpers.getMediaLocalUrl(mediaId)}");
  }

  static void characterShareOptions(int characterId) {
    Share.share(
        "Check out this New Character ${UrlHelpers.getCharacterLocalUrl(characterId)}");
  }

  static void staffShareOptions(int staffId) {
    Share.share(
        "Check out this New Staff ${UrlHelpers.getStaffLocalUrl(staffId)}");
  }

  static void studioShareOptions(int studioId) {
    Share.share(
        "Check out this New Studio ${UrlHelpers.getStudioLocalUrl(studioId)}");
  }
}
