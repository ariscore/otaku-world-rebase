import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../generated/assets.dart';

class MeanScore extends StatelessWidget {
  const MeanScore({
    super.key,
    required this.meanScore,
  });

  final int? meanScore;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(Assets.iconsStar),
        const SizedBox(
          width: 1,
        ),
        Text(
          (meanScore == null) ? '0' : meanScore.toString(),
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontFamily: 'Roboto-Condensed',
              ),
        ),
      ],
    );
  }
}
