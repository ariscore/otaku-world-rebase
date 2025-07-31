import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:otaku_world/core/ui/images/cover_image.dart';
import 'package:otaku_world/graphql/__generated/graphql/fragments.graphql.dart';
import 'package:otaku_world/graphql/__generated/graphql/schema.graphql.dart';
import 'package:otaku_world/theme/colors.dart';
import 'package:otaku_world/utils/formatting_utils.dart';
import 'package:otaku_world/utils/navigation_helper.dart';

import 'activity_base_card.dart';

class ListActivityCard extends StatelessWidget {
  const ListActivityCard({
    super.key,
    required this.activity,
    this.isProfile = false,
    required this.bloc,
  });

  final Fragment$ListActivity activity;
  final bool isProfile;
  final Bloc bloc;

  @override
  Widget build(BuildContext context) {
    if (activity.media == null || activity.status == null) {
      return const SizedBox();
    }

    return ActivityBaseCard(
      id: activity.id,
      avatarUrl: activity.user?.avatar?.medium,
      activitySiteUrl: activity.siteUrl,
      userId: activity.user?.id ?? 0,
      userName: activity.user?.name,
      likeCount: activity.likeCount,
      isLiked: activity.isLiked ?? false,
      replyCount: activity.replyCount,
      timestamp: activity.createdAt,
      type: Fragment$ListActivity,
      isSubscribed: activity.isSubscribed ?? false,
      isProfile: isProfile,
      bloc: bloc,
      onEdit: () {},
      child: InkWell(
        onTap: () => NavigationHelper.goToMediaDetailScreen(
          context: context,
          mediaId: activity.media!.id,
        ),
        child: Row(
          children: [
            SizedBox(
              width: 85,
              child: AspectRatio(
                aspectRatio: 85 / 120,
                child: CoverImage(
                  imageUrl: (activity.media!.isAdult ?? false)
                      ? ''
                      : (activity.media!.coverImage?.medium ?? ''),
                  type: activity.media!.type ?? Enum$MediaType.ANIME,
                ),
              ),
            ),
            const SizedBox(width: 5),
            SizedBox(
              width: MediaQuery.of(context).size.width - 130,
              child: AspectRatio(
                aspectRatio: 250 / 120,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text.rich(
                      TextSpan(
                        text: getActivityText(),
                        style: Theme.of(context).textTheme.headlineSmall,
                        children: [
                          TextSpan(
                            text: activity.media!.title?.userPreferred,
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall
                                ?.copyWith(
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      '${getMediaType()} · ${FormattingUtils.getMediaFormatString(
                        activity.media!.format ?? Enum$MediaFormat.$unknown,
                      )}',
                      style:
                          Theme.of(context).textTheme.headlineSmall?.copyWith(
                                color: AppColors.white.withValues(alpha:0.7),
                              ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  String getMediaType() {
    return activity.media!.type == Enum$MediaType.ANIME ? 'Anime' : 'Manga';
  }

  String getActivityText() {
    String status = activity.status!;
    status = status.replaceFirst(status[0], status[0].toUpperCase());
    final progress =
        activity.progress == null ? '' : '${activity.progress} of ';

    return '$status $progress';
  }
}
