import 'package:flutter/material.dart';
import 'package:otaku_world/constants/string_constants.dart';
import 'package:otaku_world/core/ui/activities/activity_actions.dart';
import 'package:otaku_world/features/reviews/widgets/review_profile_photo.dart';
import 'package:otaku_world/graphql/__generated/graphql/details/media_activities.graphql.dart';
import 'package:otaku_world/utils/extensions.dart';

import '../../../../../theme/colors.dart';
import '../../../../../theme/decorations.dart';
import '../../../../../utils/formatting_utils.dart';

class SocialCard extends StatelessWidget {
  const SocialCard({
    super.key,
    required this.activity,
  });

  final Query$MediaActivityQuery$Page$activities$$ListActivity activity;
  final TextStyle userNameTextStyle = const TextStyle(
    color: AppColors.white,
    fontSize: 12,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w400,
  );
  final TextStyle progressOfMediaActivity = const TextStyle(
    color: AppColors.white,
    fontSize: 14,
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w600,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: Decorations.simpleContainer,
      height: 140,
      width: MediaQuery.of(context).size.width - 20,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ReviewProfilePhoto(
                profilePicUrl:
                    activity.user?.avatar?.medium ?? UiConstants.noImageUrl,
                radius: 25,
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    activity.user?.name ?? 'Unknown',
                    style: userNameTextStyle,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                      '${activity.status?.checkIfNullReturnsEmpty().toCapitalized() ?? ''} ${activity.progress ?? ''}',
                      style: progressOfMediaActivity),
                ],
              )
            ],
          ),
          ActivityActions(
            activityId: activity.id,
            isLiked: activity.isLiked ?? false,
            likeCount: activity.likeCount,
            replyCount: activity.replyCount,
          ),
          Text(
            FormattingUtils.formatUnixTimestamp(activity.createdAt),
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontSize: 12,
                  fontFamily: 'Roboto',
                  color: AppColors.white.withOpacity(0.8),
                ),
          ),
        ],
      ),
    );
  }

// String formatProgress(
//   String status,
//   String progress,
// ) {
//   if (status == 'watched episode' || status == 'read chapter') {
//     return '${status.toCapitalized()} $progress';
//   } else if (status == 'rewatched episode') {
//     return '${status.toCapitalized()} $progress';
//   } else {
//     return status.toCapitalized();
//   }
// }
}
