import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:otaku_world/bloc/media_list/media_list/media_list_bloc.dart';
import 'package:otaku_world/bloc/viewer/viewer_bloc.dart';
import 'package:otaku_world/constants/string_constants.dart';
import 'package:otaku_world/core/ui/texts/genre_text.dart';
import 'package:otaku_world/features/media_detail/widgets/status_row.dart';
import 'package:otaku_world/graphql/__generated/graphql/fragments.graphql.dart';

import '../../../config/router/router_constants.dart';
import '../../../features/media_detail/widgets/info_data.dart';
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
      padding: const EdgeInsets.symmetric(
        vertical: 15,
        horizontal: 20,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              _buildMediaPoster(
                media?.coverImage?.extraLarge,
                media!.type!,
              ),
              const SizedBox(height: 10),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    media?.title?.userPreferred ??
                        StringConstants.noTitle,
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                    textAlign: TextAlign.left,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 3,
                  ),
                  const SizedBox(height: 15),
                  InfoData(
                    iconName: Assets.iconsFavourite,
                    separateWidth: 3,
                    info: media!.favourites.toString(),
                    mainAxisAlignment: MainAxisAlignment.center,
                  ),
                  const SizedBox(height: 15),
                  StatusRow(
                    airingSchedule: media!.airingSchedule,
                    status: media!.status,
                    fontSize: 12,
                    alignment: MainAxisAlignment.center,
                  ),
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
            ],
          ),
          _buildButtonOptions(
            screenWidth,
            context,
            media!.id,
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
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Flexible(
          child: PrimaryButton(
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
        ),
        const SizedBox(
          width: 10,
        ),
        Flexible(
          child: PrimaryButton(
            onTap: () => NavigationHelper.goToMediaDetailScreen(
              context: context,
              mediaId: id,
            ),
            label: 'View more',
            fontSize: 14,
            horizontalPadding: 0,
            verticalPadding: 7,
            radius: 8,
            isSmall: true,
          ),
        ),
      ],
    );
  }

  Widget _buildMediaDetails(BuildContext context, Fragment$MediaShort media) {
    String mediaFormatEpChap = '';
    String mediaStartYear = '';
    String mediaStartYearLabel = '';
    if (media.type == Enum$MediaType.MANGA) {
      mediaFormatEpChap = (media.chapters == null)
          ? '${StringConstants.nullStringPlaceHolder}chap'
          : '${media.chapters} chap';

      mediaStartYear =
          (media.startDate == null) ? '?' : '${media.startDate!.year}';
      mediaStartYearLabel = 'start year';
    } else {
      mediaFormatEpChap = (media.episodes == null)
          ? '${StringConstants.nullStringPlaceHolder}ep'
          : '${media.episodes} ep';

      mediaStartYear =
          '${FormattingUtils.getSeasonString(media.season)} ${media.seasonYear ?? StringConstants.nullStringPlaceHolder}';
      mediaStartYearLabel = 'season';
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildMediaDetail(
          context,
          FormattingUtils.getMediaFormatString(media.format),
          mediaFormatEpChap,
        ),
        if (media.meanScore != null) ...[
          SvgPicture.asset(Assets.iconsLineVertical),
          _buildMediaDetail(
            context,
            '${media.meanScore}%',
            'score',
          ),
        ],
        SvgPicture.asset(Assets.iconsLineVertical),
        _buildMediaDetail(
          context,
          mediaStartYear,
          mediaStartYearLabel,
        ),
      ],
    );
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

  Widget _buildMediaPoster(String? imageUrl, Enum$MediaType type) {
    return (imageUrl != null)
        ? Builder(
            builder: (context) {
              final size = MediaQuery.sizeOf(context);
              const designWidth = 210.0;
              const designHeight = 310.0;
              const designAspectRatio = designWidth / designHeight;

              // Assume we want max 60% of width
              final maxWidth = size.width * 0.55;

              // Try expected height using original aspect ratio
              final expectedHeight = maxWidth / designAspectRatio;

              // If expected height is too tall for the screen (e.g., causes overflow),
              // scale the aspect ratio so the height fits
              final maxAllowedHeight = size.height * 0.35; // adjust if needed
              final adjustedHeight = expectedHeight > maxAllowedHeight
                  ? maxAllowedHeight
                  : expectedHeight;

              final adjustedAspectRatio = maxWidth / adjustedHeight;
              return AspectRatio(
                aspectRatio: adjustedAspectRatio,
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
              );
            },
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
