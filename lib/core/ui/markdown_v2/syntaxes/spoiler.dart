import 'dart:developer';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:markdown/markdown.dart' as md;
import 'package:markdown_widget/markdown_widget.dart';

final spoilerFenceOpen = RegExp(r'^( {0,3})~!(?!.*!~)(.*)\s*$');

final spoilerFenceClose = RegExp(r'^( {0,3})!~(.*)\s*$');

SpanNodeGeneratorWithTag spoilerBlockSpanWithTag = SpanNodeGeneratorWithTag(
  tag: 'spoiler',
  generator: (element, config, visitor) {
    log('Generate spoiler');
    return SpoilerNode(element.textContent, config.a);
  },
);

class SpoilerSyntax extends md.InlineSyntax {
  // SpoilerSyntax() : super(r'~!([\s\S]*?)!~');
  SpoilerSyntax() : super(r'~!([^][\s\S]*?)!~');

  @override
  bool onMatch(md.InlineParser parser, Match match) {
    log('Spoiler match: ${match.groupCount} | ${match.group(0)} | ${match.group(1)}');
    final content = match.group(1)!;
    final el = md.Element.text('spoiler', content);
    parser.addNode(el);
    return true;
  }
}

class SpoilerBlockSyntax extends md.BlockSyntax {

  @override
  RegExp get pattern => spoilerFenceOpen;

  @override
  md.Node parse(md.BlockParser parser) {
    log('Parsing spoiler block syntax');
    final openMatch = pattern.firstMatch(parser.current.content)!;
    log('Open match: ${openMatch.group(2)}');
    final afterTilde = openMatch.group(2)!.trim();
    log('After tilde: $afterTilde');

    if (afterTilde.endsWith('!~')) {
      final content = afterTilde.substring(0, afterTilde.length - 2).trim();
      parser.advance();
      final el = md.Element.text('spoiler', content);
      return el;
    }

    parser.advance();

    // Collect all lines until we hit a closing fence
    final buffer = StringBuffer();
    // while (!parser.isDone && !spoilerFenceClose.hasMatch(parser.current.content)) {
    //   log('Spoiler match: ${parser.current.content}');
    //   buffer.writeln(parser.current.content);
    //   parser.advance();
    // }
    while (!parser.isDone) {
      final curr = parser.current.content;
      final trimmed = curr.trim();

      if (trimmed == '!~') {
        parser.advance();
        if (afterTilde.isNotEmpty) {
          buffer.writeln(afterTilde);
        }
        break;
      }

      if (trimmed.endsWith('!~')) {
        final lineContent = curr.substring(0, curr.lastIndexOf('!~')).trim();
        if (lineContent.isNotEmpty) {
          buffer.writeln(lineContent);
        }
        parser.advance();
        break;
      }

      if (spoilerFenceOpen.hasMatch(parser.current.content)) {
        parser.advance();
        if (afterTilde.isNotEmpty) {
          buffer.writeln(afterTilde);
        }
        break;
      }
      buffer.writeln(parser.current.content);
      parser.advance();
    }

    // Optionally consume the closing fence
    // if (!parser.isDone && spoilerFenceClose.hasMatch(parser.current.content)) {
    //   parser.advance();
    // }

    // Parse the inner text with all inline syntaxes
    final el = md.Element.text('spoiler', buffer.toString());
    log('Parsing buffer: ${buffer.toString()}');
    // el.children!.addAll(parser.document.parseInline(buffer.toString()));

    // parser.advance();

    return el;
  }
}

class SpoilerNode extends ElementNode {
  final String spoiler;
  final LinkConfig linkConfig;

  SpoilerNode(this.spoiler, this.linkConfig);

  @override
  TextStyle get style =>
      const TextStyle(color: Colors.red);

  @override
  InlineSpan build() {
    log('Building spoiler node: $spoiler');

    return TextSpan(
      text: "[Spoiler]",
      style: style,
      recognizer: TapGestureRecognizer()
        ..onTap = () => log('Spoiler: $spoiler'),
    );
  }
}