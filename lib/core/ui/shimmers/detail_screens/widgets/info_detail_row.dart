import '../shimmer_details.dart';

class InfoDetailRow extends StatelessWidget {
  final double labelWidth;
  final double contentWidth;

  const InfoDetailRow({
    super.key,
    required this.labelWidth,
    required this.contentWidth,
  });

  final double height = 15;
  final BorderRadius borderRadius = const BorderRadius.all(
    Radius.circular(
      10,
    ),
  );

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
            borderRadius: borderRadius,
            child: Shimmer(
              child: Container(
                height: height,
                width: labelWidth,
                decoration: BoxDecoration(
                  color: AppColors.htmlGray,
                  borderRadius: borderRadius,
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
              borderRadius: borderRadius,
              child: Shimmer(
                child: Container(
                  height: height,
                  width: contentWidth,
                  decoration: BoxDecoration(
                    color: AppColors.htmlGray,
                    borderRadius: borderRadius,
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
