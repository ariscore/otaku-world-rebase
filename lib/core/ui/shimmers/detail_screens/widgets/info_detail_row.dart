import '../shimmer_details.dart';
class InfoDetailRow extends StatelessWidget {
  final double labelWidth;
  final double contentWidth;

  const InfoDetailRow({
    super.key,
    required this.labelWidth,
    required this.contentWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Label (left side)
        Padding(
          padding: EdgeInsets.only(right: 120 - labelWidth),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: Shimmer(
              child: Container(
                height: 16,
                width: labelWidth,
                decoration: BoxDecoration(
                  color: AppColors.htmlGray,
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(width: 20),
        // Content (right side)
        Expanded(
          child: Align(
            alignment: FractionalOffset.centerLeft,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Shimmer(
                child: Container(
                  height: 16,
                  width: contentWidth,
                  decoration: BoxDecoration(
                    color: AppColors.htmlGray,
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
