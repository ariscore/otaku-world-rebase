import 'package:flutter/material.dart';
import 'package:otaku_world/features/profile/widgets/stats/overview/format_distribution_chart.dart';
import 'package:otaku_world/features/profile/widgets/stats/overview/country_distribution_chart.dart';
import 'package:otaku_world/features/profile/widgets/stats/data_section.dart';
import 'package:otaku_world/features/profile/widgets/stats/overview/anime_status_distribution_chart.dart';
import 'package:otaku_world/features/profile/widgets/stats/overview/length_distribution_chart.dart';
import 'package:otaku_world/features/profile/widgets/stats/overview/release_year_distribution_chart.dart';
import 'package:otaku_world/features/profile/widgets/stats/overview/score_distribution_chart.dart';
import 'package:otaku_world/features/profile/widgets/stats/overview/start_year_distribution_chart.dart';
import 'package:otaku_world/graphql/__generated/graphql/schema.graphql.dart';
import 'package:otaku_world/graphql/__generated/graphql/user/user_stats.graphql.dart';
import 'package:otaku_world/utils/formatting_utils.dart';

class AnimeStatsOverview extends StatelessWidget {
  const AnimeStatsOverview({super.key, required this.stats});

  final Fragment$UserStatistics stats;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        children: [
          const SizedBox(height: 10),
          DataSection(
            field1: 'Total Anime',
            value1: stats.count,
            field2: 'Episodes Watched',
            value2: stats.episodesWatched,
            field3: 'Days Watched',
            value3: FormattingUtils.minutesToDays(stats.minutesWatched),
          ),
          const SizedBox(height: 10),
          DataSection(
            field1: 'Days Planned',
            value1: _getPlannedDays(),
            field2: 'Mean Score',
            value2: stats.meanScore,
            field3: 'Standard Deviation',
            value3: stats.standardDeviation,
          ),
          const SizedBox(height: 10),
          AnimeStatusDistributionChart(statuses: stats.statuses),
          const SizedBox(height: 10),
          FormatDistributionChart(
            formats: stats.formats,
            type: Enum$MediaType.ANIME,
          ),
          const SizedBox(height: 10),
          CountryDistributionChart(
            countries: stats.countries,
            type: Enum$MediaType.ANIME,
          ),
          const SizedBox(height: 10),
          ReleaseYearDistributionChart(
            releaseYears: stats.releaseYears,
            type: Enum$MediaType.ANIME,
          ),
          const SizedBox(height: 10),
          StartYearDistributionChart(
            startYears: stats.startYears,
            type: Enum$MediaType.ANIME,
          ),
          const SizedBox(height: 10),
          ScoreDistributionChart(
            scores: stats.scores,
            type: Enum$MediaType.ANIME,
          ),
          const SizedBox(height: 10),
          LengthDistributionChart(
            lengths: stats.lengths,
            type: Enum$MediaType.ANIME,
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  String _getPlannedDays() {
    final planningStatus = stats.statuses?.where(
      (e) => e?.status == Enum$MediaListStatus.PLANNING,
    );
    if (planningStatus?.isEmpty ?? true) {
      return '0';
    } else {
      return FormattingUtils.minutesToDays(
        planningStatus!.first!.minutesWatched,
      );
    }
  }
}
