import '../shimmer_details.dart';
class InfoRowShimmer extends StatelessWidget {
  final double width;
  final String iconName;

  const InfoRowShimmer({
    super.key,
    required this.width,
    required this.iconName,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Shimmer(
          child: Container(
            height: 15,
            width: width,
            decoration: BoxDecoration(
              color: AppColors.htmlGray,
              borderRadius: BorderRadius.circular(4),
            ),
          ),
        ),
        const SizedBox(height: 4),
        Shimmer(
          child: Container(
            height: 12,
            width: width * 0.8,
            decoration: BoxDecoration(
              color: AppColors.htmlGray.withValues(alpha: 0.7),
              borderRadius: BorderRadius.circular(4),
            ),
          ),
        ),
      ],
    );
  }
}
