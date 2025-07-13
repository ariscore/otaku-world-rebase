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
    return GestureDetector(
      onTap: () => NavigationHelper.goToMediaDetailScreen(
        context: context,
        mediaId: media!.id,
      ),
      child: Container(
        padding: const EdgeInsets.all(10),
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
        child: Row(
          children: [
            MediaPoster(
              imageUrl: media!.coverImage?.large,
              type: media!.type!,
            ),
            const SizedBox(
              width: 10,
            ),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                        child: Text(
                          media?.title?.userPreferred ?? 'No title',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context)
                              .textTheme
                              .headlineMedium
                              ?.copyWith(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w700,
                              ),
                        ),
                      ),
                      Text(
                        "#$index",
                        style:
                            Theme.of(context).textTheme.displayMedium!.copyWith(
                                  fontFamily: 'Roboto-Condensed',
                                  fontWeight: FontWeight.bold,
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
              color: AppColors.white.withValues(alpha: 0.7),
              fontWeight: FontWeight.w500,
              fontFamily: 'Poppins',
            ),
      ));

      if (i < 2) {
        textSpans.add(
          TextSpan(
            text: ' | ',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: AppColors.white.withValues(alpha: 0.7),
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Poppins',
                ),
          ),
        );
      }
    }

    return RichText(
      text: TextSpan(
        children: textSpans,
      ),
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
      textAlign: TextAlign.start,
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
    List<InlineSpan> textSpans = [];

    bool isManga = media.type == Enum$MediaType.MANGA;

    textSpans.add(
      TextSpan(
        text: FormattingUtils.getMediaFormatString(
          media.format ?? Enum$MediaFormat.$unknown,
        ),
      ),
    );
    if (media.episodes != null) {
      textSpans.add(
        TextSpan(
          text: ', Episodes ${media.episodes}',
        ),
      );
    }

    if (media.chapters != null && isManga) {
      textSpans.add(
        TextSpan(
          text: ', Chapters ${media.chapters}',
        ),
      );
    }

    String text = '';
    if (media.season != null) {
      text += ', ${FormattingUtils.getSeasonString(media.season)}';
    }
    if (media.seasonYear != null) {
      text += ' ${media.seasonYear}';
    }
    if (isManga) {
      if (media.startDate?.year != null) {
        text += ', ${media.startDate!.year}';
      }
      if (media.endDate?.year != null) {
        text += ' - ${media.endDate!.year}';
      }
    }
    if (text.isNotEmpty) {
      textSpans.add(
        TextSpan(
          text: text,
        ),
      );
    }

    textSpans.add(
      TextSpan(
        text: ', ${FormattingUtils.getMediaStatusString(
          media.status,
          anime: !isManga,
        )}',
      ),
    );

    return RichText(
      text: TextSpan(
        children: textSpans,
        style: Theme.of(context).textTheme.titleMedium?.copyWith(
              color: AppColors.white,
              fontWeight: FontWeight.bold,
              fontFamily: 'Poppins',
            ),
      ),
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    );
  }
}
