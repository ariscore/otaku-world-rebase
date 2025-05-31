import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:otaku_world/theme/colors.dart';
import 'package:otaku_world/utils/ui_utils.dart';

import '../../../../graphql/__generated/graphql/character-detail/character_detail.graphql.dart';
import '../../../../utils/app_texts.dart';
import '../../media_detail/tabs/overview/widgets/info_tile.dart';

class NameWidget extends StatelessWidget {
  const NameWidget({
    super.key,
    required this.name,
  });

  final Query$getCharacterDetails$Character$name name;
  static const Widget tenHeightSizedBox = SizedBox(
    height: 10,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Names',
          style: AppTextStyles.titleSectionStyle,
        ),
        const SizedBox(
          height: 5,
        ),
        Container(
          padding: const EdgeInsets.all(10),
          decoration: UIUtils.getContainerDecoration(),
          child: Column(
            children: [
              InfoTile(
                title: "Native",
                data: name.native,
              ),
              tenHeightSizedBox,
              InfoTile(
                title: 'Alternatives',
                dataWidget: RichText(
                  text: TextSpan(
                    style: AppTextStyles.infoDataStyle,
                    children: [
                      if (name.alternative != null)
                        ..._buildAlternativeSpans(name.alternative!),
                      if (name.alternativeSpoiler != null &&
                          name.alternativeSpoiler!.isNotEmpty)
                        TextSpan(
                          text: "[Spoiler names]",
                          style: AppTextStyles.infoDataStyle.copyWith(
                            color: AppColors.sunsetOrange,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              UIUtils.showInfoDialog(
                                context,
                                'Spoiler Names',
                                name.alternativeSpoiler!.join(',\n'),
                              );
                            },
                        ),
                    ],
                  ),
                ),
              ),
              tenHeightSizedBox,
            ],
          ),
        ),
      ],
    );
  }

  List<TextSpan> _buildAlternativeSpans(List<String?> alternatives) {
    List<TextSpan> spans = [];
    for (String? alt in alternatives) {
      if (alt != null) {
        spans.add(TextSpan(text: "$alt,\n"));
      }
    }
    return spans;
  }
}
