import '../shimmer_details.dart';

class PosterContentShimmer extends StatelessWidget {
  final double height;
  final double width;

  const PosterContentShimmer({
    super.key,
    required this.height,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: UIUtils.getWidgetHeight(
            targetWidgetHeight: 400,
            screenHeight: height,
          ),
          child: Stack(
            children: [
              BannerImageShimmer(height: height, width: width),
              Positioned(
                bottom: 0,
                left: 15,
                right: 10,
                child: SizedBox(
                  width: width - 25,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      CoverImageShimmer(height: height, width: width),
                      const InfoColumnShimmer(),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        const SizedBox(height: 20),
        TitleShimmer(width: width),
        const SizedBox(height: 10),
        StatusRowShimmer(width: width),
      ],
    );
  }
}
