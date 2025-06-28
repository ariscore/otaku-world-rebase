import 'dart:developer';

import 'package:markdown/markdown.dart' as md;
import 'package:markdown_widget/markdown_widget.dart';

SpanNodeGeneratorWithTag boldGenerator = SpanNodeGeneratorWithTag(
  tag: 'b',
  generator: (element, config, visitor) {
    return TextNode(text: 'This is bold text');
  },
);

class BoldSyntax extends md.DelimiterSyntax {
  BoldSyntax()
      : super(
          // r'<(?:b|strong)>([\s\S]+?)<\/(?:b|strong)>|\*\*([\s\S]+?)\*\*|__([\s\S]+?)__',
    '__',
          requiresDelimiterRun: true,
          tags: [md.DelimiterTag('b', 1)],
        );

  @override
  bool onMatch(md.InlineParser parser, Match match) {
    final content = match.group(1) ?? match.group(2) ?? match.group(3) ?? '';
    log('Bold match: $content');
    parser.addNode(md.Element.text('b', content));
    return true;
  }
}
