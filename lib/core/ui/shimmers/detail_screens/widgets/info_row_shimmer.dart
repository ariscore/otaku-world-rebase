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
      spacing: 5,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(5),
          child: Shimmer(
            child: Container(
              height: 13,
              width: width * 0.7,
              decoration: BoxDecoration(
                color: AppColors.htmlGray,
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ),
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(5),
          child: Shimmer(
            child: Container(
              width: width,
              height: 15,
              decoration: BoxDecoration(
                color: AppColors.htmlGray,
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
