import 'package:flutter/material.dart';
import 'package:otaku_world/utils/formatting_utils.dart';

import '../../../graphql/__generated/graphql/schema.graphql.dart';
import '../../../theme/colors.dart';

class StatusText extends StatelessWidget {
  const StatusText({
    super.key,
    required this.status,
    required this.fontSize,
    required this.type,
  });

  final Enum$MediaStatus? status;
  final double fontSize;
  final Enum$MediaType type;

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

    final statusText = FormattingUtils.getMediaStatusString(
      status!,
      anime: type == Enum$MediaType.ANIME,
    );

    switch (status) {
      case Enum$MediaStatus.RELEASING:
        return Text(
          statusText,
          style: style?.copyWith(
            color: AppColors.kiwi,
          ),
        );
      case Enum$MediaStatus.FINISHED:
        return Text(
          statusText,
          style: style?.copyWith(
            color: AppColors.crayola,
          ),
        );
      case Enum$MediaStatus.NOT_YET_RELEASED:
        return Text(
          statusText,
          style: style?.copyWith(
            color: AppColors.chineseWhite,
          ),
        );
      case Enum$MediaStatus.CANCELLED:
        return Text(
          statusText,
          style: style?.copyWith(
            color: AppColors.maxRed,
          ),
        );
      case Enum$MediaStatus.HIATUS:
        return Text(
          statusText,
          style: style?.copyWith(
            color: AppColors.silver,
          ),
        );
      default:
        return Text(
          statusText,
          style: style?.copyWith(
            color: AppColors.lightSilver,
          ),
        );
    }
  }
}
