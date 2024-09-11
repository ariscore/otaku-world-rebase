import 'dart:developer' as dev;

import 'package:flutter/material.dart';
import 'package:markdown/markdown.dart' as md;
import 'package:markdown_widget/markdown_widget.dart';

String _centerTag = 'center';

SpanNodeGeneratorWithTag centerWithTag = SpanNodeGeneratorWithTag(
  tag: _centerTag,
  generator: (e, config, visitor) => CenterNode(),
);

class CenterSyntax extends md.InlineSyntax {
  CenterSyntax() : super(r'~{3}([\s\S]*?)~{3}');

  @override
  bool onMatch(md.InlineParser parser, Match match) {
    dev.log('Center matched: $match', name: 'Center');
    md.Element el = md.Element.withTag(_centerTag);
    parser.addNode(el);
    return true;
  }
}

class CenterNode extends SpanNode {
  @override
  InlineSpan build() {
    return WidgetSpan(
      child: Container(
        color: Colors.blue,
        height: 50,
        width: 50,
      ),
    );
  }

}
