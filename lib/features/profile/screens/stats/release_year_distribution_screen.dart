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

class ReleaseYearDistributionScreen extends StatefulWidget {
  const ReleaseYearDistributionScreen({
    super.key,
    required this.releaseYears,
    required this.type,
  });

  final List<Fragment$UserStatistics$releaseYears?>? releaseYears;
  final Enum$MediaType type;

  @override
  State<ReleaseYearDistributionScreen> createState() =>
      _ReleaseYearDistributionScreenState();
}

class _ReleaseYearDistributionScreenState
    extends State<ReleaseYearDistributionScreen> {
  late String option;
  late List<Fragment$UserStatistics$releaseYears?>? sortedYears;

  @override
  void initState() {
    option = widget.type == Enum$MediaType.ANIME
        ? FilterConstants.lengthDistOptionsAnime[0]
        : FilterConstants.lengthDistOptionsManga[0];
    sortedYears = widget.releaseYears
      ?..sort(
        (a, b) =>
            b?.releaseYear?.compareTo(
              a?.releaseYear ?? 0,
            ) ??
            0,
      );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width - 20;
    final width = widget.releaseYears!.length * 50;

    return Scaffold(
      appBar: const SimpleAppBar(title: 'Release Year Distribution'),
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
                      header: 'Release Year',
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
                    series: <CartesianSeries<Fragment$UserStatistics$releaseYears?,
                        int>>[
                      SplineAreaSeries<Fragment$UserStatistics$releaseYears?, int>(
                        sortingOrder: SortingOrder.ascending,
                        dataSource: widget.releaseYears,
                        xValueMapper: (data, _) => data?.releaseYear,
                        yValueMapper: _mapYValue,
                        sortFieldValueMapper: (datum, index) => datum?.releaseYear,
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
              itemCount: widget.releaseYears!.length,
              itemBuilder: (context, index) {
                final releaseYear = sortedYears![index];
                if (releaseYear == null) return const SizedBox();
                return ChartDataSection(
                  title: releaseYear.releaseYear.toString(),
                  value1: releaseYear.count,
                  field2: widget.type == Enum$MediaType.ANIME
                      ? 'Time Watched'
                      : 'Chapters Read',
                  value2: widget.type == Enum$MediaType.ANIME
                      ? '${FormattingUtils.minutesToHours(releaseYear.minutesWatched)} Hours'
                      : releaseYear.chaptersRead,
                  value3: releaseYear.meanScore,
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  num? _mapYValue(Fragment$UserStatistics$releaseYears? data, int index) {
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
