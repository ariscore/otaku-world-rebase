import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:otaku_world/generated/assets.dart';
import 'package:otaku_world/theme/colors.dart';

class PosterPlaceholder extends StatelessWidget {
  const PosterPlaceholder({super.key, this.size = 70});

  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.darkGray,
      child: Center(
        child: SvgPicture.asset(
          Assets.assetsLogoBw,
          width: size,
        ),
      ),
    );
  }
}
