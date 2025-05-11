import 'package:flutter/material.dart';
import "package:markdown/markdown.dart" as md2;
import 'package:markdown_widget/markdown_widget.dart' as md;
import 'package:markdown_widget/widget/span_node.dart';
import 'package:otaku_world/core/ui/image.dart';
import 'package:url_launcher/url_launcher.dart';

// overwrite default link generator because the default one for some reason adds a space at the end of the link
md.SpanNodeGeneratorWithTag imageGeneratorWithTag = md.SpanNodeGeneratorWithTag(
  tag: "img",
  generator: (e, config, visitor) => ImageNode2(e.attributes, config, visitor),
);

class AnilistImageSyntax extends md2.InlineSyntax {
  AnilistImageSyntax() : super(r"(?:i|I)mg(\d+)?(%)?\((.*?)\)");

  @override
  bool onMatch(md2.InlineParser parser, Match match) {
    var src = match.group(3);
    var height = match.group(1);

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

  static double maxHeight = 400;

  @override
  InlineSpan build() {
    double? width;

    if (attributes['width'] != null) {
      width = double.tryParse(attributes['width']!);
    }

    final imageUrl = attributes['src'] ?? '';
    return WidgetSpan(
      child: Builder(builder: (context) {
        return GestureDetector(
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
            tag: imageUrl,
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: 10,
                minWidth: 10,
                maxHeight: maxHeight,
                maxWidth: width ?? double.maxFinite,
              ),
              child: CImage(
                imageUrl: imageUrl,
              ),
            ),
          ),
        );
      }),
    );
  }
}
