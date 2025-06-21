import 'package:otaku_world/core/ui/shimmers/detail_screens/widgets/shimmer_container.dart';
import 'package:otaku_world/utils/extensions.dart';

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
        13.height,
        TitleShimmer(width: width),
        12.height,
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
          ),
          child: ShimmerContainer(height: 20, width: width * 0.6),
        ),
      ],
    );
  }
}
