import 'dart:developer';
import 'dart:math' as math;

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import "package:markdown/markdown.dart" as md2;
import 'package:markdown_widget/markdown_widget.dart' as md;
import 'package:markdown_widget/widget/span_node.dart';
import 'package:otaku_world/core/ui/image.dart';
import 'package:otaku_world/core/ui/image_viewer.dart';
import 'package:url_launcher/url_launcher.dart';

// overwrite default link generator because the default one for some reason adds a space at the end of the link
md.SpanNodeGeneratorWithTag imageGeneratorWithTag = md.SpanNodeGeneratorWithTag(
  tag: "img",
  generator: (e, config, visitor) => ImageNode2(e.attributes, config, visitor),
);

class AnilistImageSyntax extends md2.InlineSyntax {
  AnilistImageSyntax() : super(r'(?:i|I)mg(\d+)?(%)?\s*\(\s*([\s\S]*?)\s*\)');

  @override
  bool onMatch(md2.InlineParser parser, Match match) {
    var src = match.group(3);
    var height = match.group(1);
    log('Image match: ${match.group(0)} | ${match.group(1)} | ${match.group(2)} | ${match.group(3)} | ');

    if (src != null) {
      var elm = md2.Element("img", []);
      elm.attributes["src"] = src;
      if (height != null) {
        if (match.group(2) == null) {
          elm.attributes["height"] = height;
        } else {
          elm.attributes["heightPercent"] = height;
        }
      }
      parser.addNode(elm);
    }

    return true;
  }
}

class ImageNode2 extends SpanNode {
  final Map<String, String> attributes;
  final md.MarkdownConfig config;
  final md.WidgetVisitor visitor;

  md.ImgConfig get imgConfig => config.img;

  ImageNode2(this.attributes, this.config, this.visitor);

  static double maxWidth = 400;
  static double maxHeight = 400;

  @override
  String toString() {
    return 'Image node: ${attributes['src']}';
  }

  @override
  InlineSpan build() {
    double? width, height;

    width = double.tryParse(attributes['width'] ?? '');
    height = double.tryParse(attributes['height'] ?? '');

    final imageUrl = attributes['src'] ?? '';
    final tag = UniqueKey().toString();
    return WidgetSpan(
      child: Builder(builder: (context) {
        log('Image width: $width | height: $height');
        // return const SizedBox();
        return SizedBox(
          width: width,
          height: height,
          child: GestureDetector(
            onTap: () => showImage(context, imageUrl, tag: tag),
            // onTap: () =>
            //     ImageViewer.showImage(context, imageUrl, tag: imageUrl),
            // onTap: parent is LinkNode
            //     ? () async {
            //         var uri = Uri.tryParse(
            //             (parent as LinkNode).attributes["href"] ?? "");
            //         if (uri != null &&
            //             await canLaunchUrl(uri) &&
            //             context.mounted) {
            //           ConfirmationDialog.show(
            //             context,
            //             "launch to ${(parent as LinkNode).attributes["href"]}",
            //             () => launchUrl(uri),
            //           );
            //         }
            //       }
            //     : null,
            child: Hero(
              tag: tag,
              child: CachedNetworkImage(
                imageUrl: imageUrl,
                errorWidget: (context, url, error) => const SizedBox(),
              ),
            ),
          ),
        );
      }),
    );
  }
}
