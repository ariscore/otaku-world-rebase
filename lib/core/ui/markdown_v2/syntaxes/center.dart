import 'package:flutter/material.dart';
import 'package:markdown/markdown.dart' as md;
import 'package:markdown_widget/markdown_widget.dart';

import '../parsers/center_block_parser.dart';

final centerFenceOpen = RegExp(r'^( {0,3})~~~(?!.*~~~)(.*)\s*$');

final centerFenceClose = RegExp(r'^( {0,3})~~~(.*)\s*$');

SpanNodeGeneratorWithTag centerBlockSpanWithTag = SpanNodeGeneratorWithTag(
  tag: 'center',
  generator: (element, config, visitor) {
    // log('Generate center');
    return CustomCenterNode(element: element, visitor: visitor);
  },
);

class CenterSyntax extends md.InlineSyntax {
  // SpoilerSyntax() : super(r'~!([\s\S]*?)!~');
  CenterSyntax() : super(r'~~~([^][\s\S]*?)~~~');

  @override
  bool onMatch(md.InlineParser parser, Match match) {
    final content = match.group(1)!;
    final el = md.Element('center', [...parser.document.parseInline(content)]);
    // final el = md.Element('center', [md.UnparsedContent(content)]);
    parser.addNode(el);
    return true;
  }
}

class CenterBlockSyntax extends md.BlockSyntax {
  // Matches a fence line of up to 3 spaces + 3+ tildes + optional spaces/tabs.
  @override
  final RegExp pattern = centerFenceOpen;

  CenterBlockSyntax();

  @override
  bool canParse(md.BlockParser parser) {
    // Only match if the current line is a lone "~~~" (possibly indented 0–3 spaces).
    return pattern.hasMatch(parser.current.content);
  }

  @override
  md.Node parse(md.BlockParser parser) {
    final openingMatch = pattern.firstMatch(parser.current.content)!;
    // final afterTildes = openingMatch.group(2)!.trim();
    final afterTildes = openingMatch.group(2)!;

    if (afterTildes.endsWith('~~~')) {
      // final content = afterTildes.substring(0, afterTildes.length - 3).trim();
      final content = afterTildes.substring(0, afterTildes.length - 3);
      parser.advance();
      final el = md.Element('center', []);
      el.children!.addAll(parser.document.parseInline(content));
      return el;
    }

    parser.advance();

    final List<md.Line> innerLines = <md.Line>[];
    while (!parser.isDone) {
      if (centerFenceClose.hasMatch(parser.current.content)) {
        // found the closing "~~~"
        parser.advance();
        if (afterTildes.isNotEmpty) {
          innerLines.add(md.Line(afterTildes));
          // innerLines.add(md.Line('\\'));
        }
        break;
      }
      final content = parser.current.content.trim();
      // final content = parser.current.content;
      innerLines.add(
        parser.current.isBlankLine
            ? md.Line('</br>', tabRemaining: parser.current.tabRemaining)
            : md.Line(content, tabRemaining: parser.current.tabRemaining),
      );
      parser.advance();
    }

    // final innerParser = md.BlockParser(innerLines, parser.document);
    final innerParser = CenterBlockParser(innerLines, parser.document);

    final List<md.Node> innerNodes = <md.Node>[];
    while (!innerParser.isDone) {
      innerNodes.addAll(innerParser.parseLines());
    }
    // log('Inner nodes: ${innerNodes.map((e) => e.textContent)}');

    return md.Element('center', innerNodes);
  }
}

class CustomCenterNode extends ElementNode {
  CustomCenterNode({required this.element, required this.visitor});

  final md.Element element;
  final WidgetVisitor visitor;

  @override
  InlineSpan build() {
    return WidgetSpan(
      child: Center(
        child: CustomProxyRichText(
          childrenSpan,
          richTextBuilder: visitor.richTextBuilder,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

class CustomProxyRichText extends StatelessWidget {
  final InlineSpan textSpan;
  final RichTextBuilder? richTextBuilder;
  final TextAlign? textAlign;

  const CustomProxyRichText(
    this.textSpan, {
    super.key,
    this.richTextBuilder,
    this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    return richTextBuilder?.call(textSpan) ??
        Text.rich(
          textSpan,
          textAlign: textAlign,
          style: textSpan.style,
        );
  }
}
