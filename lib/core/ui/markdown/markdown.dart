import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import "package:markdown/markdown.dart" as md2;
import 'package:markdown_widget/markdown_widget.dart' as md;
import 'package:markdown_widget/widget/span_node.dart';
import 'package:otaku_world/core/ui/image.dart';
import 'package:otaku_world/core/ui/markdown/generator/bold.dart';
import 'package:otaku_world/core/ui/markdown/generator/center_block.dart';
import 'package:otaku_world/core/ui/markdown/generator/italic.dart';
import 'package:otaku_world/core/ui/markdown/generator/strike.dart';
import 'package:otaku_world/theme/colors.dart';
import 'package:url_launcher/url_launcher.dart';

// import 'generator/center.dart';
import 'generator/hr.dart';
import 'generator/html.dart';
import 'generator/image.dart';
import 'generator/link.dart';
import 'generator/media_card.dart';
import 'generator/spoiler.dart';

RegExp removeFromMarkdown = RegExp("<BR>|<br>|~~~|```");

String stripHTML(String data) {
  return data
      // .replaceAll(removeFromMarkdown, "")
      // .replaceAllMapped(
      //   RegExp(r'~~~([\s\S]*?)~~~'),
      //   (match) => '<center>${match.group(1)}</center>',
      // )
      .replaceAll(RegExp(r"</?(B|b)>"), "**")
      .replaceAll(RegExp("</?(i|I)>"), "*")
      .replaceAllMapped(
        RegExp(r"youtube\((.*?)\)", dotAll: true),
        (match) => match.group(1) ?? '',
      );
}

var markdownConfig = md.MarkdownConfig(
  configs: [
    const md.PConfig(
      textStyle: TextStyle(
        decorationColor: Colors.white,
        decoration: TextDecoration.lineThrough,
      ),
    ),
    CustomH1Config(),
    CustomH2Config(),
    CustomH3Config(),
    const md.PreConfig(decoration: BoxDecoration()),
    const md.CodeConfig(
      style: TextStyle(),
    ),
    md.ImgConfig(
      builder: (url, attributes) => CImage(imageUrl: url),
    ),
  ],
);

var markdownGenerator = md.MarkdownGenerator(
  linesMargin: const EdgeInsets.all(0),
  extensionSet: md2.ExtensionSet.none,
  generators: [
    // strikeGenerator,
    linkGeneratorWithTag,
    centerBlockSpanWithTag,
    // centerSpanWithTag,
    // mediaCardGenerator,
    imageGeneratorWithTag,
    spoilerTag,
    hrGeneratorWithTag,
  ],
  inlineSyntaxList: [
    // md2.StrikethroughSyntax(),
    // CenterSyntax(),
    StrikeSyntax(),
    AnilistImageSyntax(),
    // SpoilerSyntax(),
  ],
  blockSyntaxList: [
    const md2.HtmlBlockSyntax(),
    CenterBlockSyntax(),
    SpoilerBlockSyntax(),
  ],
  textGenerator: (node, config, visitor) =>
      CustomTextNode(node.textContent, config, visitor),
);

class MarkdownWidget extends StatelessWidget {
  // const MarkdownWidget({
  //   super.key,
  //   required this.data,
  //   this.padding = const EdgeInsets.all(0),
  //   this.body = false,
  //   this.selectable = true,
  //   this.shrinkWrap,
  // });

  final String data;
  final bool body;
  final EdgeInsets padding;
  final bool? selectable;
  final bool? shrinkWrap;

  const MarkdownWidget.body({
    super.key,
    required this.data,
    this.body = true,
    this.padding = const EdgeInsets.all(0),
    this.selectable = true,
    this.shrinkWrap,
  });

