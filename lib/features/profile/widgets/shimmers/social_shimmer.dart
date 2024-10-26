import 'package:flutter/material.dart';
import 'package:otaku_world/theme/colors.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

class SocialShimmer extends StatelessWidget {
  const SocialShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return _buildCard();
        },
        childCount: 10,
      ),
    );
  }

  Widget _buildCard() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          ClipOval(
            child: Shimmer(
              color: AppColors.chineseWhite,
              child: Container(
                width: 50,
                height: 50,
                color: AppColors.htmlGray,
              ),
            ),
          ),
          const SizedBox(width: 10),
          ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Shimmer(
              child: Container(
                width: 100,
                height: 20,
                color: AppColors.htmlGray,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
