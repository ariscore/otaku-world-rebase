import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:otaku_world/core/ui/mean_score.dart';
import 'package:otaku_world/core/ui/placeholders/poster_placeholder.dart';
import 'package:otaku_world/theme/colors.dart';
import 'package:otaku_world/utils/formatting_utils.dart';
import 'package:otaku_world/utils/ui_utils.dart';

import '../../../graphql/__generated/graphql/fragments.graphql.dart';
import '../../../graphql/__generated/graphql/schema.graphql.dart';
import '../../../services/caching/image_cache_manager.dart';
import '../../../utils/navigation_helper.dart';

class MediaCard extends StatelessWidget {
  const MediaCard({
    super.key,
    required this.index,
    required this.media,
    required this.startColors,
    this.endColors = AppColors.japaneseIndigo,
  });

  final int index;
  final Fragment$MediaShort? media;
  final Color startColors;
  final Color endColors;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final rotate = screenWidth <= 500.0;
    return Container(
      height: UIUtils.getWidgetHeight(
          targetWidgetHeight: 192,
          screenHeight: rotate ? screenHeight : screenWidth),
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: (media!.type == Enum$MediaType.ANIME)
            ? BorderRadius.circular(20)
            : BorderRadius.circular(10),
        gradient: LinearGradient(
          begin: const Alignment(0.0, -1.0),
          end: const Alignment(0.0, 1.0),
          colors: [
            startColors,
            endColors,
          ],
        ),
      ),
      child: Material(
        //https://stackoverflow.com/questions/45424621/inkwell-not-showing-ripple-effect
        color: AppColors.transparent,
        child: InkWell(
          onTap: () => NavigationHelper.goToMediaDetailScreen(
            context: context,
            mediaId: media!.id,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 10,
            ),
            child: Row(
              children: [
                MediaPoster(
                  imageUrl: media!.coverImage?.large,
                  type: media!.type!,
                ),
                const SizedBox(
                  width: 10,
                ),
                SizedBox(
                  height: 172,
                  width: screenWidth - 0.69767 * 120 - 105,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: screenWidth - 0.69767 * 120 - 150,
                            child: Text(
                              getTitle(media!.title) ?? 'No Title',
                              maxLines: 2,
                              overflow: TextOverflow.clip,
                              style: Theme.of(context)
                                  .textTheme
                                  .displayMedium
                                  ?.copyWith(
                                    fontFamily: 'Roboto-Condensed',
                                    fontWeight: FontWeight.w700,
                                  ),
                            ),
                          ),
                          Text(
                            "#$index",
                            style: Theme.of(context)
                                .textTheme
                                .displayMedium!
                                .copyWith(
                                  fontFamily: 'Roboto-Condensed',
                                  fontWeight: FontWeight.w700,
                                  color: AppColors.japaneseIndigo,
                                ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      MeanScore(
                        meanScore: media!.meanScore,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Genres(
                        media: media!,
                      ),
                      const Spacer(),
                      SummaryText(
                        media: media!,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  String? getTitle(Fragment$MediaShort$title? title) {
    return title?.english ?? title?.romaji ?? title?.native;
  }
}

class MediaPoster extends StatelessWidget {
  const MediaPoster({
    super.key,
    required this.imageUrl,
    required this.type,
  });

  final String? imageUrl;
  final Enum$MediaType type;

  @override
  Widget build(BuildContext context) {
    return (imageUrl != null)
        ? AspectRatio(
            aspectRatio: 0.69767,
            child: CachedNetworkImage(
              cacheManager: ImageCacheManager.instance,
              imageUrl: imageUrl!,
              height: 172,
              fit: BoxFit.cover,
              imageBuilder: (context, imageProvider) {
                return ClipRRect(
                  borderRadius: (type == Enum$MediaType.ANIME)
                      ? BorderRadius.circular(15)
                      : BorderRadius.circular(5),
                  child: Image(
                    image: imageProvider,
                    fit: BoxFit.cover,
                  ),
                );
              },
              placeholder: (context, url) {
                return _buildPlaceholderImage(type);
              },
              errorWidget: (context, url, error) {
                return _buildPlaceholderImage(type);
              },
            ),
          )
        : _buildPlaceholderImage(type);
  }

  Widget _buildPlaceholderImage(Enum$MediaType type) {
    return ClipRRect(
      borderRadius: (type == Enum$MediaType.ANIME)
          ? BorderRadius.circular(15)
          : BorderRadius.circular(5),
      child: const PosterPlaceholder(),
    );
  }
}

class Genres extends StatelessWidget {
  const Genres({
    super.key,
    required this.media,
  });

  final Fragment$MediaShort media;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    if (media.genres == null) return const Text('No genre');

    List<String?> genres = media.genres!;
    List<InlineSpan> textSpans = [];

    for (int i = 0; i < genres.length; i++) {
      if (textSpans.length >= 5) {
        break;
      }

      String genre = genres[i].toString();
      textSpans.add(TextSpan(
        text: genre,
        style: Theme.of(context).textTheme.titleLarge?.copyWith(
              color: AppColors.white.withOpacity(0.7),
              fontWeight: FontWeight.w500,
              fontFamily: 'Poppins',
            ),
      ));

      if (i < 2) {
        textSpans.add(
          TextSpan(
            text: ' | ',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: AppColors.white.withOpacity(0.7),
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Poppins',
                ),
          ),
        );
      }
    }

    return SizedBox(
      width: screenWidth - 0.69767 * 120 - 120,
      child: RichText(
        text: TextSpan(
          children: textSpans,
        ),
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        textAlign: TextAlign.start,
      ),
    );
  }
}

class SummaryText extends StatelessWidget {
  const SummaryText({
    super.key,
    required this.media,
  });

  final Fragment$MediaShort media;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    List<InlineSpan> textSpans = [];

    textSpans.add(
      TextSpan(
        text: "${toJson$Enum$MediaFormat(
          media.format ?? Enum$MediaFormat.$unknown,
        )}, Episodes ${media.episodes}, ",
        style: Theme.of(context).textTheme.titleMedium?.copyWith(
              color: AppColors.white,
              fontWeight: FontWeight.bold,
              fontFamily: 'Poppins',
            ),
      ),
    );
    textSpans.add(
      TextSpan(
        text:
            "${FormattingUtils.getSeasonString(media.season)} ${media.seasonYear},"
            " ${getStatus(media.status)}",
        style: Theme.of(context).textTheme.titleMedium?.copyWith(
              color: AppColors.white,
              fontWeight: FontWeight.bold,
              fontFamily: 'Poppins',
            ),
      ),
    );

    return SizedBox(
      width: screenWidth - 0.69767 * 120 - 120,
      child: RichText(
        text: TextSpan(
          children: textSpans,
        ),
        maxLines: 2,
        overflow: TextOverflow.clip,
      ),
    );
  }

  String getStatus(Enum$MediaStatus? status) {
    if (status == null) {
      return 'Unknown';
    }

    switch (status) {
      case Enum$MediaStatus.RELEASING:
        return 'Airing';
      case Enum$MediaStatus.FINISHED:
        return 'Finished';
      case Enum$MediaStatus.NOT_YET_RELEASED:
        return 'Not yet Released';
      case Enum$MediaStatus.CANCELLED:
        return 'Cancelled';
      case Enum$MediaStatus.HIATUS:
        return 'Hiatus';
      default:
        return 'Unknown';
    }
  }
}
