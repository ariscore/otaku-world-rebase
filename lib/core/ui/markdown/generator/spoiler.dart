import 'dart:developer';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import "package:markdown/markdown.dart" as md2;
import 'package:markdown_widget/markdown_widget.dart' as md;
import 'package:otaku_world/config/router/router.dart';
import 'package:otaku_world/utils/ui_utils.dart';

md.SpanNodeGeneratorWithTag spoilerTag = md.SpanNodeGeneratorWithTag(
  tag: "spoiler",
  generator: (e, config, visitor) => SpoilerNode(e.textContent, config.a),
);

class SpoilerSyntax extends md2.InlineSyntax {
  // SpoilerSyntax() : super(r'~!([\s\S]*?)!~');
  SpoilerSyntax() : super(r'~!([^][\s\S]*?)!~');

  @override
  bool onMatch(md2.InlineParser parser, Match match) {
    log('Spoiler match: ${match.groupCount} | ${match.group(0)} | ${match.group(1)}');
    final content = match.group(1)!;
    final el = md2.Element.text('spoiler', content);
    parser.addNode(el);
    return true;
  }
}

final spoilerFenceOpen = RegExp(r'^([ ]{0,3})~!(.*)\s*$');

final spoilerFenceClose = RegExp(r'^([ ]{0,3})!~(.*)\s*$');

class SpoilerBlockSyntax extends md2.BlockSyntax {

  @override
  RegExp get pattern => spoilerFenceOpen;

  @override
  md2.Node parse(md2.BlockParser parser) {
    log('Parsing spoiler syntax');
    final openMatch = pattern.firstMatch(parser.current.content)!;
    log('Open match: ${openMatch.groupNames}');
    parser.advance();

    // Collect all lines until we hit a closing fence
    final buffer = StringBuffer();
    while (!parser.isDone && !spoilerFenceClose.hasMatch(parser.current.content)) {
      log('Spoiler match: ${parser.current.content}');
      buffer.writeln(parser.current.content);
      parser.advance();
    }

    // Optionally consume the closing fence
    if (!parser.isDone && spoilerFenceClose.hasMatch(parser.current.content)) {
      parser.advance();
    }

    // Parse the inner text with all inline syntaxes
    final el = md2.Element.text('spoiler', buffer.toString());
    log('Parsing buffer: ${buffer.toString()}');
    // el.children!.addAll(parser.document.parseInline(buffer.toString()));

    parser.advance();

    return el;
  }
}

class SpoilerNode extends md.ElementNode {
  final String spoiler;
  final md.LinkConfig linkConfig;

  SpoilerNode(this.spoiler, this.linkConfig);

  @override
  TextStyle get style =>
      parentStyle?.merge(linkConfig.style) ?? linkConfig.style;

  @override
  InlineSpan build() {
    log('Building spoiler node: $spoiler');

    return TextSpan(
      text: "[Spoiler]",
      style: style,
      recognizer: TapGestureRecognizer()
        ..onTap = () => UIUtils.showMarkdownDialog(
              router.configuration.navigatorKey.currentContext!,
              data: spoiler,
            ),
    );
  }
}
