import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:otaku_world/bloc/media_list/media_list/media_list_bloc.dart';
import 'package:otaku_world/bloc/media_list/save_list_entry/save_list_entry_bloc.dart';
import 'package:otaku_world/config/router/router_constants.dart';
import 'package:otaku_world/core/ui/shimmers/detail_screens/shimmer_details.dart';
import 'package:otaku_world/graphql/__generated/graphql/fragments.graphql.dart';
import 'package:otaku_world/graphql/__generated/graphql/schema.graphql.dart';
import 'package:otaku_world/utils/formatting_utils.dart';

import '../../../core/ui/image.dart';
import '../../../core/ui/placeholders/poster_placeholder.dart';

class MediaListCard extends StatelessWidget {
  const MediaListCard({
    super.key,
    required this.entry,
    required this.scoreFormat,
  });

  final Fragment$MediaListEntry? entry;
  final Enum$ScoreFormat scoreFormat;

  @override
  Widget build(BuildContext context) {
    log('Building media list card');
    if (entry == null) return const SizedBox();
    final listEntryBloc = context.read<SaveListEntryBloc>();
    final listBloc = entry?.media?.type == Enum$MediaType.ANIME
        ? context.read<AnimeListBloc>()
        : context.read<MangaListBloc>();

    return GestureDetector(
      onTap: () {
        NavigationHelper.goToMediaDetailScreen(
          context: context,
          mediaId: entry?.mediaId,
        );
      },
      child: Container(
        padding: const EdgeInsets.all(10),
        height: 165,
        margin: const EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: AppColors.secondaryGradient,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.25),
              blurRadius: 4,
              offset: const Offset(0, 4),
            )
          ],
        ),
        child: Row(
          children: [
            SizedBox(
              height: 145,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(
                  entry?.media?.type == Enum$MediaType.ANIME ? 10 : 5,
                ),
                child: AspectRatio(
                  aspectRatio: 85 / 130,
                  child: CImage(
                    imageUrl: entry!.media?.coverImage?.large ?? '',
                    placeholder: (context, url) => _buildPlaceholder(context),
                    errorWidget: (context, url, error) =>
                        _buildPlaceholder(context),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    entry?.media?.title?.userPreferred ?? '',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                          fontFamily: 'Poppins',
                        ),
                  ),
                  Text(
                    '${FormattingUtils.getMediaFormatString(entry?.media?.format)}, '
                    '${FormattingUtils.getMediaStatusString(
                      entry?.media?.status,
                      anime: entry?.media?.type == Enum$MediaType.ANIME,
                    )}',
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                          color: AppColors.white.withValues(alpha: 0.8),
                        ),
                  ),
                  _buildScore(context),
                  const Spacer(),
                  _buildProgress(
                    context,
                    listEntryBloc: listEntryBloc,
                    listBloc: listBloc,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProgress(
    BuildContext context, {
    required SaveListEntryBloc listEntryBloc,
    required MediaListBloc listBloc,
  }) {
    final progress = (entry?.media?.type == Enum$MediaType.ANIME
            ? entry?.progress
            : entry?.progressVolumes) ??
        0;
    final total = entry?.media?.type == Enum$MediaType.ANIME
        ? entry?.media?.episodes
        : entry?.media?.volumes;
    log('Progress: $progress | Total: $total');

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: progress.toString(),
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                          fontFamily: 'Poppins-Medium',
                        ),
                  ),
                  TextSpan(
                    text:
                        ' / ${total ?? '?'} ${entry?.media?.type == Enum$MediaType.ANIME ? 'ep' : 'vol'}',
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                          fontFamily: 'Poppins',
                          color: AppColors.white.withValues(alpha: 0.8),
                        ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                bottom: 5,
              ),
              child: InkWell(
                onTap: () {
                  context.push(RouteConstants.editMediaList, extra: {
                    'options': listBloc.options,
                    'mediaListEntry': entry,
                    'onEdited': (Fragment$MediaListEntry entry) {
                      listBloc.add(UpdateListEntry(entry: entry));
                    },
                    'onDeleted': (int id) {
                      listBloc.add(RemoveListEntry(id: id));
                    },
                  });
                },
                child: SvgPicture.asset(
                  Assets.iconsMediaEdit,
                  width: 25,
                  colorFilter: const ColorFilter.mode(
                    AppColors.sunsetOrange,
                    BlendMode.srcIn,
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: SizedBox(
                height: 20,
                child: LinearProgressIndicator(
                  value: total == null
                      ? (progress == 0 ? 0 : 0.5)
                      : (progress / total),
                  backgroundColor: AppColors.white.withAlpha(175),
                  color: AppColors.congoPink,
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),
            if (total == null ||
                (entry?.status != Enum$MediaListStatus.COMPLETED &&
                    progress < total))
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: InkWell(
                  onTap: () {
                    log('Increment episode');
                    listEntryBloc.add(
                      IncreaseProgressCount(
                        mediaId: entry!.mediaId,
                        type: entry?.media?.type ?? Enum$MediaType.ANIME,
                        progress: entry?.media?.type == Enum$MediaType.ANIME
                            ? (entry?.progress ?? 0)
                            : (entry?.progressVolumes ?? 0),
                      ),
                    );
                  },
                  child: SizedBox(
                    width: 25,
                    height: 25,
                    child: SvgPicture.asset(
                      Assets.iconsAdd2,
                      width: 25,
                    ),
                  ),
                ),
              ),
          ],
        ),
      ],
    );
  }

  Widget _buildScore(BuildContext context) {
    log('Building score: ${entry?.media?.title?.userPreferred} | ${entry?.score}');
    if (scoreFormat == Enum$ScoreFormat.POINT_3) {
      if (entry?.score == null || entry?.score == 0) {
        return const SizedBox();
      }
      final assets = [
        Assets.smileySadOutlined,
        Assets.smileyNormalOutlined,
        Assets.smileyHappyOutlined,
      ];
      final index = entry!.score!.toInt() - 1;
      return SvgPicture.asset(
        assets[index >= assets.length ? assets.length - 1 : index],
        width: 20,
      );
    } else if (scoreFormat == Enum$ScoreFormat.POINT_5) {
      if (entry?.score == null || entry?.score == 0) {
        return const SizedBox();
      }

      return Row(
        children: List.generate(5, (index) {
          return Padding(
            padding: const EdgeInsets.only(right: 2),
            child: SvgPicture.asset(
              Assets.iconsStar,
              width: 20,
              colorFilter: ColorFilter.mode(
                index < entry!.score! ? AppColors.crayola : AppColors.white,
                BlendMode.srcIn,
              ),
            ),
          );
        }),
      );
    } else {
      return Row(
        children: [
          SvgPicture.asset(Assets.iconsStar),
          const SizedBox(width: 5),
          Text(
            (entry?.score ?? 0).toInt().toString(),
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ],
      );
    }
  }

  Widget _buildPlaceholder(BuildContext context) {
    return ClipRRect(
      borderRadius: (entry?.media?.type == Enum$MediaType.ANIME)
          ? BorderRadius.circular(10)
          : BorderRadius.circular(5),
      child: const PosterPlaceholder(),
    );
  }
}
