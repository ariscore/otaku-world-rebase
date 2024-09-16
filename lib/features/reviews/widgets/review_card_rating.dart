import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:otaku_world/graphql/__generated/graphql/fragments.graphql.dart';
import 'package:otaku_world/graphql/__generated/graphql/schema.graphql.dart';

import '../../../generated/assets.dart';

class ReviewCardRating extends StatelessWidget {
  const ReviewCardRating({super.key, required this.review});

  final Fragment$Review review;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            _buildRating(
              context,
              count: review.rating ?? 0,
              isLiked: review.userRating == Enum$ReviewRating.UP_VOTE,
              asset: Assets.iconsThumbsUp,
              likedAsset: Assets.iconsThumbsUpFilled,
            ),
            const SizedBox(width: 15),
            _buildRating(
              context,
              count: (review.ratingAmount ?? 0) - (review.rating ?? 0),
              isLiked: review.userRating == Enum$ReviewRating.DOWN_VOTE,
              asset: Assets.iconsThumbsDown,
              likedAsset: Assets.iconsThumbsDownFilled,
            ),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SvgPicture.asset(Assets.iconsStar, width: 25),
            const SizedBox(
              width: 5,
            ),
            Text(
              (review.score ?? 0).toString(),
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall
                  ?.copyWith(fontFamily: 'Poppins'),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildRating(
    BuildContext context, {
    required int count,
        required bool isLiked,
    required String asset,
        required String likedAsset,
  }) {
    return Row(
      children: [
        SvgPicture.asset(isLiked ? likedAsset : asset, width: 25),
        const SizedBox(
          width: 5,
        ),
        Text(
          count.toString(),
          style: Theme.of(context)
              .textTheme
              .headlineSmall
              ?.copyWith(fontFamily: 'Poppins'),
        ),
      ],
    );
  }
}
