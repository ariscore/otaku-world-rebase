import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:otaku_world/bloc/media_list/media_list/media_list_bloc.dart';
import 'package:otaku_world/bloc/viewer/viewer_bloc.dart';
import 'package:otaku_world/core/ui/texts/genre_text.dart';
import 'package:otaku_world/graphql/__generated/graphql/fragments.graphql.dart';

import '../../../config/router/router_constants.dart';
import '../../../generated/assets.dart';
import '../../../graphql/__generated/graphql/schema.graphql.dart';
import '../../../services/caching/image_cache_manager.dart';
import '../../../theme/colors.dart';
import '../../../utils/formatting_utils.dart';
import '../../../utils/navigation_helper.dart';
import '../../../utils/ui_utils.dart';
import '../buttons/primary_button.dart';
import '../placeholders/poster_placeholder.dart';

class MediaCarouselCard extends StatelessWidget {
  const MediaCarouselCard({
    super.key,
    required this.width,
    required this.screenWidth,
    required this.color,
    required this.media,
    required this.mediaListEntry,
    required this.onListEntryUpdated,
    required this.onListEntryDeleted,
  });

  final double width;
  final double screenWidth;
  final Color color;
  final Fragment$MediaShort? media;
  final Fragment$MediaListEntry? mediaListEntry;
  final void Function(Fragment$MediaListEntry entry) onListEntryUpdated;
  final void Function(int id) onListEntryDeleted;

  @override
  Widget build(BuildContext context) {
    if (media == null) return const SizedBox();

    return Container(
      width: width,
      // height: 650,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: media!.type == Enum$MediaType.ANIME
              ? BorderRadius.circular(20)
              : BorderRadius.circular(15),
        ),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [color, AppColors.japaneseIndigo],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 15,
                  horizontal: 20,
                ),
                child: _buildMediaPoster(
                  media?.coverImage?.extraLarge,
                  media!.type!,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      media!.title!.userPreferred!,
                      style:
                          Theme.of(context).textTheme.headlineMedium?.copyWith(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                              ),
                      textAlign: TextAlign.left,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 3,
                    ),
                    const SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(Assets.iconsFavourite),
                        const SizedBox(
                          width: 3,
                        ),
                        Text(
                          media!.favourites == null
                              ? '0'
                              : media!.favourites.toString(),
                          style: Theme.of(context)
                              .textTheme
                              .headlineMedium
                              ?.copyWith(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                              ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    _buildStatusRow(context, media!),
                    const SizedBox(height: 15),
                    GenreText(
                      genres: media!.genres,
                      genreStyle:
                          Theme.of(context).textTheme.titleLarge?.copyWith(
                                color: AppColors.white.withValues(alpha: 0.7),
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Poppins',
                              ),
                      indicatorStyle:
                          Theme.of(context).textTheme.titleLarge?.copyWith(
                                color: AppColors.sunsetOrange,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Poppins',
                              ),
                    ),
                    const SizedBox(height: 20),
                    _buildMediaDetails(context, media!),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 12),
            child: _buildButtonOptions(
              screenWidth,
              context,
              media!.id,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildButtonOptions(double screenWidth, BuildContext context, int id) {
    final label = mediaListEntry == null ? 'Add to List' : 'Edit List';
    final options = context.read<ViewerBloc>().getUser().mediaListOptions;
    final listBloc = media?.type == Enum$MediaType.MANGA
        ? context.read<MangaListBloc>()
        : context.read<AnimeListBloc>();

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        PrimaryButton(
          onTap: () {
            context.push(RouteConstants.editMediaList, extra: {
              'media': Fragment$ListEntryMedia(
                id: media?.id ?? 0,
                title: Fragment$ListEntryMedia$title(
                  userPreferred: media?.title?.userPreferred ?? '',
                  english: media?.title?.english ?? '',
                  romaji: media?.title?.romaji ?? '',
                  native: media?.title?.native ?? '',
                ),
                format: media?.format,
                type: media?.type,
                episodes: media?.episodes ?? 0,
                chapters: media?.chapters ?? 0,
                volumes: media?.volumes ?? 0,
              ),
              'options': options,
              'mediaListEntry': media?.mediaListEntry,
              // 'mediaListEntry': bloc.isDeletedEntry ? null : entry,
              'onEdited': (entry) {
                log('edited: $entry');
                // bloc.add(UpdateDetailListEntry(entry: entry));
                onListEntryUpdated(entry);
                listBloc.add(UpdateListEntry(entry: entry));
              },
              'onDeleted': (id) {
                log('Deleted: $id');
                // bloc.add(RemoveListEntryFromMedia(id: id));
                onListEntryDeleted(id);
                listBloc.add(RemoveListEntry(id: id));
              },
            });
          },
          label: label,
          color: AppColors.darkCharcoal,
          width: UIUtils.getWidgetWidth(
            targetWidgetWidth: 100,
            screenWidth: screenWidth,
          ),
          fontSize: 14,
          horizontalPadding: 0,
          verticalPadding: 7,
          radius: 8,
          isSmall: true,
        ),
        PrimaryButton(
          onTap: () => NavigationHelper.goToMediaDetailScreen(
            context: context,
            mediaId: id,
          ),
          label: 'View more',
          width: UIUtils.getWidgetWidth(
            targetWidgetWidth: 100,
            screenWidth: screenWidth,
          ),
          fontSize: 14,
          horizontalPadding: 0,
          verticalPadding: 7,
          radius: 8,
          isSmall: true,
        ),
      ],
    );
  }

