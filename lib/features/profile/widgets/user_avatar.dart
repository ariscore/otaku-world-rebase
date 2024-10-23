import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:otaku_world/core/ui/image.dart';

import '../../../generated/assets.dart';
import '../../../theme/colors.dart';

class UserAvatar extends StatelessWidget {
  const UserAvatar({super.key, required this.url});

  final String url;

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: CImage(
        width: 100,
        height: 100,
        imageUrl: url,
        errorWidget: (context, url, error) {
          return Container(
            padding: const EdgeInsets.all(5),
            color: AppColors.darkGray,
            child: SvgPicture.asset(Assets.assetsLogoBw),
          );
        },
      ),
    );
  }
}
