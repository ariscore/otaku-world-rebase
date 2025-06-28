import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:markdown/markdown.dart' as md;
import 'package:markdown_widget/markdown_widget.dart';
import 'package:otaku_world/config/router/router.dart';
import 'package:otaku_world/graphql/__generated/graphql/schema.graphql.dart';

import '../../../../features/media_detail/screens/youtube_player_screen.dart';
import '../../images/cover_image.dart';

class YoutubeSyntax extends md.InlineSyntax {
  // Note: we escape the dot in youtube.com, and allow any query after v=
  YoutubeSyntax()
    : super(
        r'youtube\((https?:\/\/(?:www\.)?youtube\.com\/watch\?v=[\w\-]+)\)', caseSensitive: false,
      );

  @override
  bool onMatch(md.InlineParser parser, Match match) {
    log('Youtube match: ${match.group(1)}');
    final url = match.group(1)!;
    // Create a custom <youtube> element with its src as an attribute
    final el = md.Element.empty('youtube')..attributes['src'] = url;
    parser.addNode(el);
    return true;
  }
}

SpanNodeGeneratorWithTag youtubeSpanWithTag = SpanNodeGeneratorWithTag(
  tag: 'youtube',
  generator: (element, config, visitor) {
    log('Generate youtube');
    return YoutubeNode(element: element, visitor: visitor);
  },
);

class YoutubeNode extends ElementNode {
  YoutubeNode({required this.element, required this.visitor});

  final md.Element element;
  final WidgetVisitor visitor;

  @override
  InlineSpan build() {
    log('Src: ${element.attributes['src']}');
    final videoId = extractYoutubeId(element.attributes['src'] ?? '');
    return WidgetSpan(
      child: GestureDetector(
        onTap: () {
          YoutubePlayerDialog.showYoutubePlayerDialog(
            context: router.configuration.navigatorKey.currentContext!,
            youtubeId: videoId ?? '',
          );
        },
        child: Stack(
          alignment: Alignment.center,
          children: [
            AspectRatio(
              aspectRatio: 16 / 9,
              child: CoverImage(
                imageUrl: youtubeThumbnailUrl(videoId ?? ''),
                type: Enum$MediaType.MANGA,
              ),
            ),
            const Icon(
              Icons.play_arrow,
              size: 64,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }

  String? extractYoutubeId(String url) {
    final uri = Uri.tryParse(url.trim());
    if (uri == null || (uri.scheme != 'http' && uri.scheme != 'https')) return null;

    // Helper to check valid ID: 11 URL-safe chars (_-A-Za-z0-9)
    bool isValidId(String id) => RegExp(r'^[_\-A-Za-z0-9]{11}$').hasMatch(id);

    String? id;

    if ((uri.host.contains('youtube.com') || uri.host.contains('youtube-nocookie.com')) &&
        uri.pathSegments.isNotEmpty) {
      final path = uri.pathSegments;
      if (path.first == 'watch' && uri.queryParameters['v'] != null) {
        id = uri.queryParameters['v'];
      } else if (path.first == 'embed' || path.first == 'v' || path.first == 'live') {
        id = path.length >= 2 ? path[1] : null;
      } else if (path.first == 'shorts' && path.length >= 2) {
        id = path[1];
      }
    } else if (uri.host == 'youtu.be') {
      log('Youtube url is youtu.be: ${uri.pathSegments}');
      id = uri.pathSegments.isNotEmpty ? uri.pathSegments.first : null;
    }

    return (id != null && isValidId(id.trim())) ? id.trim() : null;
  }

  String youtubeThumbnailUrl(String videoId, {String quality = 'hqdefault'}) {
    return 'https://img.youtube.com/vi/$videoId/$quality.jpg';
  }

}
