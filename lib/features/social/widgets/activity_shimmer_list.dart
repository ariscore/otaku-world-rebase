import 'package:flutter/material.dart';
import 'package:otaku_world/core/ui/shimmers/activity_shimmer_card.dart';

class ActivityShimmerList extends StatelessWidget {
  const ActivityShimmerList({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return const ActivityShimmerCard();
            },
            childCount: 10,
          ),
        ),
      ],
    );
  }
}
