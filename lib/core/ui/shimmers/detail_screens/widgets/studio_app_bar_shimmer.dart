import 'package:otaku_world/core/ui/shimmers/detail_screens/widgets/shimmer_container.dart';
import 'package:otaku_world/utils/extensions.dart';

import '../shimmer_details.dart';
import 'media_filter_widget_shimmer.dart';

class StudioAppBarShimmer extends StatelessWidget {
  const StudioAppBarShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      leading: CustomBackButton(
        onPressed: () {
          NavigationHelper.onPopInvoked(context);
        },
      ),
      backgroundColor: AppColors.raisinBlack,
      surfaceTintColor: AppColors.raisinBlack,
      pinned: true,
      expandedHeight: 220,
      flexibleSpace: FlexibleSpaceBar(
        background: _buildPosterContent(
          context,
        ),
      ),
      bottom: PreferredSize(
        preferredSize: Size(
          MediaQuery.sizeOf(context).width,
          50,
        ),
        child: const Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 10,
          ),
          child: MediaFilterWidgetShimmer(),
        ),
      ),
    );
  }

  Widget _buildPosterContent(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    return Container(
      decoration: UIUtils.getShimmerDetailScreenDecoration(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          15.height,
          ShimmerContainer(
            height: 20,
            width: width * 0.50,
          ),
          5.height,
          ShimmerContainer(
            height: 18,
            width: width * 0.20,
          ),
        ],
      ),
    );
  }
}
