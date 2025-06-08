import 'package:otaku_world/core/ui/shimmers/detail_screens/widgets/shimmer_container.dart';
import 'package:otaku_world/utils/extensions.dart';

import '../shimmer_details.dart';

class CharacterAppBarShimmer extends StatelessWidget {
  const CharacterAppBarShimmer({super.key});

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
      expandedHeight: 455,
      flexibleSpace: FlexibleSpaceBar(
        collapseMode: CollapseMode.parallax,
        background: _buildPosterContent(
          context,
        ),
      ),
    );
  }

  Widget _buildPosterContent(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final height = MediaQuery.sizeOf(context).height;
    return Container(
      decoration: UIUtils.getShimmerDetailScreenDecoration(),
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: AppBar().preferredSize.height +
                MediaQuery.of(context).padding.top,
          ),
          ShimmerContainer(
            height: UIUtils.getWidgetHeight(
              targetWidgetHeight: 256,
              screenHeight: height,
            ),
            width: UIUtils.getWidgetWidth(
              targetWidgetWidth: 170,
              screenWidth: width,
            ),
            radius: 15,
          ),
          15.height,
          ShimmerContainer(
            height: 20,
            width: width * 0.35,
          ),
          15.height,
          ShimmerContainer(
            height: 18,
            width: width * 0.20,
          ),
        ],
      ),
    );
  }
}
