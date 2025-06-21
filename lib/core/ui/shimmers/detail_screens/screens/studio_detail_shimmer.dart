import 'package:otaku_world/core/ui/shimmers/detail_screens/widgets/media_grid_shimmer.dart';
import 'package:otaku_world/core/ui/shimmers/detail_screens/widgets/studio_app_bar_shimmer.dart';

import '../shimmer_details.dart';

class StudioDetailShimmer extends StatelessWidget {
  const StudioDetailShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        slivers: [
          StudioAppBarShimmer(),
          SliverPadding(
            padding: EdgeInsets.all(15),
            sliver: MediaGridShimmer(
              isSliver: true,
            ),
          ),
        ],
      ),
    );
  }
}
