import 'package:flutter/material.dart';
import 'package:otaku_world/core/ui/appbars/simple_app_bar.dart';
import 'package:otaku_world/graphql/__generated/graphql/schema.graphql.dart';
import 'package:otaku_world/graphql/__generated/graphql/user/user_stats.graphql.dart';
import 'package:otaku_world/utils/extensions.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../../theme/colors.dart';

class StatusDistributionScreen extends StatelessWidget {
  const StatusDistributionScreen({
    super.key,
    required this.statuses,
    required this.type,
  });

  final List<Fragment$UserStatistics$statuses?> statuses;
  final Enum$MediaType type;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SimpleAppBar(title: 'Status Distribution'),
      body: ListView(
        children: [
          SizedBox(
            width: 300,
            height: 300,
            child: SfCircularChart(
              tooltipBehavior: TooltipBehavior(enable: true),
              series: <CircularSeries<Fragment$UserStatistics$statuses?,
                  String>>[
                PieSeries<Fragment$UserStatistics$statuses?, String>(
                  dataLabelMapper: (datum, index) =>
                      datum!.status!.displayTitle(Enum$MediaType.ANIME),
                  strokeColor: AppColors.raisinBlack,
                  strokeWidth: 3,
                  radius: "100%",
                  explode: true,
                  pointColorMapper: (data, index) => data!.status!.toColor,
                  dataSource: statuses,
                  xValueMapper: (data, index) =>
                      data!.status!.displayTitle(Enum$MediaType.ANIME),
                  yValueMapper: (data, _) => data?.count ?? 0,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