  Widget _buildMediaDetails(BuildContext context, Fragment$MediaShort media) {
    if (media.type == Enum$MediaType.ANIME) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildMediaDetail(
            context,
            FormattingUtils.getMediaFormatString(
                media.format ?? Enum$MediaFormat.$unknown),
            (media.episodes == null) ? '? ep' : '${media.episodes} ep',
          ),
          SvgPicture.asset(Assets.iconsLineVertical),
          _buildMediaDetail(
            context,
            '${media.meanScore}%',
            'score',
          ),
          SvgPicture.asset(Assets.iconsLineVertical),
          _buildMediaDetail(
            context,
            '${FormattingUtils.getSeasonString(media.season)} ${media.seasonYear}',
            'season',
          ),
        ],
      );
    } else if (media.type == Enum$MediaType.MANGA) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildMediaDetail(
            context,
            FormattingUtils.getMediaFormatString(media.format!),
            (media.chapters == null) ? '? chap' : '${media.chapters} chap',
          ),
          SvgPicture.asset(Assets.iconsLineVertical),
          _buildMediaDetail(
            context,
            '${media.meanScore}%',
            'score',
          ),
          SvgPicture.asset(Assets.iconsLineVertical),
          _buildMediaDetail(
            context,
            (media.startDate == null) ? '?' : '${media.startDate!.year}',
            'start year',
          ),
        ],
      );
    }

    return const SizedBox();
  }

  Widget _buildMediaDetail(BuildContext context, String text, String subtext) {
    return Column(
      children: [
        Text(
          text,
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
              ),
        ),
        Text(
          subtext,
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
                color: AppColors.white.withValues(alpha: 0.5),
              ),
        ),
      ],
    );
  }

  Widget _buildStatusRow(BuildContext context, Fragment$MediaShort media) {
    if (media.airingSchedule?.nodes == null) {
      return getStatus(context, media.status);
    }

    if (media.airingSchedule!.nodes!.isNotEmpty) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          getStatus(context, media.status),
          const SizedBox(width: 20),
          Text(
            "Ep. ${media.airingSchedule!.nodes![0]!.episode}: ${FormattingUtils.formatDurationFromSeconds(media.airingSchedule!.nodes![0]!.timeUntilAiring)}",
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                ),
          ),
        ],
      );
    } else {
      return getStatus(context, media.status);
    }
  }

  Text getStatus(BuildContext context, Enum$MediaStatus? status) {
    TextStyle? style = Theme.of(context).textTheme.titleLarge?.copyWith(
          fontFamily: 'Poppins',
        );

    if (status == null) {
      return Text(
        'Unknown',
        style: style?.copyWith(
          color: AppColors.bronze,
        ),
      );
    }

    switch (status) {
      case Enum$MediaStatus.RELEASING:
        return Text(
          'Airing',
          style: style?.copyWith(
            color: AppColors.kiwi,
          ),
        );
      case Enum$MediaStatus.FINISHED:
        return Text(
          'Finished',
          style: style?.copyWith(
            color: AppColors.crayola,
          ),
        );
      case Enum$MediaStatus.NOT_YET_RELEASED:
        return Text(
          'Not yet Released',
          style: style?.copyWith(
            color: AppColors.chineseWhite,
          ),
        );
      case Enum$MediaStatus.CANCELLED:
        return Text(
          'Cancelled',
          style: style?.copyWith(
            color: AppColors.maxRed,
          ),
        );
      case Enum$MediaStatus.HIATUS:
        return Text(
          'Hiatus',
          style: style?.copyWith(
            color: AppColors.silver,
          ),
        );
      default:
        return Text(
          'Unknown',
          style: style?.copyWith(
            color: AppColors.lightSilver,
          ),
        );
    }
  }

  Widget _buildMediaPoster(String? imageUrl, Enum$MediaType type) {
    return (imageUrl != null)
        ? AspectRatio(
            aspectRatio: 21 / 30,
            child: CachedNetworkImage(
              cacheManager: ImageCacheManager.instance,
              imageUrl: imageUrl,
              fit: BoxFit.fill,
              imageBuilder: (context, imageProvider) {
                return ClipRRect(
                  borderRadius: (type == Enum$MediaType.ANIME)
                      ? BorderRadius.circular(12)
                      : BorderRadius.circular(5),
                  child: Image(
                    image: imageProvider,
                    fit: BoxFit.fill,
                  ),
                );
              },
              placeholder: (context, url) {
                return _buildPlaceholderImage210x310(type);
              },
            ),
          )
        : _buildPlaceholderImage210x310(type);
  }

  Widget _buildPlaceholderImage210x310(Enum$MediaType type) {
    return ClipRRect(
      borderRadius: (type == Enum$MediaType.ANIME)
          ? BorderRadius.circular(15)
          : BorderRadius.circular(5),
      child: const PosterPlaceholder(size: 100),
    );
  }
}
