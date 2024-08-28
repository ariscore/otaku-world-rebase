import 'package:flutter/material.dart';
import 'package:otaku_world/utils/extensions.dart';

import '../../../../../graphql/__generated/graphql/schema.graphql.dart';
import '../../../../../theme/colors.dart';

class StatsChartLabel extends StatelessWidget {
  const StatsChartLabel({
    super.key,
    required this.status,
    required this.data,
    required this.type,
  });

  final Enum$MediaListStatus status;
  final int data;
  final Enum$MediaType type;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 14,
          height: 14,
          decoration: ShapeDecoration(
            color: status.toColor,
            shape: const OvalBorder(),
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        RichText(
          text: TextSpan(
            text: "${status.displayTitle(type)} - ",
            style: const TextStyle(
              color: AppColors.white,
              fontSize: 14,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w500,
            ),
            children: <TextSpan>[
              TextSpan(
                text: data.toString(),
                style: TextStyle(
                  color: status.toColor,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
