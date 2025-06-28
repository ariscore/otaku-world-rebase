import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:markdown/markdown.dart' as m;
import 'package:markdown_widget/markdown_widget.dart';

final centerFenceOpen = RegExp(r'^([ ]{0,3})~~~(.*)\s*$');

final centerFenceClose = RegExp(r'^([ ]{0,3})~~~(.*)\s*$');

SpanNodeGeneratorWithTag centerBlockSpanWithTag = SpanNodeGeneratorWithTag(
  tag: 'center',
  generator: (element, config, visitor) {
    log('Generate center');
    // `visitor.visitChildren(element)` will build all inner spans
    return CustomCenterNode(element: element, visitor: visitor);
  },
);

class CenterSyntax extends m.InlineSyntax {
  CenterSyntax() : super(r'~~~([\s\S]+?)~~~');

  @override
  bool onMatch(m.InlineParser parser, Match match) {
    // 1️⃣ Create the <center> element
    final el = m.Element('center', []);

    // 2️⃣ Parse the inner content with all inline rules
    final innerText = match.group(1)!;
    el.children!.addAll(parser.document.parseInline(innerText));

    // 3️⃣ Add it into the AST
    parser.addNode(el);
    return true;
  }
}

class CenterBlockSyntax extends m.BlockSyntax {
  @override
  RegExp get pattern => centerFenceOpen;

  @override
  m.Node parse(m.BlockParser parser) {
    final line = parser.current.content;
    final match = centerFenceOpen.firstMatch(line)!;
    final afterTildes = match.group(2)!.trim();   // whatever follows the opening ~~~

    // 1️⃣ Single‐line: ~~~foo~~~
    if (afterTildes.endsWith('~~~')) {
      final content = afterTildes.substring(0, afterTildes.length - 3).trim();
      parser.advance();
      final el = m.Element('center', []);
      el.children!.addAll(parser.document.parseInline(content));
      return el;
    }

    // 2️⃣ Multiline start: consume the opener line
    parser.advance();

    final buffer = StringBuffer();
    // 2a. If opener line had text after ~~~, add it
    if (afterTildes.isNotEmpty) {
      buffer.writeln(afterTildes);
    }

    // 3️⃣ Collect lines until we find a closer
    while (!parser.isDone) {
      final curr = parser.current.content;
      final trimmed = curr.trim();

      // 4️⃣ Pure closer line: "~~~"
      if (trimmed == '~~~') {
        parser.advance();
        break;
      }

      // 5️⃣ Closer tacked onto content: "...text~~~"
      if (trimmed.endsWith('~~~')) {
        final lineContent = curr.substring(0, curr.lastIndexOf('~~~')).trim();
        if (lineContent.isNotEmpty) {
          buffer.writeln(lineContent);
        }
        parser.advance();
        break;
      }

      // 6️⃣ Regular content line
      buffer.writeln(curr);
      parser.advance();
    }

    // 7️⃣ Trim blank lines at start/end
    var inner = buffer.toString();
    inner = inner.replaceAll(RegExp(r'^\n+'), '');
    inner = inner.replaceAll(RegExp(r'\n+$'), '');

    // 8️⃣ Wrap in <center> with inline parsing
    final el = m.Element('center', []);
    el.children!.addAll(parser.document.parseInline(inner));
    return el;
  }


}

class CustomCenterNode extends SpanNode {
  CustomCenterNode({required this.element, required this.visitor});

  final m.Element element;
  final WidgetVisitor visitor;

  @override
  InlineSpan build() {
    log('Elements: ${element.children}');
    final children = visitor.visit(element.children ?? []);
    log('Children: ${children}');
    log('Build nodes: ${children.map((e) => e.build())}');
    return WidgetSpan(
      child: Center(
        child: RichText(
          text: TextSpan(children: children.map((e) => e.build()).toList()),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}