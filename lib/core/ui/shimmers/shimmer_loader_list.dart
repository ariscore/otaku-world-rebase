import 'package:flutter/material.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

import '../../../theme/colors.dart';

class ShimmerLoaderList extends StatelessWidget {
  const ShimmerLoaderList({
    super.key,
    required this.widgetWidth,
    required this.widgetHeight,
    required this.widgetBorder,
    required this.direction,
    this.height,
  });

  final double? height;
  final double widgetWidth;
  final double widgetHeight;
  final double widgetBorder;
  final Axis direction;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: ListView.builder(
        clipBehavior: Clip.none,
        scrollDirection: direction,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(widgetBorder),
              child: Shimmer(
                child: Container(
                  color: AppColors.blackOlive,
                  width: widgetWidth,
                  height: widgetHeight,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
