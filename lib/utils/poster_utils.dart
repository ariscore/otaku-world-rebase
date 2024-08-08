import 'dart:math';

class PosterUtils {
  static List<String> getRandomImages(List<String> images) {
    final list = List<String>.from(images)
      ..shuffle(Random());
    return list.sublist(0, 3);
  }
}
