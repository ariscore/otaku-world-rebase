import 'package:flutter/material.dart';
import 'package:otaku_world/core/ui/shimmers/detail_screens/widgets/shimmer_container.dart';
import 'package:otaku_world/utils/extensions.dart';

class MediaGridShimmer extends StatelessWidget {
  const MediaGridShimmer({
    super.key,
    this.isSliver = false, // Default parameter
  });

  final bool isSliver;

  @override
  Widget build(BuildContext context) {
    if (isSliver) {
      return SliverGrid(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 150,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 0.5556,
        ),
        delegate: SliverChildBuilderDelegate(
          (context, index) {
            return const ShimmerGridCard();
          },
          childCount: 30,
        ),
      );
    } else {
      return GridView.builder(
        shrinkWrap: true,
        padding: const EdgeInsets.all(10),
        physics: const BouncingScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 150,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 0.5556,
        ),
        itemCount: 30,
        itemBuilder: (context, index) {
          return const ShimmerGridCard();
        },
      );
    }
  }
}

class ShimmerGridCard extends StatelessWidget {
  const ShimmerGridCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const AspectRatio(
          aspectRatio: 0.70005,
          child: ShimmerContainer(
            height: double.infinity,
            width: double.infinity,
            radius: 15,
          ),
        ),
        3.height,
        const ShimmerContainer(
          height: 10,
          width: double.infinity,
          radius: 3,
        ),
        2.height,
        ShimmerContainer(
          height: 10,
          width: width * 0.20,
          radius: 3,
        ),
        2.height,
        ShimmerContainer(
          height: 10,
          width: width * 0.1,
          radius: 3,
        ),
      ],
    );
  }
}
