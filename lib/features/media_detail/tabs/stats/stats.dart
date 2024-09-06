import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:otaku_world/features/media_detail/tabs/stats/widgets/performance_widget.dart';
import 'package:otaku_world/features/media_detail/tabs/stats/widgets/rankings_item.dart';
import 'package:otaku_world/features/media_detail/tabs/stats/widgets/score_distribution_widget.dart';
import 'package:otaku_world/features/media_detail/tabs/stats/widgets/stats_title.dart';
import 'package:otaku_world/features/media_detail/tabs/stats/widgets/status_distribution_widget.dart';
import 'package:otaku_world/graphql/__generated/graphql/schema.graphql.dart';
import 'package:otaku_world/utils/extensions.dart';

import '../../../../bloc/media_detail/media_detail_bloc.dart';

extension StringExtension on String {
  String checkIfNullForPr() {
    return this == 'null' ? "" : "$this%";
  }
}

class Stats extends StatelessWidget {
  const Stats({super.key});

  @override
  Widget build(BuildContext context) {
    final media =
        (context.read<MediaDetailBloc>().state as MediaDetailLoaded).media;
    return ListView(
      key: const PageStorageKey<String>('Stats'),
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      children: [
        const SizedBox20(),
        const StatsTitle(title: "Performance"),
        const SizedBox10(),
        PerformanceWidget(
          average: media.averageScore.toString().checkIfNullForPr(),
          mean: media.meanScore.toString().checkIfNullForPr(),
          popularity: media.popularity.toString().checkIfNullReturnsEmpty(),
          favorites: media.favourites.toString().checkIfNullReturnsEmpty(),
        ),
        if (media.rankings != null && media.rankings!.isNotEmpty) ...[
          const SizedBox20(),
          const StatsTitle(title: "Rankings"),
          const SizedBox10(),
          ListView.separated(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: media.rankings!.length,
            itemBuilder: (context, index) {
              return RankingsItem(ranking: media.rankings![index]!);
            },
            separatorBuilder: (context, index) => const SizedBox10(),
          ),
        ],
        if (media.stats?.statusDistribution != null &&
            media.stats!.statusDistribution!.isNotEmpty) ...[
          const SizedBox20(),
          const StatsTitle(title: "Status Distribution"),
          const SizedBox10(),
          StatusDistributionWidget(
            statusDistribution: media.stats!.statusDistribution,
            type: media.type ?? Enum$MediaType.$unknown,
          ),
        ],
        if (media.stats?.scoreDistribution != null &&
            media.stats!.scoreDistribution!.isNotEmpty) ...[
          const SizedBox20(),
          const StatsTitle(title: "Score Distribution"),
          const SizedBox10(),
          ScoreDistributionWidget(
            scoreDistribution: media.stats!.scoreDistribution,
          ),
          const SizedBox20(),
        ],
      ],
    );
  }
}

class SizedBox20 extends StatelessWidget {
  const SizedBox20({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 20,
    );
  }
}

class SizedBox10 extends StatelessWidget {
  const SizedBox10({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 10,
    );
  }
}
