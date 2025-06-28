import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:markdown/markdown.dart' as m;
import 'package:markdown_widget/markdown_widget.dart';

SpanNodeGeneratorWithTag centerSpanWithTag = SpanNodeGeneratorWithTag(
  tag: 'center',
  generator: (element, config, visitor) {
    log('Generate center');
    // `visitor.visitChildren(element)` will build all inner spans
    return CustomCenterNode(element: element, visitor: visitor);
  },
);

class CenterSyntax extends m.DelimiterSyntax {
  CenterSyntax() : super(
    '~~~',
    requiresDelimiterRun: true,
    allowIntraWord: false,
    // startCharacter: 0x7E,
    tags: [m.DelimiterTag('center', 3)],
  );

  @override
  bool onMatch(m.InlineParser parser, Match match) {
    // A) Create an empty <center> element
    final el = m.Element('center', []);

    // B) Re‑parse the inner text via Document.parseInline
    //    parser.document is the Document instance passed to InlineParser
    final inner = parser.document.parseInline(match.group(1)!);
    for (final node in inner) {
      el.children!.add(node);
    }

    // C) Inject the fully parsed element
    parser.addNode(el);
    return true;
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
    log('Children: $children');
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

class CodeBlockNode extends ElementNode {
  CodeBlockNode(this.element, this.pConfig, this.visitor);

  final PConfig pConfig;
  final m.Element element;
  final WidgetVisitor visitor;

  @override
  TextStyle get style =>
      parentStyle?.merge(pConfig.textStyle) ?? pConfig.textStyle;

  @override
  InlineSpan build() {
    return WidgetSpan(
      child: Center(
        child: Text.rich(
          childrenSpan,
          style: style.copyWith(color: Colors.black),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
