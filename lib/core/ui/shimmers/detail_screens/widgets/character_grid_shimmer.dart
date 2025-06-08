import 'package:otaku_world/core/ui/shimmers/detail_screens/widgets/shimmer_container.dart';

import '../shimmer_details.dart';

class TrailerCardShimmer extends StatelessWidget {
  const TrailerCardShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return const ShimmerContainer(
      height: 200,
      width: double.infinity,
      radius: 5,
    );
  }
}
