import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:otaku_world/constants/string_constants.dart';
import 'package:otaku_world/core/ui/placeholders/poster_placeholder.dart';
import 'package:otaku_world/graphql/__generated/graphql/fragments.graphql.dart';
import 'package:otaku_world/theme/colors.dart';
import 'package:otaku_world/utils/extensions.dart';
import 'package:otaku_world/utils/formatting_utils.dart';
import 'package:otaku_world/utils/ui_utils.dart';

import '../../../graphql/__generated/graphql/schema.graphql.dart';
import '../../../utils/navigation_helper.dart';

class CalendarCard extends StatelessWidget {
  const CalendarCard({super.key, required this.airingSchedule});

  final Fragment$CalendarAiringSchedule airingSchedule;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: () => NavigationHelper.goToMediaDetailScreen(
        context: context,
        mediaId: airingSchedule.media!.id,
      ),
      child: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 7.5,
        ),
        decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            shadows: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.25),
                blurRadius: 4,
                offset: const Offset(0, 4),
              )
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width - 20,
              height: 72,
              child: _buildBannerImage(
                context,
                airingSchedule.media!.bannerImage,
              ),
            ),
            Container(
              decoration: const ShapeDecoration(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
                ),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    AppColors.darkCharcoal,
                    AppColors.japaneseIndigo,
                  ],
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8,
                  vertical: 4,
                ),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      FormattingUtils.formatTimeFromMilliseconds(
                        airingSchedule.airingAt,
                      ),
                      style:
                          Theme.of(context).textTheme.headlineSmall?.copyWith(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                              ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: UIUtils.getWidgetWidth(
                              targetWidgetWidth: 250, screenWidth: size.width),
                          child: Text(
                            airingSchedule.media?.title?.userPreferred ??
                                StringConstants.noTitle,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall
                                ?.copyWith(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                        ),
                        if (airingSchedule.media?.mediaListEntry?.status !=
                                null &&
                            airingSchedule.media?.type != null)
                          Column(
                            children: [
                              const SizedBox(
                                height: 2,
                              ),
                              _buildStatus(
                                context,
                                airingSchedule.media!.mediaListEntry!.status!,
                                airingSchedule.media!.type!,
                              ),
                            ],
                          ),
                        const SizedBox(
                          height: 2,
                        ),
                        Text(
                          (airingSchedule.airingAt <
                                  (DateTime.now().millisecondsSinceEpoch /
                                      1000))
                              ? 'Ep. ${airingSchedule.episode}, ${FormattingUtils.formatDurationFromSecondsBefore(airingSchedule.timeUntilAiring)} since aired'
                              : 'Ep. ${airingSchedule.episode} in ${FormattingUtils.formatDurationFromSeconds(airingSchedule.timeUntilAiring)}',
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge
                              ?.copyWith(
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Poppins',
                                color: AppColors.white.withValues(alpha: 0.8),
                              ),
                        ),
                      ],
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

  Widget _buildStatus(
    BuildContext context,
    Enum$MediaListStatus status,
    Enum$MediaType type,
  ) {
    return Row(
      children: [
        Container(
          width: 14,
          height: 14,
          decoration: ShapeDecoration(
            shape: const OvalBorder(),
            color: status.toColor,
          ),
        ),
        const SizedBox(
          width: 6,
        ),
        Text(
          status.displayTitle(type),
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontFamily: 'Poppins',
              ),
        ),
      ],
    );
  }

  Widget _buildBannerImage(BuildContext context, String? imageUrl) {
    if (imageUrl == null) {
      return _buildPlaceHolder();
    } else {
      return CachedNetworkImage(
        imageUrl: imageUrl,
        imageBuilder: (context, imageProvider) => Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
            image: DecorationImage(
              image: imageProvider,
              fit: BoxFit.cover,
            ),
          ),
        ),
        placeholder: (context, url) {
          return _buildPlaceHolder();
        },
        errorWidget: (context, url, error) {
          return _buildPlaceHolder();
        },
      );
    }
  }

  Widget _buildPlaceHolder() {
    return const ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(15),
        topRight: Radius.circular(15),
      ),
      child: PosterPlaceholder(size: 50),
    );
  }
}
