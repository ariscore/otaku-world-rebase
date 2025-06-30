import 'dart:developer';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:markdown/markdown.dart' as md;
import 'package:markdown_widget/markdown_widget.dart' as mw;
import 'package:otaku_world/core/ui/image.dart';
import 'package:url_launcher/url_launcher.dart';

mw.SpanNodeGeneratorWithTag imageGeneratorWithTag = mw.SpanNodeGeneratorWithTag(
  tag: "img",
  generator: (e, config, visitor) => ImageNode2(e.attributes, config, visitor),
);

class AnilistImageSyntax extends md.InlineSyntax {
  AnilistImageSyntax() : super(r"(?:i|I)mg(\d+)?(%)?\((.*?)\)");

  @override
  bool onMatch(md.InlineParser parser, Match match) {
    var src = match.group(3);
    var width = match.group(1);

    if (src != null) {
      var elm = md.Element("img", []);
      elm.attributes["src"] = src;
      if (width != null) {
        if (match.group(2) == null) {
          elm.attributes["width"] = width;
        } else {
          elm.attributes["widthPercent"] = width;
        }
      }
      parser.addNode(elm);
    }

    return true;
  }
}

class ImageNode2 extends mw.SpanNode {
  final Map<String, String> attributes;
  final mw.MarkdownConfig config;
  final mw.WidgetVisitor visitor;

  mw.ImgConfig get imgConfig => config.img;

  ImageNode2(this.attributes, this.config, this.visitor);

  final double minWidth = 50;
  final double minHeight = 0;
  final double maxHeight = 250;
  final double maxWidth = double.infinity;

  @override
  InlineSpan build() {
    double? width;

    if (attributes['width'] != null) {
      width = double.tryParse(attributes['width']!);
      log('Image width: $width');
    }

    final imageUrl = attributes['src'] ?? '';
    return WidgetSpan(
      child: Builder(builder: (context) {
        return GestureDetector(
          // onTap: () =>
          //     ImageViewer.showImage(context, imageUrl, tag: imageUrl),
          onTap: parent is mw.LinkNode
              ? () async {
                  log('Tap on image');
                  var uri = Uri.tryParse(
                      (parent as mw.LinkNode).attributes["href"] ?? "");
                  // log('Uri: ${uri.toString()} | can launch: ${await canLaunchUrl(uri!)}');
                  if (uri != null && context.mounted) {
                    log('Launching url');
                    // ConfirmationDialog.show(
                    //   context,
                    //   "launch to ${(parent as LinkNode).attributes["href"]}",
                    //   () => launchUrl(uri),
                    // );
                    launchUrl(uri);
                  }
                }
              : null,
          // child: Hero(
          //   tag: imageUrl,
          //   child: ConstrainedBox(
          //     constraints: BoxConstraints(
          //       minHeight: 10,
          //       minWidth: 10,
          //       maxHeight: maxHeight,
          //       maxWidth: math.min(width ?? double.maxFinite, maxWidth),
          //     ),
          //     child: CachedNetworkImage(
          //       imageUrl: imageUrl,
          //     ),
          //   ),
          // ),
          child: CImage(
            imageUrl: imageUrl,
            width: math.min(width ?? double.maxFinite, maxWidth),
            // height: maxHeight,
            viewer: true,
            fit: BoxFit.fitHeight,
          ),
        );
      }),
    );
  }
}
