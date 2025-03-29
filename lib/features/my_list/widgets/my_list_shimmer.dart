import 'package:flutter/material.dart';
import 'package:otaku_world/theme/colors.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

class MyListShimmer extends StatelessWidget {
  const MyListShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      sliver: SliverList(
        delegate: SliverChildListDelegate(
          [
            _buildSection(3),
            _buildSection(1),
            _buildSection(2),
          ],
        ),
      ),
    );
  }

  Widget _buildSection(int count) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(5),
          child: Shimmer(
            child: Container(
              width: 100,
              height: 20,
              color: AppColors.graniteGray,
            ),
          ),
        ),
        const SizedBox(height: 10),
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: count,
          itemBuilder: (context, index) => _buildCard(),
        ),
      ],
    );
  }

  Widget _buildCard() {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(
        bottom: 10,
      ),
      height: 165,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: AppColors.blackOlive,
      ),
      child: Row(
        children: [
          SizedBox(
            height: 145,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Shimmer(
                child: AspectRatio(
                  aspectRatio: 85 / 130,
                  child: Container(color: AppColors.htmlGray),
                ),
              ),
            ),
          ),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                spacing: 5,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Shimmer(
                      child: Container(
                        width: 230,
                        height: 20,
                        color: AppColors.htmlGray,
                      ),
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Shimmer(
                      child: Container(
                        width: 150,
                        height: 20,
                        color: AppColors.htmlGray,
                      ),
                    ),
                  ),
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
              ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Shimmer(
                  child: Container(
                    width: 200,
                    height: 22,
                    color: AppColors.htmlGray,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
