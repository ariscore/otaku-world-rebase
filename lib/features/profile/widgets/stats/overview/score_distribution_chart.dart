import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:otaku_world/config/router/router_constants.dart';
import 'package:otaku_world/graphql/__generated/graphql/schema.graphql.dart';
import 'package:otaku_world/graphql/__generated/graphql/user/user_stats.graphql.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../../../constants/filter_constants.dart';
import '../../../../../core/ui/filters/custom_dropdown.dart';
import '../../../../../generated/assets.dart';
import '../../../../../theme/colors.dart';
import '../../../../../utils/formatting_utils.dart';

class ScoreDistributionChart extends StatefulWidget {
  const ScoreDistributionChart({
    super.key,
    required this.scores,
    required this.type,
  });

  final List<Fragment$UserStatistics$scores?>? scores;
  final Enum$MediaType type;

  @override
  State<ScoreDistributionChart> createState() => _ScoreDistributionChartState();
}

class _ScoreDistributionChartState extends State<ScoreDistributionChart> {
  late String option;

  @override
  void initState() {
    option = widget.type == Enum$MediaType.ANIME
        ? FilterConstants.scoreDistOptionsAnime[0]
        : FilterConstants.scoreDistOptionsManga[0];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width - 20;
    final width = widget.scores!.length * 30;

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Score Distribution',
                style: Theme.of(context).textTheme.displayMedium?.copyWith(
                      fontFamily: 'Roboto-Medium',
                    ),
              ),
              IconButton(
                onPressed: () {
                  context.push(
                    '${RouteConstants.scoreDistribution}?type=${widget.type == Enum$MediaType.ANIME ? 'anime' : 'manga'}',
                    extra: widget.scores,
                  );
                },
                icon: SvgPicture.asset(
                  Assets.iconsArrowRight,
                ),
              ),
            ],
          ),
        ),
        CustomDropdown(
          dropdownItems: widget.type == Enum$MediaType.ANIME
              ? FilterConstants.scoreDistOptionsAnime
              : FilterConstants.scoreDistOptionsManga,
          initialValue: option,
          onChange: (value) {
            setState(() {
              option = value;
            });
          },
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Container(
            width: max(screenWidth, width.toDouble()),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              gradient: AppColors.chartGradient,
            ),
            child: SfCartesianChart(
              key: UniqueKey(),
              tooltipBehavior: TooltipBehavior(enable: true, header: 'Score'),
              plotAreaBorderWidth: 0,
              primaryXAxis: const CategoryAxis(
                majorGridLines: MajorGridLines(width: 0),
                axisLine: AxisLine(width: 0.5),
                majorTickLines: MajorTickLines(size: 0),
                labelStyle: TextStyle(color: Colors.white),
                arrangeByIndex: true,
                interval: 1,
              ),
              primaryYAxis: const NumericAxis(
                isVisible: false,
                majorGridLines: MajorGridLines(width: 0),
              ),
              series: <ColumnSeries<Fragment$UserStatistics$scores?, int>>[
                ColumnSeries<Fragment$UserStatistics$scores?, int>(
                  sortingOrder: SortingOrder.ascending,
                  enableTooltip: true,
                  dataSource: widget.scores!,
                  xValueMapper: (data, _) => data!.score,
                  yValueMapper: _mapYValue,
                  sortFieldValueMapper: (datum, index) => datum?.score,
                  gradient: AppColors.primaryGradient,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(6),
                    topRight: Radius.circular(6),
                  ),
                  width: 0.5,
                  borderWidth: 0,
                  // Ensure no border around the bars
                  dataLabelSettings: const DataLabelSettings(
                    isVisible: true,
                    textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      overflow: TextOverflow.ellipsis,
                    ),
                    labelAlignment: ChartDataLabelAlignment.outer,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  num? _mapYValue(Fragment$UserStatistics$scores? data, int index) {
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
