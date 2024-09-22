import 'package:flutter/material.dart';
import 'package:otaku_world/features/reviews/widgets/review_profile_photo.dart';
import 'package:otaku_world/features/reviews/widgets/review_card_rating.dart';
import 'package:otaku_world/theme/decorations.dart';

import '../../../../constants/string_constants.dart';
import '../../../../graphql/__generated/graphql/fragments.graphql.dart';
import '../../../../theme/colors.dart';
import '../../../../utils/formatting_utils.dart';
import '../../../../utils/navigation_helper.dart';

class ReviewCard extends StatelessWidget {
  const ReviewCard({
    super.key,
    required this.review,
  });

  final Fragment$Review review;
  final TextStyle userNameTextStyle = const TextStyle(
    color: AppColors.white,
    fontSize: 14,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w500,
  );
  final TextStyle reviewSummaryTextStyle = const TextStyle(
    color: AppColors.white,
    fontSize: 14,
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w400,
  );

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => NavigationHelper.goToReviewDetailScreen(
        context: context,
        reviewId: review.id,
      ),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: Decorations.simpleContainer,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ReviewProfilePhoto(
                  profilePicUrl:
                      review.user?.avatar?.medium ?? UiConstants.noImageUrl,
                  radius: 18,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  review.user?.name ?? UiConstants.noName,
                  style: userNameTextStyle,
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              review.summary ?? UiConstants.noName,
              style: reviewSummaryTextStyle,
            ),
            const SizedBox(
              height: 10,
            ),
            ReviewCardRating(review: review),
            const SizedBox(
              height: 5,
            ),
            Text(
              FormattingUtils.formatUnixTimestamp(review.createdAt),
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontSize: 12,
                    fontFamily: 'Roboto',
                    color: AppColors.white.withOpacity(0.8),
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
