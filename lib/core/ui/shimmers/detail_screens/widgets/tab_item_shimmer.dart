import '../shimmer_details.dart';

class TabItemShimmer extends StatelessWidget {
  const TabItemShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Shimmer(
        child: Container(
          height: 40,
          decoration: BoxDecoration(
            color: AppColors.htmlGray,
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
    );
  }
}
