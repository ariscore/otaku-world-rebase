import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomSheetComponent extends StatelessWidget {
  const BottomSheetComponent({
    super.key,
    required this.iconName,
    required this.text,
    required this.onTap,
    this.bottomPadding = 20,
  });

  final String iconName;
  final String text;
  final VoidCallback onTap;
  final double bottomPadding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: bottomPadding),
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
