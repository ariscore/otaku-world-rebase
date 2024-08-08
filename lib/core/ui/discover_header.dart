import 'package:flutter/material.dart';

import '../../theme/colors.dart';

class DiscoverHeader extends StatelessWidget {
  const DiscoverHeader({
    super.key,
    required this.title,
    required this.subtitle,
  });

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.displayMedium!.copyWith(
                color: AppColors.sunsetOrange,
                fontWeight: FontWeight.w900,
                fontFamily: 'Poppins',
              ),
        ),
        Text(
          subtitle,
          style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                color: AppColors.white,
                fontWeight: FontWeight.w500,
                fontFamily: 'Poppins',
              ),
        ),
      ],
    );
  }
}
