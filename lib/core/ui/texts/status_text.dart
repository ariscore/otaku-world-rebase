import 'package:flutter/material.dart';

import '../../../graphql/__generated/graphql/schema.graphql.dart';
import '../../../theme/colors.dart';

class StatusText extends StatelessWidget {
  const StatusText({super.key, required this.status,required this.fontSize});

  final Enum$MediaStatus? status;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    TextStyle? style = Theme.of(context).textTheme.titleLarge?.copyWith(
      fontFamily: 'Poppins',
      fontSize: fontSize,
    );

    if (status == null) {
      return Text(
        'Unknown',
        style: style?.copyWith(
          color: AppColors.bronze,
        ),
      );
    }

    switch (status) {
      case Enum$MediaStatus.RELEASING:
        return Text(
          'Airing',
          style: style?.copyWith(
            color: AppColors.kiwi,
          ),
        );
      case Enum$MediaStatus.FINISHED:
        return Text(
          'Finished',
          style: style?.copyWith(
            color: AppColors.crayola,
          ),
        );
      case Enum$MediaStatus.NOT_YET_RELEASED:
        return Text(
          'Not Yet Released',
          style: style?.copyWith(
            color: AppColors.chineseWhite,
          ),
        );
      case Enum$MediaStatus.CANCELLED:
        return Text(
          'Cancelled',
          style: style?.copyWith(
            color: AppColors.maxRed,
          ),
        );
      case Enum$MediaStatus.HIATUS:
        return Text(
          'Hiatus',
          style: style?.copyWith(
            color: AppColors.silver,
          ),
        );
      default:
        return Text(
          'Unknown',
          style: style?.copyWith(
            color: AppColors.lightSilver,
          ),
        );

  }
  }
}
