import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:otaku_world/graphql/__generated/graphql/fragments.graphql.dart';
import 'package:otaku_world/graphql/__generated/graphql/schema.graphql.dart';
import 'package:otaku_world/utils/formatting_utils.dart';

import '../../../core/ui/image.dart';
import '../../../core/ui/placeholders/poster_placeholder.dart';
import '../../../generated/assets.dart';
import '../../../theme/colors.dart';

class MediaListCard extends StatelessWidget {
  const MediaListCard({super.key, required this.entry});

  final Fragment$MediaListEntry? entry;

  @override
  Widget build(BuildContext context) {
    if (entry == null) return const SizedBox();

    return Container(
      padding: const EdgeInsets.all(10),
      // width: MediaQuery.of(context).size.width - 20,
      height: 165,
      margin: const EdgeInsets.only(
        bottom: 10,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        gradient: AppColors.secondaryGradient,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.25),
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
                  '${FormattingUtils.getMediaStatusString(entry?.media?.status)}',
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                        color: AppColors.white.withOpacity(0.8),
                      ),
                ),
                _buildScore(context),
                const Spacer(),
                _buildProgress(context),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProgress(BuildContext context) {
    final progress = entry?.progress ?? 0;
    final total = entry?.media?.type == Enum$MediaType.ANIME
        ? entry?.media?.episodes
        : entry?.media?.volumes;

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
                    text: ' / ${total ?? '?'} ep',
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                          fontFamily: 'Poppins',
                          color: AppColors.white.withOpacity(0.8),
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
                  log('Edit');
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
            const SizedBox(width: 10),
            InkWell(
              onTap: () {
                log('Add');
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
          ],
        ),
      ],
    );
  }

  Widget _buildScore(BuildContext context) {
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

  Widget _buildPlaceholder(BuildContext context) {
    return ClipRRect(
      borderRadius: (entry?.media?.type == Enum$MediaType.ANIME)
          ? BorderRadius.circular(10)
          : BorderRadius.circular(5),
      child: const PosterPlaceholder(),
    );
  }
}
