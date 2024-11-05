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

class LengthDistributionScreen extends StatefulWidget {
  const LengthDistributionScreen({
    super.key,
    required this.lengths,
    required this.type,
  });

  final List<Fragment$UserStatistics$lengths?>? lengths;
  final Enum$MediaType type;

  @override
  State<LengthDistributionScreen> createState() =>
      _LengthDistributionScreenState();
}

class _LengthDistributionScreenState extends State<LengthDistributionScreen> {
  late String option;
  late List<Fragment$UserStatistics$lengths?>? sortedLengths;

  @override
  void initState() {
    option = widget.type == Enum$MediaType.ANIME
        ? FilterConstants.lengthDistOptionsAnime[0]
        : FilterConstants.lengthDistOptionsManga[0];
    sortedLengths = widget.lengths
      ?..sort(
        (a, b) => _getSortValue(a?.length).compareTo(_getSortValue(
          b?.length,
        )),
      );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width - 20;
    final width = widget.lengths!.length * 50;

    return Scaffold(
      appBar: SimpleAppBar(
        title:
            '${widget.type == Enum$MediaType.ANIME ? 'Episode' : 'Chapters'} Count Distribution',
      ),
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
                  width: max(screenWidth, width.toDouble()),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    gradient: AppColors.chartGradient,
                  ),
                  child: SfCartesianChart(
                    key: UniqueKey(),
                    tooltipBehavior:
                        TooltipBehavior(enable: true, header: 'Length'),
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
                    series: <ColumnSeries<Fragment$UserStatistics$lengths?,
                        String>>[
                      ColumnSeries<Fragment$UserStatistics$lengths?, String>(
                        sortingOrder: SortingOrder.ascending,
                        enableTooltip: true,
                        dataSource: widget.lengths!,
                        xValueMapper: (data, _) => data?.length ?? 'Unknown',
                        yValueMapper: _mapYValue,
                        sortFieldValueMapper: (datum, index) =>
                            _getSortValue(datum?.length),
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
            ),
            const SizedBox(height: 10),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: widget.lengths!.length,
              itemBuilder: (context, index) {
                final length = sortedLengths![index];
                if (length == null) return const SizedBox();
                return ChartDataSection(
                  title: length.length ?? 'Unknown',
                  value1: length.count,
                  field2: widget.type == Enum$MediaType.ANIME
                      ? 'Time Watched'
                      : 'Chapters Read',
                  value2: widget.type == Enum$MediaType.ANIME
                      ? '${FormattingUtils.minutesToHours(length.minutesWatched)} Hours'
                      : length.chaptersRead,
                  value3: length.meanScore,
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  int _getSortValue(String? length) {
    if (length == null) return double.maxFinite.toInt();
    final startNumber = length.split(RegExp(r'[-+]')).first;
    return int.tryParse(startNumber) ?? double.maxFinite.toInt();
  }

  num? _mapYValue(Fragment$UserStatistics$lengths? data, int index) {
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
