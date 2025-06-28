import 'dart:developer';

import 'package:markdown/markdown.dart' as m;
import 'package:markdown_widget/markdown_widget.dart';

SpanNodeGeneratorWithTag strikeGenerator = SpanNodeGeneratorWithTag(
  tag: 'del',
  generator: (element, config, visitor) {
    return DelNode();
  },
);

// class CustomDelNode extends ElementNode {
//   CustomDelNode({required this.text});
//
//   final String text;
//
//   @override
//   InlineSpan build() {
//     DelNode();
//     return TextSpan(
//         text: text,
//         style: parentStyle?.merge(TextStyle(
//             color: Colors.white,
//             decorationColor: Colors.white,
//             decoration: TextDecoration.lineThrough)));
//   }
// }

class StrikeSyntax extends m.DelimiterSyntax {
  StrikeSyntax() : super(
    '~~',
    requiresDelimiterRun: true,
    allowIntraWord: true,
    startCharacter: 0x7E,
    tags: [m.DelimiterTag('del', 2)],
  );

  @override
  bool onMatch(m.InlineParser parser, Match match) {
    log('Strike match: ${match.groupCount}');
    return super.onMatch(parser, match);
  }

  // @override
  // bool onMatch(m.InlineParser parser, Match match) {
  //   var center = match.group(1) ?? match.group(2) ?? '';
  //   log('Strike match: $center');
  //
  //   // if (spoiler != null) {
  //   m.Element el = m.Element.text(strikeGenerator.tag, center);
  //   parser.addNode(el);
  //   // }
  //
  //   return true;
  // }
}
