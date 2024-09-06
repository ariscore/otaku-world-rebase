import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:otaku_world/core/ui/activities/activity_option.dart';

import '../../../generated/assets.dart';

class ActivityActions extends StatelessWidget {
  const ActivityActions({
    super.key,
    required this.likeCount,
    required this.replyCount,
  });

  final int likeCount;
  final int replyCount;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            ActivityOption(
              context: context,
              asset: Assets.iconsLike,
              count: likeCount,
            ),
            const SizedBox(width: 10),
            ActivityOption(
              context: context,
              asset: Assets.iconsComment,
              count: replyCount,
            ),
          ],
        ),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(Assets.iconsMoreHorizontal),
        ),
      ],
    );
  }
}
