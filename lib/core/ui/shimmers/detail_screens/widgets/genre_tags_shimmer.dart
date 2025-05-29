import '../shimmer_details.dart';
class GenreTagsShimmer extends StatelessWidget {
  const GenreTagsShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Shimmer(
          child: Container(
            height: 12,
            width: 60,
            decoration: BoxDecoration(
              color: AppColors.htmlGray.withValues(alpha: 0.7),
              borderRadius: BorderRadius.circular(4),
            ),
          ),
        ),
        const SizedBox(height: 8),
        Shimmer(
          child: Container(
            height: 12,
            width: 70,
            decoration: BoxDecoration(
              color: AppColors.htmlGray.withValues(alpha: 0.7),
              borderRadius: BorderRadius.circular(4),
            ),
          ),
        ),
        const SizedBox(height: 8),
        Shimmer(
          child: Container(
            height: 12,
            width: 100,
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
