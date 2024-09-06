import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:markdown/markdown.dart' as md;
import 'package:markdown_widget/markdown_widget.dart' as mw;
import 'package:otaku_world/core/ui/markdown/generators/center.dart';
import 'package:url_launcher/url_launcher.dart';
import '../image.dart';
import 'custom_node.dart';
import 'generators/br.dart';
import 'generators/i.dart';
import 'generators/img.dart';
import 'generators/spolier.dart';
import 'generators/video.dart';

var removeRegex = RegExp(r'~{3}([\s\S]*?)~{3}|(<br>)(?:<br>)?', dotAll: true);

class Markdown extends StatelessWidget {
  const Markdown({
    super.key,
    required this.data,
    this.selectable = true,
  });

  final String data;
  final bool selectable;

  @override
  Widget build(BuildContext context) {
    // print(data);
    var markdown = data.replaceAllMapped(removeRegex, (match) {
      // logger.i(match.groups([1, 2]));
      return match.group(1) ?? '';
    });
    // var markdown = data;

    return MediaQuery.removePadding(
      context: context,
      removeTop: true,
      child: mw.MarkdownWidget(
        data: markdown,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        selectable: selectable,
        markdownGenerator: mw.MarkdownGenerator(
          generators: [
            iWithTag,
            spoilerWithTag,
            imgWithTag,
            videoWithTag,
            centerWithTag,
          ],
          inlineSyntaxList: [
            ISyntax(),
            ImgSyntax(),
            SpoilerSyntax(),
            BrSyntax(),
            // VideoSyntax(),
            CenterSyntax(),
            md.AutolinkExtensionSyntax(),
          ],
          textGenerator: (node, config, visitor) =>
              CustomTextNode(node.textContent, config, visitor),
        ),
        config: mw.MarkdownConfig(
          configs: [
            mw.PConfig(
              // textStyle: TextStyle(
              //   color: Colors.white,
              //   fontSize: 14,
              //   fontFamily: 'Roboto',
              // ),
              textStyle: Theme.of(context).textTheme.headlineSmall!,
            ),
            mw.LinkConfig(
              style: const TextStyle(color: Colors.blue),
              onTap: (value) {
                var uri = Uri.tryParse(value);
                // print(uri?.host);
                if (uri?.host == 'anilist.co') {
                  if (['anime', 'manga'].contains(uri!.pathSegments.first)) {
                    context.push('/media/${uri.pathSegments[1]}/overview');
                    return;
                  } else if (['character', 'staff']
                      .contains(uri.pathSegments.first)) {
                    context.push(
                        '/${uri.pathSegments.take(2).join('/')}/overview');
                    return;
                  } else if (uri.pathSegments.first == 'forum' &&
                      uri.pathSegments[1] == 'thread') {
                    context.push('/thread/${uri.pathSegments[2]}');
                    return;
                  } else if (uri.pathSegments.first == 'activity') {
                    context.push('/activity/${uri.pathSegments[1]}');
                    return;
                  }
                }
                if (uri != null) {
                  launchUrl(uri, mode: LaunchMode.externalApplication);
                }
              },
            ),
            mw.ImgConfig(
              builder: (url, attributes) {
                double? width;
                double? height;
                if (attributes['width'] != null) {
                  width = double.tryParse(attributes['width']!);
                }
                if (attributes['height'] != null) {
                  height = double.tryParse(attributes['height']!);
                }

                return SizedBox(
                  height: height,
                  width: width,
                  child: CImage(
                    imageUrl: url,
                    viewer: true,
                  ),
                );
              },
              errorBuilder: (_, __, ___) => const SizedBox(),
            ),
            // const mw.CodeConfig(style: TextStyle(color: Colors.white)),
            mw.PreConfig(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
