import 'package:markdown/markdown.dart' as md;

class ItalicSyntax extends md.InlineSyntax {
  ItalicSyntax() : super(r'<(?:i|em)>([\s\S]+?)<\/(?:i|em)>|\*([\s\S]+?)\*|_([\s\S]+?)_');

  @override
  bool onMatch(md.InlineParser parser, Match match) {
    final content = match.group(1) ?? match.group(2) ?? match.group(3) ?? '';
    parser.addNode(md.Element.text('i', content));
    return true;
  }
}
