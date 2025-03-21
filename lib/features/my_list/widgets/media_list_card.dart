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
      margin: const EdgeInsets.only(
        bottom: 10,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: AppColors.secondaryGradient,
      ),
      child: Row(
        children: [
          SizedBox(
            width: 85,
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
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width - 140,
                child: Text(
                  entry?.media?.title?.userPreferred ?? '',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                        fontFamily: 'Poppins',
                      ),
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
              _buildProgress(context),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildProgress(BuildContext context) {
    final progress = entry?.progress ?? 0;
    final total = entry?.media?.type == Enum$MediaType.ANIME ? entry?.media?.episodes : entry?.media?.volumes;

    final progressBarWidth = MediaQuery.of(context).size.width - 180;

    return SizedBox(
      width: MediaQuery.of(context).size.width - 140,
      child: Column(
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
                      style:
                          Theme.of(context).textTheme.headlineSmall?.copyWith(
                                fontFamily: 'Poppins-Medium',
                              ),
                    ),
                    TextSpan(
                      text: ' / ${total ?? '?'} ep',
                      style:
                          Theme.of(context).textTheme.headlineSmall?.copyWith(
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
              Container(
                alignment: Alignment.centerLeft,
                width: progressBarWidth,
                height: 25,
                padding: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                  color: AppColors.white.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Container(
                  width: (total == null ? 0.5 : progress / total) * progressBarWidth,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    gradient: LinearGradient(
                      colors: [
                        AppColors.white.withOpacity(0.8),
                        AppColors.sunsetOrange,
                      ],
                    ),
                    color: AppColors.sunsetOrange,
                  ),
                ),
              ),
              const SizedBox(width: 10),
              InkWell(
                onTap: () {
                  log('Add');
                },
                child: SvgPicture.asset(
                  Assets.iconsAdd,
                  width: 25,
                ),
              ),
            ],
          ),
        ],
      ),
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
