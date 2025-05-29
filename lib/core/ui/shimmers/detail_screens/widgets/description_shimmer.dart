import '../shimmer_details.dart';
class DescriptionShimmer extends StatelessWidget {
  const DescriptionShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.htmlGray.withValues(alpha: 0.7),
        borderRadius: BorderRadius.circular(4),
      ),
      padding: const EdgeInsets.all(10),
      child: Column(
        children: List.generate(4, (index) {
          double currentWidth = width - (index * 30) - 50;

          return Padding(
            padding: EdgeInsets.only(bottom: index < 3 ? 10 : 0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: Shimmer(
                  child: Container(
                    height: 20,
                    width: currentWidth,
                    decoration: BoxDecoration(
                      color: AppColors.htmlGray,
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
