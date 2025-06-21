import '../shimmer_details.dart';
class BannerImageShimmer extends StatelessWidget {
  final double height;
  final double width;

  const BannerImageShimmer({
    super.key,
    required this.height,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional.topStart,
      child: Container(
        foregroundDecoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(0.00, -1.00),
            end: Alignment(0, 1),
            colors: [Color(0x001F1F1F), Color(0xFF202020)],
          ),
        ),
        height: UIUtils.getWidgetHeight(
          targetWidgetHeight: 220,
          screenHeight: height,
        ),
        width: width,
        child: Shimmer(
          child: Container(
            color: AppColors.htmlGray,
            width: double.infinity,
            height: double.infinity,
          ),
        ),
      ),
    );
  }
}
