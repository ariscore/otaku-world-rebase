import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:markdown/markdown.dart' as md;
import 'package:markdown_widget/markdown_widget.dart';

class WebmSyntax extends md.InlineSyntax {
  WebmSyntax() : super(r'webm\((https?:\/\/[^\s)]+\.webm)\)',);

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
    return WidgetSpan(child: Text('Web M Video'));
  }
}