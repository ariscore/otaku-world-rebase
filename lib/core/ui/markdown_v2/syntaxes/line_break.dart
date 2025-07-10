import 'dart:developer';

import 'package:flutter/material.dart' as m;
import 'package:markdown/markdown.dart';
import 'package:markdown_widget/markdown_widget.dart';

SpanNodeGeneratorWithTag brSpanWithTag = SpanNodeGeneratorWithTag(
  tag: 'br',
  generator: (element, config, visitor) {
    // log('Generate line break');
    return CustomBrNode();
  },
);

class CustomLineBreakSyntax extends InlineSyntax {
  CustomLineBreakSyntax() : super(r'\n');

  /// Create a void <br> element.
  @override
  bool onMatch(InlineParser parser, Match match) {
    log('Line break match: ${match.group(0)}');
    // parser.addNode(Element.empty('br'));
    parser.addNode(Element.text('p', '\n'));
    return true;
  }
}

class BrSyntax extends InlineSyntax {
  BrSyntax() : super(r'<\/?br\s*\/?>', caseSensitive: false);

  @override
  bool onMatch(InlineParser parser, Match match) {
    log('Line break br match: ${match.group(0)}');
    // parser.addNode(Element.empty('br'));
    parser.addNode(Element.text('p', '\n'));
    return true;
  }
}

class CustomBrNode extends SpanNode {
  @override
  m.InlineSpan build() {
    return m.TextSpan(text: '', style: parentStyle);
  }
}
