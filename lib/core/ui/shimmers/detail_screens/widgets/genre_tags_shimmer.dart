import '../shimmer_details.dart';

class GenreTagsShimmer extends StatelessWidget {
  const GenreTagsShimmer({super.key});

  final BorderRadius borderRadius = const BorderRadius.all(Radius.circular(5));

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 5,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        ClipRRect(
          borderRadius: borderRadius,
          child: Shimmer(
            child: Container(
              height: 15,
              width: 40,
              decoration: BoxDecoration(
                color: AppColors.htmlGray,
                borderRadius: borderRadius,
              ),
            ),
          ),
        ),
        ClipRRect(
          borderRadius: borderRadius,
          child: Shimmer(
            child: Container(
              height: 15,
              width: 25,
              decoration: BoxDecoration(
                color: AppColors.htmlGray,
                borderRadius: borderRadius,
              ),
            ),
          ),
        ),
        ClipRRect(
          borderRadius: borderRadius,
          child: Shimmer(
            child: Container(
              height: 15,
              width: 90,
              decoration: BoxDecoration(
                color: AppColors.htmlGray,
                borderRadius: borderRadius,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
