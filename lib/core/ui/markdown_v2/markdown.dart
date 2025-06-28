import 'package:flutter/material.dart';
import 'package:markdown/markdown.dart';
import 'package:markdown_widget/markdown_widget.dart';
import 'package:otaku_world/core/ui/markdown_v2/syntaxes/bare_link.dart';
import 'package:otaku_world/core/ui/markdown_v2/syntaxes/center.dart';
import 'package:otaku_world/core/ui/markdown_v2/syntaxes/header.dart';
import 'package:otaku_world/core/ui/markdown_v2/syntaxes/image.dart';
import 'package:otaku_world/core/ui/markdown_v2/syntaxes/line_break.dart';
import 'package:otaku_world/core/ui/markdown_v2/syntaxes/link.dart';
import 'package:otaku_world/core/ui/markdown_v2/syntaxes/spoiler.dart';
import 'package:otaku_world/core/ui/markdown_v2/syntaxes/strike_through.dart';
import 'package:otaku_world/core/ui/markdown_v2/syntaxes/webm.dart';
import 'package:otaku_world/core/ui/markdown_v2/syntaxes/youtube.dart';

class MyMarkdownWidgetV2 extends StatelessWidget {
  MyMarkdownWidgetV2({super.key, required this.data});

  final String data;

  final markdownGenerator = MarkdownGenerator(
    extensionSet: ExtensionSet.none,
    blockSyntaxList: [
      const AniListHeaderSyntax(),
      CenterBlockSyntax(),
      SpoilerBlockSyntax(),
      // FencedCodeBlockSyntax(),
    ],
    inlineSyntaxList: [
      CenterSyntax(),
      StrikeThroughSyntax(),
      SpoilerSyntax(),
      UrlLinkSyntax(),
      AnilistImageSyntax(),
      BrSyntax(),
      YoutubeSyntax(),
      WebmSyntax(),
      BareLinkSyntax(),
    ],
    generators: [
      centerBlockSpanWithTag,
      spoilerBlockSpanWithTag,
      brSpanWithTag,
      imageGeneratorWithTag,
      youtubeSpanWithTag,
      webmSpanWithTag,
      // bareLinkSpanWithTag,
    ],
    linesMargin: EdgeInsets.zero,
  );

  String htmlToMarkdown(String html) {
    var output = html;

    // 1️⃣ Convert <a href="URL">text</a> → [text](URL)
    final linkPattern = RegExp(
      r'''<a\s+href=["'](.*?)["'][^>]*>([\s\S]*?)</a>''',
      caseSensitive: false,
      dotAll: true,
    );
    output = output.replaceAllMapped(linkPattern, (match) {
      final url = match.group(1)!;
      final text = match.group(2)!;
      return '[$text]($url)';
    });

    // 2️⃣ Convert <a>text</a> → [text](text)
    // final bareLinkPattern = RegExp(
    //   r'''<a\s*>([\s\S]*?)</a>''',
    //   caseSensitive: false,
    //   dotAll: true,
    // );
    // output = output.replaceAllMapped(bareLinkPattern, (match) {
    //   final text = match.group(1)!.trim();
    //   return '[$text]($text)';
    // });

    // 3️⃣ Other inline HTML → Markdown
    final tagMap = {
      'i': '*',
      'em': '*',
      'b': '**',
      'strong': '**',
      's': '~~',
      'del': '~~',
    };

    tagMap.forEach((tag, mdMarker) {
      final pattern = RegExp(
        // build a raw string like r'''<i>([\s\S]*?)</i>'''
        r'''<$tag>([\s\S]*?)</$tag>'''.replaceAll(r'$tag', tag),
        caseSensitive: false,
        dotAll: true,
      );
      output = output.replaceAllMapped(pattern, (m) {
        return '$mdMarker${m.group(1)!}$mdMarker';
      });
    });

    return output;
  }

  @override
  Widget build(BuildContext context) {
    return MarkdownWidget(
      data: htmlToMarkdown(data),
      // padding: const EdgeInsets.all(10),
      shrinkWrap: true,
      markdownGenerator: markdownGenerator,
      config: MarkdownConfig.darkConfig.copy(
        configs: [
          const PConfig(
            textStyle: TextStyle(
              color: Colors.white,
              decorationColor: Colors.white,
            ),
          ),
          const LinkConfig(
            style: TextStyle(
              color: Colors.blue,
              decoration: TextDecoration.underline,
              fontStyle: FontStyle.italic,
              decorationColor: Colors.blue,
            ),
          ),
          CustomH1Config(),
          CustomH2Config(),
          CustomH3Config(),
          CustomH4Config(),
          CustomH5Config(),
          CustomH6Config(),
        ],
      ),
    );
  }
}

class CustomH1Config extends H1Config {
  @override
  TextStyle get style => const TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w600,
    fontSize: 22,
  );

  @override
  EdgeInsets get padding => EdgeInsets.zero;

  @override
  HeadingDivider? get divider => null;
}

class CustomH2Config extends H2Config {
  @override
  TextStyle get style => const TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w500,
    fontSize: 20,
  );

  @override
  EdgeInsets get padding => EdgeInsets.zero;

  @override
  HeadingDivider? get divider => null;
}

class CustomH3Config extends H3Config {
  @override
  TextStyle get style => const TextStyle(
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w500,
    fontSize: 18,
  );

  @override
  EdgeInsets get padding => EdgeInsets.zero;

  @override
  HeadingDivider? get divider => null;
}

class CustomH4Config extends H4Config {
  @override
  TextStyle get style => const TextStyle(
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w500,
    fontSize: 16,
  );

  @override
  EdgeInsets get padding => EdgeInsets.zero;

  @override
  HeadingDivider? get divider => null;
}

class CustomH5Config extends H5Config {
  @override
  TextStyle get style => const TextStyle(
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w500,
    fontSize: 14,
  );

  @override
  EdgeInsets get padding => EdgeInsets.zero;

  @override
  HeadingDivider? get divider => null;
}

class CustomH6Config extends H6Config {
  @override
  TextStyle get style => const TextStyle(
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w500,
    fontSize: 12,
  );

  @override
  EdgeInsets get padding => EdgeInsets.zero;

  @override
  HeadingDivider? get divider => null;
}
