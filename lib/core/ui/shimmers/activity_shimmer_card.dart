import 'package:flutter/material.dart';
import 'package:otaku_world/theme/colors.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

class ActivityShimmerCard extends StatelessWidget {
  const ActivityShimmerCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: AppColors.blackOlive,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                ClipOval(
                  child: Shimmer(
                    color: AppColors.chineseWhite,
                    child: Container(
                      width: 35,
                      height: 35,
                      color: AppColors.htmlGray,
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Shimmer(
                    color: AppColors.chineseWhite,
                    child: Container(
                      width: 100,
                      height: 20,
                      color: AppColors.htmlGray,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Shimmer(
                color: AppColors.chineseWhite,
                child: Container(
                  width: 270,
                  height: 15,
                  color: AppColors.htmlGray,
                ),
              ),
            ),
            const SizedBox(height: 5),
            ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Shimmer(
                color: AppColors.chineseWhite,
                child: Container(
                  width: 230,
                  height: 15,
                  color: AppColors.htmlGray,
                ),
              ),
            ),
            const SizedBox(height: 5),
            ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Shimmer(
                color: AppColors.chineseWhite,
                child: Container(
                  width: 150,
                  height: 15,
                  color: AppColors.htmlGray,
                ),
              ),
            ),
            const SizedBox(height: 20),
            ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Shimmer(
                color: AppColors.chineseWhite,
                child: Container(
                  width: 200,
                  height: 10,
                  color: AppColors.htmlGray,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