  @override
  Widget build(BuildContext context) {
    var showEmbedMediaCard = true;

    var generator = md.MarkdownGenerator(
      linesMargin: markdownGenerator.linesMargin,
      extensionSet: markdownGenerator.extensionSet,
      textGenerator: markdownGenerator.textGenerator,
      generators: [
        ...markdownGenerator.generators,
      ],
      inlineSyntaxList: [
        ...markdownGenerator.inlineSyntaxList,
        if (showEmbedMediaCard) EmbedMediaCardSyntax(),
      ],
      blockSyntaxList: markdownGenerator.blockSyntaxList,
    );

    var config = markdownConfig.copy(
      configs: [
        md.PConfig(
          textStyle: Theme.of(context).textTheme.headlineSmall!,
        ),
        md.LinkConfig(
          style: const TextStyle(color: Colors.blue),
          onTap: (value) {
            var uri = Uri.tryParse(value);
            // print(uri?.host);
            // if (uri?.host == 'anilist.co') {
            //   try {
            //     if (['anime', 'manga'].contains(uri!.pathSegments.first)) {
            //       context.push('/media/${uri.pathSegments[1]}');
            //       // context.pushRoute(
            //       //     MediaRoute(id: int.parse(uri.pathSegments[1])));
            //       return;
            //     } else if (['character', 'staff']
            //         .contains(uri.pathSegments.first)) {
            //       if (uri.pathSegments[1] == "staff") {
            //         context
            //             .push(Routes.staff(int.parse(uri.queryParameters[1]!)));
            //       } else {
            //         context.push(
            //             Routes.character(int.parse(uri.queryParameters[1]!)));
            //       }
            //       return;
            //     } else if (uri.pathSegments.first == 'forum' &&
            //         uri.pathSegments[1] == 'thread') {
            //       print(uri.pathSegments);
            //       if (uri.pathSegments.length == 5) {
            //         print(Routes.threadComment(
            //           int.parse(uri.pathSegments[2]),
            //           int.parse(uri.pathSegments[4]),
            //         ));
            //         context.push(Routes.threadComment(
            //           int.parse(uri.pathSegments[2]),
            //           int.parse(uri.pathSegments[4]),
            //         ));
            //       } else {
            //         context
            //             .push(Routes.thread(int.parse(uri.pathSegments.last)));
            //       }
            //       return;
            //     } else if (uri.pathSegments.first == 'activity') {
            //       context.push(Routes.activity(int.parse(uri.pathSegments[1])));
            //       return;
            //     }
            //   } catch (err) {}
            // }
            if (uri != null) {
              launchUrl(uri, mode: LaunchMode.externalApplication);
            }
          },
        ),
      ],
    );

    if (body) {
      return Padding(
        padding: padding,
        child: md.MarkdownBlock(
          data: stripHTML(data),
          selectable: selectable ?? false,
          generator: generator,
          config: config,
          // shrinkWrap: shrinkWrap ?? false,
        ),
      );
    }

    final stripData = stripHTML(data);
    log('Data: $stripData');
    return md.MarkdownWidget(
      data: stripHTML(data),
      padding: padding,
      selectable: selectable ?? false,
      shrinkWrap: true,
      config: config,
      markdownGenerator: generator,
    );
  }
}

class EmbedMediaCardSyntax extends md2.InlineSyntax {
  EmbedMediaCardSyntax()
      : super(r"https:\/\/anilist\.co\/(?:anime|manga)\/(\d+)\/.*?(?:\/|\s)");

  @override
  bool onMatch(md2.InlineParser parser, Match match) {
    var mediaId = match.group(1);

    if (mediaId != null && int.tryParse(mediaId) != null) {
      md2.Element el = md2.Element("mediaCard", []);
      el.attributes["id"] = mediaId;
      el.attributes["href"] = match.input.substring(match.start, match.end);
      parser.addNode(el);
    }

    return true;
  }
}

class CustomH1Config extends md.H1Config {
  @override
  TextStyle get style => const TextStyle(
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w600,
        fontSize: 22,
      );

  @override
  md.HeadingDivider? get divider => null;
}

class CustomH2Config extends md.H2Config {
  @override
  TextStyle get style => const TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w500,
    fontSize: 18,
  );

  @override
  md.HeadingDivider? get divider => null;
}

class CustomH3Config extends md.H3Config {
  @override
  TextStyle get style => const TextStyle(
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w500,
    fontSize: 20,
  );

  @override
  md.HeadingDivider? get divider => null;
}

class FFInline extends md2.InlineSyntax {
  // @override
  // RegExp get pattern => RegExp(r'(?<tilde>~{3,})(?<tildeInfo>[^]*)(?:~{3,})');

  FFInline() : super(r'(?:~{3,}([\s\S]*?))~{3,}');

  @override
  bool onMatch(md2.InlineParser parser, Match match) {
    // print(match.group(1));

    var elm = md2.Element.text("center", match.group(1)!);

    parser.addNode(elm);

    return true;
  }
}

class CustomTextNode extends md.ElementNode {
  final String text;
  final md.MarkdownConfig config;
  final md.WidgetVisitor visitor;

  CustomTextNode(this.text, this.config, this.visitor);

  @override
  void onAccepted(SpanNode parent) {
    final textStyle = config.p.textStyle.merge(parentStyle);
    children.clear();
    if (!text.contains(htmlRep)) {
      accept(TextNode(text: text, style: textStyle));
      return;
    }
    final spans = parseHtml(
      md2.Text(text),
      visitor: md.WidgetVisitor(
        config: visitor.config,
        generators: visitor.generators,
        richTextBuilder: visitor.richTextBuilder,
      ),
      parentStyle: parentStyle,
    );
    for (var element in spans) {
      accept(element);
    }
  }
}

// class FFBlock extends md2.BlockSyntax {
//   @override
//   RegExp get pattern => RegExp(r'^(~{3,})(?<backtickInfo>[^~]*)$');

//   @override
//   md2.Node? parse(md2.BlockParser parser) {
//     var elm = md2.Element.text("center", parser.current.content);
//     parser.advance();

//     return elm;
//   }

// @override
// bool onMatch(md2.InlineParser parser, Match match) {
//   // print(match.group(1));

//   var elm = md2.Element.text("center", match.group(1)!);

//   parser.addNode(elm);

//   return true;
// }
// }
