import 'dart:math';

import 'package:flutter/material.dart';
import 'package:otaku_world/theme/colors.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

class NotificationsShimmer extends StatelessWidget {
  const NotificationsShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) => _buildCard(),
    );
  }

  Widget _buildCard() {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.blackOlive,
        borderRadius: BorderRadius.circular(15),
      ),
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 5,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Shimmer(
              child: Container(
                width: 150,
                height: 12,
                color: AppColors.htmlGray,
              ),
            ),
          ),
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Shimmer(
                  color: AppColors.chineseWhite,
                  child: SizedBox(
                    width: 90,
                    child: AspectRatio(
                      aspectRatio: Random().nextBool() ? 1 : (85 / 120),
                      child: Container(
                        color: AppColors.htmlGray,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Shimmer(
                      child: Container(
                        width: 190,
                        height: 15,
                        color: AppColors.htmlGray,
                      ),
                    ),
                  ),
                  const SizedBox(height: 5),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Shimmer(
                      child: Container(
                        width: 120,
                        height: 15,
                        color: AppColors.htmlGray,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
