// Developed by CHAT GPT (ab to job gai)
import 'package:flutter/material.dart';
import 'package:otaku_world/theme/decorations.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../../../constants/duration_constants.dart';
import '../../../../../graphql/__generated/graphql/fragments.graphql.dart';
import '../../../../../theme/colors.dart';

class ScoreDistributionWidget extends StatefulWidget {
  const ScoreDistributionWidget({
    super.key,
    required this.scoreDistribution,
  });

  final List<Fragment$MediaDetailed$stats$scoreDistribution?>?
      scoreDistribution;

  @override
  State<ScoreDistributionWidget> createState() =>
      _ScoreDistributionWidgetState();
}

class _ScoreDistributionWidgetState extends State<ScoreDistributionWidget> {
  late TooltipBehavior _tooltip;

  @override
  void initState() {
    _tooltip = TooltipBehavior(
      enable: true,
      header: "",
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 20,
      height: 270,
      decoration: Decorations.simpleContainer,
      child: SfCartesianChart(
        tooltipBehavior: _tooltip,
        plotAreaBorderWidth: 0,
        // Remove chart border
        primaryXAxis: const CategoryAxis(
          majorGridLines: MajorGridLines(width: 0),
          // Remove vertical grid lines
          axisLine: AxisLine(width: 0),
          // Remove x-axis line
          majorTickLines: MajorTickLines(size: 0),
          // Remove tick marks
          labelStyle: TextStyle(color: Colors.white), // Set label style
        ),
        primaryYAxis: const NumericAxis(
          isVisible: false, // Hide y-axis line and labels
          majorGridLines:
              MajorGridLines(width: 0), // Remove horizontal grid lines
        ),
        series: <ColumnSeries<Fragment$MediaDetailed$stats$scoreDistribution?,
            int>>[
          ColumnSeries<Fragment$MediaDetailed$stats$scoreDistribution?, int>(
            animationDelay: ChartDurationConstants.animationDelay,
            animationDuration: ChartDurationConstants.animationDuration,
            enableTooltip: true,
            dataSource: widget.scoreDistribution!,
            xValueMapper: (data, _) => data!.score,
            yValueMapper: (data, _) => data!.amount,
            gradient: const LinearGradient(
              begin: Alignment(0.00, -1.00),
              end: Alignment(0, 1),
              colors: [
                AppColors.sunsetOrange,
                AppColors.japaneseIndigo,
              ],
            ),
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
    );
  }
}
