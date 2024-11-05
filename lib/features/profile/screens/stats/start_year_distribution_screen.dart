import 'dart:math';

import 'package:flutter/material.dart';
import 'package:otaku_world/core/ui/appbars/simple_app_bar.dart';
import 'package:otaku_world/features/profile/widgets/stats/chart_data_section.dart';
import 'package:otaku_world/graphql/__generated/graphql/schema.graphql.dart';
import 'package:otaku_world/graphql/__generated/graphql/user/user_stats.graphql.dart';
import 'package:otaku_world/utils/formatting_utils.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../../constants/filter_constants.dart';
import '../../../../core/ui/filters/custom_dropdown.dart';
import '../../../../theme/colors.dart';

class StartYearDistributionScreen extends StatefulWidget {
  const StartYearDistributionScreen({
    super.key,
    required this.startYears,
    required this.type,
  });

  final List<Fragment$UserStatistics$startYears?>? startYears;
  final Enum$MediaType type;

  @override
  State<StartYearDistributionScreen> createState() =>
      _StartYearDistributionScreenState();
}

class _StartYearDistributionScreenState
    extends State<StartYearDistributionScreen> {
  late String option;
  late List<Fragment$UserStatistics$startYears?>? sortedYears;

  @override
  void initState() {
    option = widget.type == Enum$MediaType.ANIME
        ? FilterConstants.lengthDistOptionsAnime[0]
        : FilterConstants.lengthDistOptionsManga[0];
    sortedYears = widget.startYears
      ?..sort(
            (a, b) =>
        b?.startYear?.compareTo(
          a?.startYear ?? 0,
        ) ??
            0,
      );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width - 20;
    final width = widget.startYears!.length * 50;

    return Scaffold(
      appBar: const SimpleAppBar(title: 'Start Year Distribution'),
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                clipBehavior: Clip.none,
                child: Container(
                  width: max(width.toDouble(), screenWidth),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    gradient: AppColors.chartGradient,
                  ),
                  child: SfCartesianChart(
                    key: UniqueKey(),
                    // margin: const EdgeInsets.all(15),
                    plotAreaBorderColor: Colors.transparent,
                    tooltipBehavior: TooltipBehavior(
                      enable: true,
                      header: 'Start Year',
                      activationMode: ActivationMode.singleTap,
                    ),
                    primaryXAxis: CategoryAxis(
                      arrangeByIndex: true,
                      majorGridLines: const MajorGridLines(width: 0),
                      interval: 1,
                      axisLabelFormatter: (axisLabelRenderArgs) => ChartAxisLabel(
                        axisLabelRenderArgs.text,
                        const TextStyle(
                          color: Colors.white,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ),
                    primaryYAxis: const NumericAxis(isVisible: false),
                    series: <CartesianSeries<Fragment$UserStatistics$startYears?,
                        int>>[
                      SplineAreaSeries<Fragment$UserStatistics$startYears?, int>(
                        sortingOrder: SortingOrder.ascending,
                        dataSource: widget.startYears,
                        xValueMapper: (data, _) => data?.startYear,
                        yValueMapper: _mapYValue,
                        sortFieldValueMapper: (datum, index) => datum?.startYear,
                        borderColor: AppColors.sunsetOrange,
                        gradient: AppColors.primaryGradient,
                        enableTooltip: true,
                        markerSettings: const MarkerSettings(
                          isVisible: true,
                          color: AppColors.white,
                          borderColor: AppColors.sunsetOrange,
                          borderWidth: 5,
                          width: 12,
                          height: 12,
                        ),
                        dataLabelSettings: const DataLabelSettings(
                          isVisible: true,
                          margin: EdgeInsets.all(0),
                          labelAlignment: ChartDataLabelAlignment.top,
                          textStyle: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: widget.startYears!.length,
              itemBuilder: (context, index) {
                final startYear = sortedYears![index];
                if (startYear == null) return const SizedBox();
                return ChartDataSection(
                  title: startYear.startYear.toString(),
                  value1: startYear.count,
                  field2: widget.type == Enum$MediaType.ANIME
                      ? 'Time Watched'
                      : 'Chapters Read',
                  value2: widget.type == Enum$MediaType.ANIME
                      ? '${FormattingUtils.minutesToHours(startYear.minutesWatched)} Hours'
                      : startYear.chaptersRead,
                  value3: startYear.meanScore,
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  num? _mapYValue(Fragment$UserStatistics$startYears? data, int index) {
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
