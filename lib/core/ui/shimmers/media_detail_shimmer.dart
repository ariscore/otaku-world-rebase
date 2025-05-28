import 'package:flutter/material.dart';
import 'package:otaku_world/utils/navigation_helper.dart';
import 'package:shimmer_animation/shimmer_animation.dart';
import 'package:otaku_world/theme/colors.dart';
import 'package:otaku_world/utils/ui_utils.dart';

import '../../../generated/assets.dart';
import '../buttons/back_button.dart';

class MediaDetailShimmer extends StatelessWidget {
  const MediaDetailShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: AppColors.raisinBlack,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              ),
            ),
            pinned: true,
            expandedHeight: UIUtils.getWidgetHeight(
              targetWidgetHeight: 515,
              screenHeight: height,
            ),
            leading: CustomBackButton(
              onPressed: () {
                NavigationHelper.onPopInvoked(context);
              },
            ),
            backgroundColor: AppColors.raisinBlack,
            surfaceTintColor: AppColors.raisinBlack,
            flexibleSpace: FlexibleSpaceBar(
              background: _buildPosterContentShimmer(context, height, width),
            ),
            bottom: _buildTabBarShimmer(),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildSectionTitleShimmer(),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: AppColors.htmlGray.withValues(alpha: 0.7),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: List.generate(
                        4,
                        (index) {
                          double currentWidth = width - (index * 30) - 50;

                          return Padding(
                            padding: EdgeInsets.only(
                              bottom: index < 3 ? 10 : 0,
                            ),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(4),
                                child: Shimmer(
                                  child: Container(
                                    height: 20,
                                    width: currentWidth,
                                    decoration: BoxDecoration(
                                      color: AppColors.htmlGray,
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  _buildSectionTitleShimmer(),
                  const SizedBox(
                    height: 10,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(4),
                    child: Shimmer(
                      child: Container(
                        height: 150,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: AppColors.htmlGray.withValues(alpha: 0.7),
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  _buildSectionTitleShimmer(),
                  const SizedBox(
                    height: 10,
                  ),
                  _buildInfoSectionShimmer(),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPosterContentShimmer(
    BuildContext context,
    double height,
    double width,
  ) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: UIUtils.getWidgetHeight(
            targetWidgetHeight: 400,
            screenHeight: height,
          ),
          child: Stack(
            children: [
              // Banner Image Shimmer
              Align(
                alignment: AlignmentDirectional.topStart,
                child: Container(
                  foregroundDecoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment(0.00, -1.00),
                      end: Alignment(0, 1),
                      colors: [Color(0x001F1F1F), Color(0xFF202020)],
                    ),
                  ),
                  height: UIUtils.getWidgetHeight(
                    targetWidgetHeight: 220,
                    screenHeight: height,
                  ),
                  width: width,
                  child: Shimmer(
                    child: Container(
                      color: AppColors.htmlGray,
                      width: double.infinity,
                      height: double.infinity,
                    ),
                  ),
                ),
              ),
              // Cover Image and Info Column Shimmer
              Positioned(
                bottom: 0,
                left: 15,
                right: 10,
                child: SizedBox(
                  width: width - 25,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      // Cover Image Shimmer
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Shimmer(
                          child: Container(
                            height: UIUtils.getWidgetHeight(
                              targetWidgetHeight: 292,
                              screenHeight: height,
                            ),
                            width: UIUtils.getWidgetWidth(
                              targetWidgetWidth: 200,
                              screenWidth: width,
                            ),
                            decoration: BoxDecoration(
                              color: AppColors.htmlGray,
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                      ),
                      // Info Column Shimmer
                      _buildInfoColumnShimmer(),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        const SizedBox(height: 20),
        // Title Shimmer
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 12),
          child: Shimmer(
            child: Container(
              height: 30,
              width: width * 0.7,
              decoration: BoxDecoration(
                color: AppColors.htmlGray,
                borderRadius: BorderRadius.circular(4),
              ),
            ),
          ),
        ),
        const SizedBox(height: 10),
        // Status Row Shimmer
        Padding(
          padding: const EdgeInsets.only(
            left: 15,
            right: 12,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Shimmer(
                child: Container(
                  height: 16,
                  width: 80,
                  decoration: BoxDecoration(
                    color: AppColors.htmlGray.withValues(alpha: 0.7),
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
              ),
              Shimmer(
                child: Container(
                  height: 16,
                  width: width * 0.4,
                  decoration: BoxDecoration(
                    color: AppColors.htmlGray.withValues(alpha: 0.7),
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildInfoSectionShimmer() {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.htmlGray.withValues(alpha: 0.7),
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          // Title section with 2 lines
          _buildInfoRow(80, 200), // Short label, long content
          const SizedBox(height: 12),

          _buildInfoRow(60, 180), // Another info row
          const SizedBox(height: 12),

          _buildInfoRow(50, 120), // Shorter content
          const SizedBox(height: 12),

          // Divider
          Container(
            height: 1,
            width: double.infinity,
            color: AppColors.htmlGray.withValues(alpha: 0.5),
          ),
          const SizedBox(height: 16),

          // Bottom section with various info
          _buildInfoRow(50, 30), // Format: TV
          const SizedBox(height: 12),

          _buildInfoRow(70, 20), // Episodes: 11
          const SizedBox(height: 12),

          _buildInfoRow(120, 60), // Episode Duration: 24 mins
          const SizedBox(height: 12),

          _buildInfoRow(50, 50), // Source: Manga
          const SizedBox(height: 12),

          _buildInfoRow(45, 70), // Status: Releasing
          const SizedBox(height: 12),

          _buildInfoRow(70, 90), // Start Date
          const SizedBox(height: 12),

          _buildInfoRow(60, 95), // End Date
          const SizedBox(height: 12),

          _buildInfoRow(50, 85), // Season
          const SizedBox(height: 16),

          // Another divider
          Container(
            height: 1,
            width: double.infinity,
            color: AppColors.htmlGray.withValues(alpha: 0.5),
          ),
          const SizedBox(height: 16),

          _buildInfoRow(55, 70), // Studios
          const SizedBox(height: 12),

          _buildInfoRow(75, 80), // Producers
        ],
      ),
    );
  }

  Widget _buildInfoRow(double labelWidth, double contentWidth) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Label (left side)
        Padding(
          padding: EdgeInsets.only(right: 120 - labelWidth),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: Shimmer(
              child: Container(
                height: 16,
                width: labelWidth,
                decoration: BoxDecoration(
                  color: AppColors.htmlGray,
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
            ),
          ),
        ),
        // Space between label and content

        const SizedBox(
          width: 20,
        ),
        // Content (right side)
        Expanded(
          child: Align(
            alignment: FractionalOffset.centerLeft,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Shimmer(
                child: Container(
                  height: 16,
                  width: contentWidth,
                  decoration: BoxDecoration(
                    color: AppColors.htmlGray,
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildInfoColumnShimmer() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        // Score Shimmer
        _buildInfoRowShimmer(
          50,
          Assets.iconsStar,
        ),
        const SizedBox(height: 12),
        // Favorites Shimmer
        _buildInfoRowShimmer(
          65,
          Assets.iconsFavourite,
        ),
        const SizedBox(height: 12),
        // Popularity Shimmer
        _buildInfoRowShimmer(
          70,
          Assets.iconsTrendUp,
        ),
        const SizedBox(height: 30),
        Shimmer(
          child: Container(
            height: 12,
            width: 60,
            decoration: BoxDecoration(
              color: AppColors.htmlGray.withValues(alpha: 0.7),
              borderRadius: BorderRadius.circular(4),
            ),
          ),
        ),
        const SizedBox(height: 8),
        Shimmer(
          child: Container(
            height: 12,
            width: 70,
            decoration: BoxDecoration(
              color: AppColors.htmlGray.withValues(alpha: 0.7),
              borderRadius: BorderRadius.circular(4),
            ),
          ),
        ),
        const SizedBox(height: 8),
        Shimmer(
          child: Container(
            height: 12,
            width: 100,
            decoration: BoxDecoration(
              color: AppColors.htmlGray.withValues(alpha: 0.7),
              borderRadius: BorderRadius.circular(4),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildInfoRowShimmer(
    double width,
    String iconName,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Shimmer(
          child: Container(
            height: 15,
            width: width,
            decoration: BoxDecoration(
              color: AppColors.htmlGray,
              borderRadius: BorderRadius.circular(4),
            ),
          ),
        ),
        const SizedBox(height: 4),
        Shimmer(
          child: Container(
            height: 12,
            width: width * 0.8,
            decoration: BoxDecoration(
              color: AppColors.htmlGray.withValues(alpha: 0.7),
              borderRadius: BorderRadius.circular(4),
            ),
          ),
        ),
      ],
    );
  }

  PreferredSizeWidget _buildTabBarShimmer() {
    return PreferredSize(
      preferredSize: const Size.fromHeight(70),
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: AppColors.htmlGray.withValues(alpha: 0.7),
        ),
        margin: const EdgeInsets.all(
          10,
        ),
        child: Row(
          children: List.generate(4, (index) {
            return Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Shimmer(
                    child: Container(
                      height: 32,
                      decoration: BoxDecoration(
                        color: AppColors.htmlGray,
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }

  Widget _buildSectionTitleShimmer() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(4),
      child: Shimmer(
        child: Container(
          height: 20,
          width: 150,
          decoration: BoxDecoration(
            color: AppColors.htmlGray,
            borderRadius: BorderRadius.circular(4),
          ),
        ),
      ),
    );
  }
}
