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

class LengthDistributionChart extends StatefulWidget {
  const LengthDistributionChart({
    super.key,
    required this.lengths,
    required this.type,
  });

  final List<Fragment$UserStatistics$lengths?>? lengths;
  final Enum$MediaType type;

  @override
  State<LengthDistributionChart> createState() =>
      _LengthDistributionChartState();
}

class _LengthDistributionChartState extends State<LengthDistributionChart> {
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
    final screenWidth = MediaQuery.of(context).size.width - 20;
    final width = widget.lengths!.length * 30;

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '${widget.type == Enum$MediaType.ANIME ? 'Episode Count' : 'Chapters Count'} Distribution',
                style: Theme.of(context).textTheme.displayMedium?.copyWith(
                      fontFamily: 'Roboto-Medium',
                    ),
              ),
              IconButton(
                onPressed: () {
                  context.push(
                    '${RouteConstants.lengthDistribution}?type=${widget.type == Enum$MediaType.ANIME ? 'anime' : 'manga'}',
                    extra: widget.lengths,
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
              ? FilterConstants.lengthDistOptionsAnime
              : FilterConstants.lengthDistOptionsManga,
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
              tooltipBehavior: TooltipBehavior(enable: true, header: 'Length'),
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
              series: <ColumnSeries<Fragment$UserStatistics$lengths?, String>>[
                ColumnSeries<Fragment$UserStatistics$lengths?, String>(
                  sortingOrder: SortingOrder.ascending,
                  enableTooltip: true,
                  dataSource: widget.lengths!,
                  xValueMapper: (data, _) => data!.length ?? '?',
                  yValueMapper: _mapYValue,
                  sortFieldValueMapper: (datum, index) => _getSortValue(
                    datum?.length,
                  ),
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
