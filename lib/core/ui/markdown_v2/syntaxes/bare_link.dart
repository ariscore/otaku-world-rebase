import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:markdown/markdown.dart' as md;
import 'package:markdown_widget/markdown_widget.dart';

/// 1️⃣ Define the InlineSyntax to match <a>…</a>
class BareLinkSyntax extends md.InlineSyntax {
  // Matches literally <a>some text</a>, capturing “some text”
  BareLinkSyntax() : super(r'<a>([\s\S]*?)</a>', caseSensitive: false);

  @override
  bool onMatch(md.InlineParser parser, Match match) {
    final text = match.group(1)!.trim();
    // Build an <a> element with href==text
    final el = md.Element.text('a', text);
    parser.addNode(el);
    return true;
  }
}

SpanNodeGeneratorWithTag bareLinkSpanWithTag = SpanNodeGeneratorWithTag(
  tag: 'bare',
  generator: (element, config, visitor) {
    log('Generate bare link');
    return BareLinkNode(element: element, visitor: visitor, config: config);
  },
);

class BareLinkNode extends ElementNode {
  BareLinkNode({
    required this.element,
    required this.visitor,
    required this.config,
  });

  final md.Element element;
  final WidgetVisitor visitor;
  final MarkdownConfig config;

  @override
  InlineSpan build() {
    // return super.build();
    log('Bare children: ${element.textContent}');
    return WidgetSpan(
      child: Text(
        '*text*',
        // element.textContent,
        style: config.a.style,
      ),
    );
  }
}
