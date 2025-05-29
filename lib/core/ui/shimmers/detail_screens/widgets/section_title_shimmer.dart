import '../shimmer_details.dart';
class SectionTitleShimmer extends StatelessWidget {
  const SectionTitleShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(4),
      child: Shimmer(
        child: Container(
          height: 20,
          width: 150,
          decoration: BoxDecoration(
            color: AppColors.htmlGray,
            borderRadius: BorderRadius.circular(4),
          ),
        ),
      ),
    );
  }
}
