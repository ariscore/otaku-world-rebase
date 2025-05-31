import 'package:otaku_world/core/ui/shimmers/detail_screens/widgets/shimmer_container.dart';

import '../shimmer_details.dart';
class SectionTitleShimmer extends StatelessWidget {
  const SectionTitleShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return const ShimmerContainer(
      height: 20,
      width: 100,
      radius: 12,
    );
  }
}
