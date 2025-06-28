import 'dart:developer';

import 'package:markdown/markdown.dart' as md;
import 'package:markdown_widget/markdown_widget.dart';

// final SpanNodeGeneratorWithTag header1SpanWithTag = SpanNodeGeneratorWithTag(
//   tag: 'h1',
//   generator: (element, config, visitor) {
//     return CustomHeaderNode(
//       element: element,
//       visitor: visitor,
//       level: 1, // pass level into your custom node if you need it
//     );
//   },
// );

class AniListHeaderSyntax extends md.BlockSyntax {
  // This regex grabs ANY number of leading '#', as long as there is at least one space after them.
  @override
  RegExp get pattern => RegExp(r'^ {0,3}(#+)(.*?)(?:[ \t]*#+[ \t]*)?$');

  const AniListHeaderSyntax();

  // @override
  // bool canParse(md.BlockParser parser) {
  //   return pattern.hasMatch(parser.current);
  // }

  @override
  md.Node parse(md.BlockParser parser) {
    log('Got header match');
    final match = pattern.firstMatch(parser.current.content)!;

    // group(1) is something like "#######"
    final allHashes = match.group(1)!;
    // group(2) is the rest of the line, e.g. "Sample Text"
    final rawContent = match.group(2)!;

    final totalHashes = allHashes.length;          // e.g. 7
    final level = totalHashes > 6 ? 6 : totalHashes; // cap at 6

    // Calculate how many hashes overflow above 6
    final overflow = totalHashes > 6 ? (totalHashes - 6) : 0;
    final leftoverHashes = overflow > 0 ? ('#' * overflow) : '';

    // Build the final content for the <h6> (or <hN>)
    // If there were extra hashes, prepend them plus a space.
    final contentText = leftoverHashes.isNotEmpty
        ? '$leftoverHashes ${rawContent.trim()}'
        : rawContent.trim();

    // Consume this line so the parser moves on
    parser.advance();

    // Produce an AST element like <hN> with UnparsedContent
    return md.Element('h$level', [...parser.document.parseInline(contentText)]);
    return md.Element('h$level', [md.UnparsedContent(contentText)]);
  }
}
