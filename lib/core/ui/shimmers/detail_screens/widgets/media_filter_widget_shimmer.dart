import 'package:otaku_world/core/ui/shimmers/detail_screens/widgets/shimmer_container.dart';

import '../shimmer_details.dart';

class MediaFilterWidgetShimmer extends StatelessWidget {
  const MediaFilterWidgetShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ShimmerContainer(height: 30, width: width * 0.4),
        ShimmerContainer(height: 25, width: width * 0.23),
      ],
    );
  }
}
