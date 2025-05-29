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
              targetWidgetHeight: 515,
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
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SectionTitleShimmer(),
                  SizedBox(height: 10),
                  DescriptionShimmer(),
                  SizedBox(height: 20),
                  SectionTitleShimmer(),
                  SizedBox(height: 10),
                  CharacterGridShimmer(),
                  SizedBox(height: 20),
                  SectionTitleShimmer(),
                  SizedBox(height: 10),
                  InfoSectionShimmer(),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
