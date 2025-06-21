import '../shimmer_details.dart';

class TitleShimmer extends StatelessWidget {
  final double width;

  const TitleShimmer({
    super.key,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: Shimmer(
          child: Container(
            height: 20,
            width: width,
            decoration: BoxDecoration(
              color: AppColors.htmlGray,
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        ),
      ),
    );
  }
}
