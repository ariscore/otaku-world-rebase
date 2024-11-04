import 'package:flutter/cupertino.dart';
import 'package:otaku_world/features/profile/widgets/stats/anime_format_distribution_chart.dart';
import 'package:otaku_world/features/profile/widgets/stats/length_distribution_chart.dart';
import 'package:otaku_world/features/profile/widgets/stats/manga_status_distribution_chart.dart';
import 'package:otaku_world/features/profile/widgets/stats/release_year_distribution_chart.dart';
import 'package:otaku_world/features/profile/widgets/stats/score_distribution_chart.dart';
import 'package:otaku_world/features/profile/widgets/stats/start_year_distribution_chart.dart';
import 'package:otaku_world/graphql/__generated/graphql/user/user_stats.graphql.dart';

import '../../../../graphql/__generated/graphql/schema.graphql.dart';
import 'country_distribution_chart.dart';
import 'data_section.dart';

class MangaStatsOverview extends StatelessWidget {
  const MangaStatsOverview({super.key, required this.stats});

  final Fragment$UserStatistics stats;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        children: [
          const SizedBox(height: 10),
          DataSection(
            field1: 'Total Manga',
            value1: stats.count,
            field2: 'Chapters Read',
            value2: stats.episodesWatched,
            field3: 'Volumes Read',
            value3: stats.volumesRead,
          ),
          const SizedBox(height: 10),
          DataSection(
            field1: 'Chapters Planned',
            value1: _getPlannedChapters(),
            field2: 'Mean Score',
            value2: stats.meanScore,
            field3: 'Standard Deviation',
            value3: stats.standardDeviation,
          ),
          const SizedBox(height: 10),
          MangaStatusDistributionChart(statuses: stats.statuses),
          const SizedBox(height: 10),
          FormatDistributionChart(formats: stats.formats),
          const SizedBox(height: 10),
          CountryDistributionChart(countries: stats.countries),
          const SizedBox(height: 10),
          ReleaseYearDistributionChart(
            releaseYears: stats.releaseYears,
            type: Enum$MediaType.MANGA,
          ),
          const SizedBox(height: 10),
          StartYearDistributionChart(
            startYears: stats.startYears,
            type: Enum$MediaType.MANGA,
          ),
          const SizedBox(height: 10),
          ScoreDistributionChart(
            scores: stats.scores,
            type: Enum$MediaType.MANGA,
          ),
          const SizedBox(height: 10),
          LengthDistributionChart(
            lengths: stats.lengths,
            type: Enum$MediaType.MANGA,
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  String _getPlannedChapters() {
    final planningStatus = stats.statuses?.where(
      (e) => e?.status == Enum$MediaListStatus.PLANNING,
    );
    if (planningStatus?.isEmpty ?? true) {
      return '0';
    } else {
      return planningStatus!.first!.chaptersRead.toString();
    }
  }
}
