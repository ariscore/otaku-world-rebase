import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:markdown/markdown.dart' as md;
import 'package:markdown_widget/markdown_widget.dart';

import 'package:markdown/markdown.dart' as md;
import 'package:otaku_world/core/ui/video_player_screen.dart';

import '../../../../config/router/router.dart';
import '../../../../graphql/__generated/graphql/schema.graphql.dart';
import '../../images/cover_image.dart';

class WebmSyntax extends md.InlineSyntax {
  WebmSyntax() : super(r'webm\((https?:\/\/[^\s)]+)\)', caseSensitive: false);

  @override
  bool onMatch(md.InlineParser parser, Match match) {
    final url = match.group(1)!;
    final el = md.Element.empty('webm')..attributes['src'] = url;
    parser.addNode(el);
    return true;
  }
}

SpanNodeGeneratorWithTag webmSpanWithTag = SpanNodeGeneratorWithTag(
  tag: 'webm',
  generator: (element, config, visitor) {
    log('Generate webm');
    return WebmNode(element: element, visitor: visitor);
  },
);

class WebmNode extends ElementNode {
  WebmNode({required this.element, required this.visitor});

  final md.Element element;
  final WidgetVisitor visitor;

  @override
  InlineSpan build() {
    log('Src: ${element.attributes['src']}');
    return WidgetSpan(
      child: GestureDetector(
        onTap: () {
          VideoPlayerDialog.showVideoPlayerDialog(
            context: router.configuration.navigatorKey.currentContext!,
            videoUrl: element.attributes['src'] ?? '',
          );
        },
        child: const Stack(
          alignment: Alignment.center,
          children: [
            AspectRatio(
              aspectRatio: 16 / 9,
              child: CoverImage(
                imageUrl: '', // TODO: Implement thumbnail
                type: Enum$MediaType.MANGA,
              ),
            ),
            Icon(
              Icons.play_arrow,
              size: 64,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
