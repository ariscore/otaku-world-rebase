import 'package:flutter/material.dart';
import 'package:otaku_world/graphql/__generated/graphql/schema.graphql.dart';
import 'package:otaku_world/utils/extensions.dart';

import '../../../generated/assets.dart';
import '../../../theme/colors.dart';
import '../../../utils/formatting_utils.dart';
import 'info_data.dart';

class InfoColumn extends StatelessWidget {
  const InfoColumn({
    super.key,
    required this.averageScore,
    required this.favourites,
    required this.popularity,
    required this.startDate,
    required this.episodes,
    required this.duration,
    required this.format,
    required this.mediaType,
    this.chapters,
    this.volumes,
  });

  final String averageScore;
  final String favourites;
  final String popularity;
  final String startDate;
  final String? episodes;
  final String duration;
  final Enum$MediaFormat? format;
  final Enum$MediaType mediaType;
  final String? chapters;
  final String? volumes;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          'Score',
          style: Theme.of(context).textTheme.bodySmall,
        ),
        InfoData(
          iconName: Assets.iconsStar,
          separateWidth: 2,
          info: averageScore.checkIfNull(),
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          'Favorites',
          style: Theme.of(context).textTheme.bodySmall,
        ),
        InfoData(
          iconName: Assets.iconsFavourite,
          separateWidth: 3,
          info: favourites,
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          'Popularity',
          style: Theme.of(context).textTheme.bodySmall,
        ),
        InfoData(
          iconName: Assets.iconsTrendUp,
          separateWidth: 3,
          info: popularity,
        ),
        const SizedBox(
          height: 15,
        ),
        if (startDate != 'null' || startDate != '')
          Text(
            startDate,
            style: const TextStyle(
              fontSize: 14,
              color: AppColors.white,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500,
            ),
          ),
        Text(
          FormattingUtils.getMediaFormatString(
            format ?? Enum$MediaFormat.$unknown,
          ),
          style: const TextStyle(
            fontSize: 14,
            color: AppColors.white,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w100,
          ),
        ),
        if (mediaType == Enum$MediaType.ANIME)
          Text(
            (episodes == "null" ? "" : "$episodes ep") +
                ((episodes != "null" && duration != "null") ? ", " : "") +
                (duration == "null" ? "" : "$duration min"),
            style: const TextStyle(
              fontSize: 14,
              color: AppColors.white,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w100,
            ),
          ),
        if (mediaType == Enum$MediaType.MANGA)
          Text(
            (chapters == "null" ? "" : "$chapters Chap") +
                (chapters != "null" && volumes != "null" ? ", " : "") +
                (volumes == "null" ? "" : "$volumes Vol"),
            style: const TextStyle(
              fontSize: 14,
              color: AppColors.white,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w100,
            ),
          ),
      ],
    );
  }
}
// $episodes == "null" ? '-' : media.episodes.toString()} ep, ${media.duration.toString()} min
