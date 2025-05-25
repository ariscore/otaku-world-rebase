import 'package:otaku_world/graphql/__generated/graphql/schema.graphql.dart';

class AnilistUriHelpers {
  static String scheme = 'https';
  static String host = 'anilist.co';

  static Uri getMediaUri(
    String mediaId,
    Enum$MediaType mediaType,
  ) {
    String path = mediaType == Enum$MediaType.ANIME ? '/anime/' : '/manga/';
    path += mediaId;
    return Uri(
      scheme: scheme,
      host: host,
      path: path,
    );
  }

  static Uri getCharacterUri(String characterId) {
    return Uri(
      scheme: scheme,
      host: host,
      path: '/character/$characterId',
    );
  }
}
