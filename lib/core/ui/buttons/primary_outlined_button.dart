import 'package:flutter/material.dart';
import 'package:otaku_world/theme/colors.dart';

class PrimaryOutlinedButton extends StatelessWidget {
  const PrimaryOutlinedButton({
    super.key,
    this.horizontalPadding = 12,
    this.verticalPadding = 14,
    this.width,
    this.fontSize,
    required this.onTap,
    required this.label,
  });

  final double horizontalPadding;
  final double verticalPadding;
  final double? width;
  final VoidCallback onTap;
  final String label;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: horizontalPadding,
      ),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(15),
        child: Container(
          width: width ??
              MediaQuery.of(context).size.width - horizontalPadding * 2,
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              side: BorderSide(width: 1, color: Theme.of(context).primaryColor),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          child: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(
                vertical: verticalPadding,
              ),
              child: Text(
                label,
                style: Theme.of(context).textTheme.displayMedium?.copyWith(
                  fontSize: fontSize,
                  color: AppColors.white,
                  fontFamily: 'Poppins',
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
