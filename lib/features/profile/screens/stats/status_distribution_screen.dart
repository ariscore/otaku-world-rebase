import 'package:flutter/material.dart';
import 'package:otaku_world/core/ui/appbars/simple_app_bar.dart';
import 'package:otaku_world/features/profile/widgets/stats/chart_data_section.dart';
import 'package:otaku_world/graphql/__generated/graphql/schema.graphql.dart';
import 'package:otaku_world/graphql/__generated/graphql/user/user_stats.graphql.dart';
import 'package:otaku_world/utils/extensions.dart';
import 'package:otaku_world/utils/formatting_utils.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../../constants/filter_constants.dart';
import '../../../../core/ui/filters/custom_dropdown.dart';
import '../../../../theme/colors.dart';

class StatusDistributionScreen extends StatefulWidget {
  const StatusDistributionScreen({
    super.key,
    required this.statuses,
    required this.type,
  });

  final List<Fragment$UserStatistics$statuses?> statuses;
  final Enum$MediaType type;

  @override
  State<StatusDistributionScreen> createState() =>
      _StatusDistributionScreenState();
}

class _StatusDistributionScreenState extends State<StatusDistributionScreen> {
  late String option;

  @override
  void initState() {
    option = widget.type == Enum$MediaType.ANIME
        ? FilterConstants.lengthDistOptionsAnime[0]
        : FilterConstants.lengthDistOptionsManga[0];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const SimpleAppBar(title: 'Status Distribution'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: CustomDropdown(
                dropdownItems: widget.type == Enum$MediaType.ANIME
                    ? FilterConstants.lengthDistOptionsAnime
                    : FilterConstants.lengthDistOptionsManga,
                initialValue: option,
                onChange: (value) {
                  setState(() {
                    option = value;
                  });
                },
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: 300,
              height: 300,
              child: SfCircularChart(
                key: UniqueKey(),
                tooltipBehavior: TooltipBehavior(enable: true),
                series: <CircularSeries<Fragment$UserStatistics$statuses?,
                    String>>[
                  PieSeries<Fragment$UserStatistics$statuses?, String>(
                    animationDuration: 1000,
                    dataLabelMapper: (datum, index) =>
                        datum!.status!.displayTitle(widget.type),
                    strokeColor: AppColors.raisinBlack,
                    strokeWidth: 3,
                    radius: "100%",
                    explode: true,
                    pointColorMapper: (data, index) => data!.status!.toColor,
                    dataSource: widget.statuses,
                    xValueMapper: (data, index) =>
                        data!.status!.displayTitle(widget.type),
                    yValueMapper: _mapYValue,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: widget.statuses.length,
              itemBuilder: (context, index) {
                final status = widget.statuses[index];
                if (status == null) return const SizedBox();
                return ChartDataSection(
                  title: status.status?.displayTitle(widget.type) ?? '',
                  color: status.status?.toColor,
                  value1: status.count,
                  field2: widget.type == Enum$MediaType.ANIME
                      ? 'Time Watched'
                      : 'Chapters Read',
                  value2: widget.type == Enum$MediaType.ANIME
                      ? '${FormattingUtils.minutesToHours(status.minutesWatched)} Hours'
                      : status.chaptersRead,
                  value3: status.meanScore,
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  num? _mapYValue(Fragment$UserStatistics$statuses? data, int index) {
    switch (option) {
      case 'Titles Watched' || 'Titles Read':
        return data?.count;
      case 'Hours Watched':
        return int.parse(
          FormattingUtils.minutesToHours(data?.minutesWatched ?? 0),
        );
      case 'Mean Score':
        return data?.meanScore;
      case 'Chapters Read':
        return data?.chaptersRead;
      default:
        return data?.count;
    }
  }
}
