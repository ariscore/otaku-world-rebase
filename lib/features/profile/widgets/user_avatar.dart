import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:otaku_world/core/ui/image.dart';

import '../../../generated/assets.dart';
import '../../../theme/colors.dart';

class UserAvatar extends StatelessWidget {
  const UserAvatar({
    super.key,
    required this.url,
    this.width = 100,
    this.height = 100,
    this.showBorder = false,
    this.viewer = true,
  });

  final String url;
  final double width;
  final double height;
  final bool showBorder;
  final bool viewer;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: showBorder
            ? const Border.fromBorderSide(
                BorderSide(color: AppColors.sunsetOrange),
              )
            : null,
      ),
      child: ClipOval(
        child: CImage(
          imageUrl: url,
          viewer: viewer,
          placeholder: (context, url) => _buildPlaceholderProfile(),
          errorWidget: (context, url, error) {
            return Container(
              padding: const EdgeInsets.all(5),
              color: AppColors.darkGray,
              child: SvgPicture.asset(Assets.assetsLogoBw),
            );
          },
        ),
      ),
    );
  }

  Widget _buildPlaceholderProfile() {
    return Container(
      padding: const EdgeInsets.all(5),
      color: AppColors.darkGray,
      child: SvgPicture.asset(Assets.assetsLogoBw),
    );
  }
}
