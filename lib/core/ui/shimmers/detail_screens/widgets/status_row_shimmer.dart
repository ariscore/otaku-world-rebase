import '../shimmer_details.dart';
class StatusRowShimmer extends StatelessWidget {
  final double width;

  const StatusRowShimmer({
    super.key,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Shimmer(
            child: Container(
              height: 16,
              width: 80,
              decoration: BoxDecoration(
                color: AppColors.htmlGray.withValues(alpha: 0.7),
                borderRadius: BorderRadius.circular(4),
              ),
            ),
          ),
          Shimmer(
            child: Container(
              height: 16,
              width: width * 0.4,
              decoration: BoxDecoration(
                color: AppColors.htmlGray.withValues(alpha: 0.7),
                borderRadius: BorderRadius.circular(4),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
