import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:otaku_world/theme/colors.dart';

class BottomSheetComponent extends StatelessWidget {
  const BottomSheetComponent({
    super.key,
    required this.iconName,
    required this.text,
    required this.onTap,
    this.bottomMargin = 20,
    this.isSelected = false,
  });

  final String iconName;
  final String text;
  final VoidCallback onTap;
  final double bottomMargin;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: bottomMargin),
      padding: isSelected
          ? const EdgeInsets.symmetric(
              horizontal: 5,
              vertical: 7.5,
            )
          : null,
      decoration: isSelected
          ? BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              gradient: AppColors.secondaryGradientHorizontal,
            )
          : null,
      child: InkWell(
        onTap: onTap,
        child: Row(
          children: [
            SizedBox(
              width: 30,
              height: 30,
              child: SvgPicture.asset(iconName),
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              text,
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    fontFamily: 'Poppins',
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
