import 'package:flutter/material.dart';
import 'package:otaku_world/core/ui/shimmers/detail_screens/widgets/shimmer_container.dart';
import 'package:otaku_world/utils/extensions.dart';
import 'package:shimmer_animation/shimmer_animation.dart';
import 'package:otaku_world/theme/colors.dart';

class CharacterCardShimmer extends StatelessWidget {
  const CharacterCardShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 8,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.blackOlive,
      ),
      child: const Stack(
        children: [
          // Left character shimmer
          CharacterSectionShimmer(isLeft: true),

          // Right voice actor shimmer
          Positioned(
            top: 0,
            bottom: 0,
            right: 0,
            child: CharacterSectionShimmer(isLeft: false),
          ),
        ],
      ),
    );
  }
}

class CharacterSectionShimmer extends StatelessWidget {
  final bool isLeft;

  const CharacterSectionShimmer({
    super.key,
    required this.isLeft,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.45,
      child: Row(
        mainAxisAlignment:
            isLeft ? MainAxisAlignment.start : MainAxisAlignment.end,
        crossAxisAlignment:
            isLeft ? CrossAxisAlignment.start : CrossAxisAlignment.end,
        children: [
          if (isLeft) ...[
            const CharacterImageShimmer(),
            const SizedBox(
              width: 5,
            ),
            const CharacterInfoShimmer(),
          ] else ...[
            const Expanded(child: CharacterInfoShimmer(isRightAligned: true)),
            const SizedBox(
              width: 5,
            ),
            const CharacterImageShimmer(),
          ],
        ],
      ),
    );
  }
}

class CharacterImageShimmer extends StatelessWidget {
  const CharacterImageShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Shimmer(
        child: Container(
          width: 78,
          height: 115,
          decoration: BoxDecoration(
            color: AppColors.htmlGray,
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    );
  }
}

class CharacterInfoShimmer extends StatelessWidget {
  final bool isRightAligned;

  const CharacterInfoShimmer({
    super.key,
    this.isRightAligned = false,
  });

  final double nameHeight = 16;
  final double nameWidth = 100;

  final double roleHeight = 14;
  final double roleWidth = 80;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment:
          isRightAligned ? MainAxisAlignment.end : MainAxisAlignment.start,
      crossAxisAlignment:
          isRightAligned ? CrossAxisAlignment.end : CrossAxisAlignment.start,
      children: [
        // Character name shimmer
        ShimmerContainer(
          height: isRightAligned ? roleHeight : nameHeight,
          width: isRightAligned ? roleWidth : nameWidth,
          radius: 5,
        ),
        5.height,
        // Character role shimmer
        ShimmerContainer(
          height: isRightAligned ? nameHeight : roleHeight,
          width: isRightAligned ? nameWidth : roleWidth,
          radius: 5,
        ),
      ],
    );
  }
}

// Alternative version with more detailed shimmer structure
class CharacterCardShimmerDetailed extends StatelessWidget {
  const CharacterCardShimmerDetailed({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 8,
      ),
      decoration: ShapeDecoration(
        gradient: const LinearGradient(
          begin: Alignment(-1.00, 0.00),
          end: Alignment(1, 0),
          colors: [
            AppColors.darkCharcoal,
            AppColors.japaneseIndigo,
          ],
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        shadows: const [
          BoxShadow(
            color: Color(0x3F000000),
            blurRadius: 4,
            offset: Offset(0, 4),
            spreadRadius: 0,
          )
        ],
      ),
      child: Row(
        children: [
          // Left character section
          Expanded(
            child: Row(
              children: [
                // Character image
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Shimmer(
                    child: Container(
                      width: 60,
                      height: 90,
                      decoration: BoxDecoration(
                        color: AppColors.htmlGray,
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10),

                // Character info
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Character name
                      ClipRRect(
                        borderRadius: BorderRadius.circular(4),
                        child: Shimmer(
                          child: Container(
                            height: 16,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: AppColors.htmlGray,
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),

                      // Character role
                      ClipRRect(
                        borderRadius: BorderRadius.circular(4),
                        child: Shimmer(
                          child: Container(
                            height: 14,
                            width: 80,
                            decoration: BoxDecoration(
                              color: AppColors.htmlGray.withValues(alpha: 0.7),
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(width: 10),

          // Right voice actor section
          Expanded(
            child: Row(
              children: [
                // Voice actor info
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      // Voice actor name
                      ClipRRect(
                        borderRadius: BorderRadius.circular(4),
                        child: Shimmer(
                          child: Container(
                            height: 16,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: AppColors.htmlGray,
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),

                      // Language
                      ClipRRect(
                        borderRadius: BorderRadius.circular(4),
                        child: Shimmer(
                          child: Container(
                            height: 14,
                            width: 70,
                            decoration: BoxDecoration(
                              color: AppColors.htmlGray.withValues(alpha: 0.7),
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(width: 10),

                // Voice actor image
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Shimmer(
                    child: Container(
                      width: 60,
                      height: 90,
                      decoration: BoxDecoration(
                        color: AppColors.htmlGray,
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// For use in character list shimmer
class CharacterListShimmer extends StatelessWidget {
  final int itemCount;
  final bool isRightAvailable;

  const CharacterListShimmer({
    super.key,
    this.itemCount = 5,
    this.isRightAvailable = true,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        // Dropdown shimmer
        if (!isRightAvailable)
          SliverPadding(
            padding: const EdgeInsets.all(8.0),
            sliver: SliverToBoxAdapter(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Shimmer(
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: AppColors.blackOlive,
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
            ),
          ),

        // Character cards shimmer
        SliverPadding(
          padding: const EdgeInsets.all(10),
          sliver: SliverList.separated(
            itemCount: itemCount,
            separatorBuilder: (context, index) => const SizedBox(height: 10),
            itemBuilder: (context, index) => const CharacterCardShimmer(),
          ),
        ),
      ],
    );
  }
}
