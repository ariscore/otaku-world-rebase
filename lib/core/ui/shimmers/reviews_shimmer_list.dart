import 'package:flutter/material.dart';
import 'package:otaku_world/theme/colors.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

class ReviewsShimmerList extends StatelessWidget {
  const ReviewsShimmerList({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        shimmerList,
      ],
    );
  }

  static Widget shimmerList = SliverList(
    delegate: SliverChildBuilderDelegate((context, index) {
      return Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 7.5,
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Container(
            color: AppColors.blackOlive,
            child: Column(
              children: [
                Shimmer(
                  child: Container(
                    height: 72,
                    color: AppColors.htmlGray,
                  ),
                ),
                const SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 5,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(5),
                                child: Shimmer(
                                  child: Container(
                                    width: 265,
                                    height: 18,
                                    color: AppColors.htmlGray,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 5),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(5),
                                child: Shimmer(
                                  child: Container(
                                    width: 230,
                                    height: 18,
                                    color: AppColors.htmlGray,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          ClipOval(
                            child: Shimmer(
                              child: Container(
                                width: 35,
                                height: 35,
                                color: AppColors.htmlGray,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Shimmer(
                          child: Container(
                            width: 300,
                            height: 18,
                            color: AppColors.htmlGray,
                          ),
                        ),
                      ),
                      const SizedBox(height: 40),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(3),
                        child: Shimmer(
                          child: Container(
                            width: 150,
                            height: 10,
                            color: AppColors.htmlGray,
                          ),
                        ),
                      ),
                      const SizedBox(height: 3),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(2),
                        child: Shimmer(
                          child: Container(
                            width: 250,
                            height: 10,
                            color: AppColors.htmlGray,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 13),
              ],
            ),
          ),
        ),
      );
    }, childCount: 10),
  );
}
