import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../generated/assets.dart';
class ReviewRating extends StatelessWidget {
  const ReviewRating({super.key, required this.rating, required this.averageScore});

  final String rating;
  final String averageScore;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SvgPicture.asset(Assets.iconsThumbsUp),
        const SizedBox(
          width: 2,
        ),
        Text(
          rating,
          style: Theme.of(context)
              .textTheme
              .headlineSmall
              ?.copyWith(fontFamily: 'Poppins'),
        ),
        const Spacer(),
        SizedBox(
          height: 20,
          width: 20,
          child: SvgPicture.asset(Assets.iconsStar),
        ),
        const SizedBox(
          width: 4,
        ),
        Text(
          averageScore,
          style: Theme.of(context)
              .textTheme
              .headlineSmall
              ?.copyWith(fontFamily: 'Poppins'),
        ),
      ],
    );
  }
}
