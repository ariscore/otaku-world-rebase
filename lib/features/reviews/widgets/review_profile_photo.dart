import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/ui/image.dart';
import '../../../generated/assets.dart';
import '../../../theme/colors.dart';

class ReviewProfilePhoto extends StatelessWidget {
  const ReviewProfilePhoto({
    super.key,
    required this.profilePicUrl,
    required this.radius,
  });

  final String profilePicUrl;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: radius * 2,
      width: radius * 2,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius + 1),
          side: const BorderSide(
            width: 1,
            color: AppColors.sunsetOrange,
          ),
        ),
      ),
      child: ClipOval(
        child: CImage(
          imageUrl: profilePicUrl,
          placeholder: (context, url) => _buildPlaceholder(),
          errorWidget: (context, url, error) => _buildPlaceholder(),
        ),
      ),
    );
  }

  Widget _buildPlaceholder() {
    return Container(
      padding: const EdgeInsets.all(5),
      color: AppColors.darkGray,
      child: SvgPicture.asset(Assets.assetsLogoBw),
    );
  }
}
