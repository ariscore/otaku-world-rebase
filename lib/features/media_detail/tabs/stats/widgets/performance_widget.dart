import 'package:flutter/material.dart';
import 'package:otaku_world/features/media_detail/tabs/stats/widgets/performance_item.dart';

import '../../../../../generated/assets.dart';

class PerformanceWidget extends StatelessWidget {
  const PerformanceWidget({
    super.key,
    required this.average,
    required this.mean,
    required this.popularity,
    required this.favorites,
  });

  final String average;
  final String mean;
  final String popularity;
  final String favorites;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        if (average.isNotEmpty)
          PerformanceItem(
            iconString: Assets.iconsStar,
            data: average,
            category: "Average",
          ),
        if (mean.isNotEmpty)
          PerformanceItem(
            iconString: Assets.iconsStar,
            data: mean,
            category: "Mean",
          ),
        if (popularity.isNotEmpty)
          PerformanceItem(
            iconString: Assets.iconsTrendUp,
            data: popularity,
            category: "Popularity",
          ),
        if (favorites.isNotEmpty)
          PerformanceItem(
            iconString: Assets.iconsFavourite,
            data: favorites,
            category: "Favorites",
          ),
      ],
    );
  }
}
