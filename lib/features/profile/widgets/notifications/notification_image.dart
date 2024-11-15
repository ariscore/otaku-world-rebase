import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/ui/image.dart';
import '../../../../generated/assets.dart';
import '../../../../theme/colors.dart';

class NotificationImage extends StatelessWidget {
  const NotificationImage({
    super.key,
    this.userImage = true,
    required this.url,
  });

  final bool userImage;
  final String url;

  @override
  Widget build(BuildContext context) {
    final double ratio = userImage ? 1 : (85 / 120);
    return SizedBox(
      width: 90,
      child: AspectRatio(
        aspectRatio: ratio,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: CImage(
            imageUrl: url,
            width: 90,
            placeholder: (context, url) => _buildPlaceholderImage(),
            errorWidget: (context, url, error) => _buildPlaceholderImage(),
          ),
        ),
      ),
    );
  }

  Widget _buildPlaceholderImage() {
    return Container(
      padding: const EdgeInsets.all(5),
      color: AppColors.darkGray,
      child: SvgPicture.asset(Assets.assetsLogoBw),
    );
  }
}
