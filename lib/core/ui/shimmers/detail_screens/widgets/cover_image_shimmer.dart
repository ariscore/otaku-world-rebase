import '../shimmer_details.dart';
class CoverImageShimmer extends StatelessWidget {
  final double height;
  final double width;

  const CoverImageShimmer({
    super.key,
    required this.height,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Shimmer(
        child: Container(
          height: UIUtils.getWidgetHeight(
            targetWidgetHeight: 292,
            screenHeight: height,
          ),
          width: UIUtils.getWidgetWidth(
            targetWidgetWidth: 200,
            screenWidth: width,
          ),
          decoration: BoxDecoration(
            color: AppColors.htmlGray,
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
    );
  }
}
