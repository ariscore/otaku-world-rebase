import 'package:markdown/markdown.dart' as md;

class UrlLinkSyntax extends md.InlineSyntax {
  // Regex breakdown:
  // - https?://       → matches "http://" or "https://"
  // - [^\s<>()]+      → one or more characters except whitespace or angle‐/paren‐brackets
  UrlLinkSyntax() : super(r'https?:\/\/[^\s<>()]+');

  @override
  bool onMatch(md.InlineParser parser, Match match) {
    final url = match[0]!;

    // Create an <a> element with href=url
    final element = md.Element.text('a', url)
      ..attributes['href'] = url;

    parser.addNode(element);
    return true;
  }
}