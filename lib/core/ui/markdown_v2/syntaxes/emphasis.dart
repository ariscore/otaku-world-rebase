import 'package:markdown/markdown.dart';

class CustomItalicSyntax extends InlineSyntax {
  CustomItalicSyntax() : super(r'(\*|_)\s*(.*?)\s*\1', caseSensitive: false);

  @override
  bool onMatch(InlineParser parser, Match match) {
    final marker = match.group(1)!;    // "*" or "_"
    final raw = match.group(2)!;       // trimmed inner text, e.g. "Text"
    // If you want exactly "*" to produce <em> and "_" to produce <em> as well,
    // you can ignore `marker` and always use <em>. We do that here:
    final el = Element.text('em', raw);
    parser.addNode(el);
    return true;
  }
}