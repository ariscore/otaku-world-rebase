import 'package:otaku_world/core/ui/shimmers/detail_screens/widgets/shimmer_container.dart';
import 'package:otaku_world/utils/extensions.dart';

import '../shimmer_details.dart';

class StaffListShimmer extends StatelessWidget {
  final int itemCount;

  const StaffListShimmer({
    super.key,
    this.itemCount = 5,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverPadding(
          padding: const EdgeInsets.all(10),
          sliver: SliverList.separated(
            itemCount: itemCount,
            separatorBuilder: (context, index) => const SizedBox(height: 10),
            itemBuilder: (context, index) => const StaffCardShimmer(),
          ),
        ),
      ],
    );
  }
}

class StaffCardShimmer extends StatelessWidget {
  const StaffCardShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    return Container(
      height: 130,
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.blackOlive,
      ),
      child: Row(
        children: [
          // Staff image
          const ShimmerContainer(
            height: 115,
            width: 78,
            radius: 10,
          ),
          const SizedBox(width: 5),

          // Staff info
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ShimmerContainer(height: 15, width: width * 0.6),
                5.height,
                ShimmerContainer(height: 12, width: width * 0.3),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
