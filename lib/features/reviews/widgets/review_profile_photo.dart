import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../theme/colors.dart';
class ReviewProfilePhoto extends StatelessWidget {
  const ReviewProfilePhoto({super.key, required this.profilePicUrl, required this.radius});

  final String profilePicUrl;
  final double radius;
  @override
  Widget build(BuildContext context) {
      return Container(
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius + 1),
          side: const BorderSide(
            width: 1,
            color: AppColors.sunsetOrange,
          ),
        ),
      ),
      child: CircleAvatar(
        backgroundColor: AppColors.sunsetOrange,
        radius: radius,
        backgroundImage: CachedNetworkImageProvider(
          profilePicUrl,
        ),
      ),
    );
  }
}
