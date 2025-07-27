import 'package:otaku_world/constants/string_constants.dart';
import 'package:otaku_world/core/ui/bottomsheet/helpers/url_helpers.dart';
import 'package:share_plus/share_plus.dart';

class ShareHelpers {
  static void mediaShareOptions(int mediaId) {
    Share.share(
      "${ShareConstants.mediaMessage} ${UrlHelpers.getMediaLocalUrl(mediaId)}",
    );
  }

  static void characterShareOptions(int characterId) {
    Share.share(
      "${ShareConstants.characterMessage} ${UrlHelpers.getCharacterLocalUrl(characterId)}",
    );
  }

  static void staffShareOptions(int staffId) {
    Share.share(
      "${ShareConstants.staffMessage} ${UrlHelpers.getStaffLocalUrl(staffId)}",
    );
  }

  static void studioShareOptions(int studioId) {
    Share.share(
      "${ShareConstants.studioMessage} ${UrlHelpers.getStudioLocalUrl(studioId)}",
    );
  }

  static void profileShareOptions(int profileId) {
    Share.share(
      "${ShareConstants.profileMessage} ${UrlHelpers.getProfileLocalUrl(profileId)}",
    );
  }

  static void reviewShareOptions(int reviewId) {
    Share.share(
      "${ShareConstants.reviewMessage} ${UrlHelpers.getReviewLocalUrl(reviewId)}",
    );
  }

  static void activityShareOptions(int activityId) {
    Share.share(
      "${ShareConstants.activityMessage} ${UrlHelpers.getActivityLocalUrl(activityId)}",
    );
  }
}
