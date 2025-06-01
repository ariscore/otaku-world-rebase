import 'package:otaku_world/utils/extensions.dart';

import '../shimmer_details.dart';

class MediaDetailShimmer extends StatelessWidget {
  const MediaDetailShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: AppColors.raisinBlack,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              ),
            ),
            pinned: true,
            expandedHeight: UIUtils.getWidgetHeight(
              targetWidgetHeight: 500,
              screenHeight: height,
            ),
            leading: CustomBackButton(
              onPressed: () {
                NavigationHelper.onPopInvoked(context);
              },
            ),
            backgroundColor: AppColors.raisinBlack,
            surfaceTintColor: AppColors.raisinBlack,
            flexibleSpace: FlexibleSpaceBar(
              background: PosterContentShimmer(height: height, width: width),
            ),
            bottom: const TabBarShimmer(),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10,),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SectionTitleShimmer(),
                  5.height,
                  const DescriptionShimmer(),
                  20.height,
                  const SectionTitleShimmer(),
                  5.height,
                  const TrailerCardShimmer(),
                  20.height,
                  const SectionTitleShimmer(),
                  5.height,
                  const InfoSectionShimmer(),
                  20.height,
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
