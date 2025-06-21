import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:markdown/markdown.dart' as md;
import 'package:markdown_widget/markdown_widget.dart';

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
    return WidgetSpan(child: Text('Youtube Video'));
  }
}
