class AnilistUriHelpers {
  static String scheme = 'https';
  static String host = 'anilist.co';

  static Uri getMediaUri(String mediaId) {
    return Uri(
      scheme: scheme,
      host: host,
      path: '/media/$mediaId',
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
