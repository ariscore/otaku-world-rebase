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
      padding: const EdgeInsets.only(left: 15, right: 12),
      child: Shimmer(
        child: Container(
          height: 30,
          width: width * 0.7,
          decoration: BoxDecoration(
            color: AppColors.htmlGray,
            borderRadius: BorderRadius.circular(4),
          ),
        ),
      ),
    );
  }
}
