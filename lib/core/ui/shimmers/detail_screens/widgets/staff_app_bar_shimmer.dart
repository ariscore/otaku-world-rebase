import 'package:otaku_world/core/ui/shimmers/detail_screens/widgets/shimmer_container.dart';
import 'package:otaku_world/utils/extensions.dart';

import '../shimmer_details.dart';

class StaffAppBarShimmer extends StatelessWidget {
  const StaffAppBarShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    return SliverAppBar(
      leading: CustomBackButton(
        onPressed: () {
          NavigationHelper.onPopInvoked(context);
        },
      ),
      backgroundColor: AppColors.raisinBlack,
      surfaceTintColor: AppColors.raisinBlack,
      pinned: true,
      expandedHeight: UIUtils.getWidgetHeight(
        targetWidgetHeight: 320,
        screenHeight: height,
      ),
      flexibleSpace: FlexibleSpaceBar(
        collapseMode: CollapseMode.parallax,
        background: _buildPosterContent(
          context,
        ),
      ),
      bottom: const TabBarShimmer(),
    );
  }

  Widget _buildPosterContent(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final height = MediaQuery.sizeOf(context).height;
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: UIUtils.getShimmerDetailScreenDecoration(),
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ShimmerContainer(
                height: UIUtils.getWidgetHeight(
                  targetWidgetHeight: 196,
                  screenHeight: height,
                ),
                width: UIUtils.getWidgetWidth(
                  targetWidgetWidth: 130,
                  screenWidth: width,
                ),
                radius: 15,
              ),
              10.width,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  30.height,
                  ShimmerContainer(
                    height: 20,
                    width: width * 0.5,
                  ),
                  10.height,
                  ShimmerContainer(
                    height: 15,
                    width: width * 0.35,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
