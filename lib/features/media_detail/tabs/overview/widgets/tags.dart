import 'package:flutter/material.dart';
import 'package:otaku_world/features/media_detail/tabs/overview/widgets/tag.dart';
import 'package:otaku_world/graphql/__generated/graphql/fragments.graphql.dart';
import 'package:otaku_world/utils/app_texts.dart';

import '../../../../../theme/colors.dart';

class Tags extends StatefulWidget {
  const Tags({super.key, required this.tags});

  final List<Fragment$MediaDetailed$tags?> tags;

  @override
  State<Tags> createState() => _TagsState();
}

class _TagsState extends State<Tags> {
  bool showSpoilers = false;

  @override
  Widget build(BuildContext context) {
    var shown = showSpoilers
        ? widget.tags
        : widget.tags.where((e) => e!.isMediaSpoiler == false);
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const Text(
              "Tags",
              style: AppTextStyles.titleSectionStyle,
            ),
            const SizedBox(
              width: 10,
            ),
            const Tooltip(
              triggerMode: TooltipTriggerMode.tap,
              message: 'Press and hold on tags for information',
              showDuration: Duration(seconds: 5),
              child: Icon(
                Icons.info,
                color: AppColors.white,
                size: 20,
              ),
            ),
            if (widget.tags
                .any((element) => element!.isMediaSpoiler == true)) ...[
              const Spacer(),
              TextButton(
                onPressed: () => setState(() => showSpoilers = !showSpoilers),
                child: Text(
                  '${showSpoilers ? 'Hide' : 'Show'} Spoilers',
                  style: const TextStyle(
                    fontFamily: 'Roboto Condensed',
                    color: AppColors.sunsetOrange,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Wrap(
          spacing: 10,
          runSpacing: 10,
          children: shown
              .map(
                (e) => Tag(
                  tag: e!,
                ),
              )
              .toList(),
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
