import 'package:otaku_world/core/ui/shimmers/detail_screens/widgets/shimmer_container.dart';

import '../shimmer_details.dart';

class MediaReviewsShimmerList extends StatelessWidget {
  const MediaReviewsShimmerList({
    super.key,
    this.itemCount = 5,
  });

  final int itemCount;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: itemCount,
      padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
      itemBuilder: (context, index) => const ReviewCardShimmer(),
      separatorBuilder: (context, index) => const SizedBox(height: 10),
    );
  }
}

class ReviewCardShimmer extends StatelessWidget {
  const ReviewCardShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: AppColors.blackOlive,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            children: [
              // Profile photo shimmer
              ShimmerContainer(
                height: 36,
                width: 36,
                radius: 18,
              ),
              SizedBox(width: 10),
              // User name shimmer
              ShimmerContainer(
                height: 20,
                width: 150,
              ),
            ],
          ),
          const SizedBox(height: 10),
          // Review summary shimmer
          const ShimmerContainer(
            height: 14,
            width: double.infinity,
          ),
          const SizedBox(height: 5),
          ShimmerContainer(
            height: 14,
            width: width * 0.6,
          ),
          const SizedBox(height: 5),
          ShimmerContainer(
            height: 14,
            width: width * 0.8,
          ),
          const SizedBox(height: 30),
          ShimmerContainer(
            height: 12,
            width: width * 0.4,
          ),
        ],
      ),
    );
  }
}
