import 'package:flutter/material.dart';
import 'package:otaku_world/constants/duration_constants.dart';
import 'package:otaku_world/features/media_detail/tabs/stats/widgets/stats_chart_label.dart';
import 'package:otaku_world/graphql/__generated/graphql/schema.graphql.dart';
import 'package:otaku_world/theme/colors.dart';
import 'package:otaku_world/utils/extensions.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../../../graphql/__generated/graphql/fragments.graphql.dart';

class StatusDistributionWidget extends StatefulWidget {
  const StatusDistributionWidget({
    super.key,
    required this.statusDistribution,
    required this.type,
  });

  final List<Fragment$MediaDetailed$stats$statusDistribution?>?
      statusDistribution;
  final Enum$MediaType type;

  @override
  State<StatusDistributionWidget> createState() =>
      _StatusDistributionWidgetState();
}

class _StatusDistributionWidgetState extends State<StatusDistributionWidget> {
  late TooltipBehavior _tooltip;

  @override
  void initState() {
    _tooltip = TooltipBehavior(enable: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 170,
          width: 170,
          child: SfCircularChart(
            tooltipBehavior: _tooltip,
            series: <CircularSeries<
                Fragment$MediaDetailed$stats$statusDistribution?, String>>[
              DoughnutSeries<Fragment$MediaDetailed$stats$statusDistribution?,
                  String>(
                animationDelay: ChartDurationConstants.animationDelay,
                animationDuration: ChartDurationConstants.animationDuration,
                dataLabelMapper: (datum, index) =>
                    datum!.status!.displayTitle(widget.type),
                // explode: true,
                // explodeAll: true,
                // explodeOffset: "5%",
                strokeColor: AppColors.raisinBlack,
                strokeWidth: 3,
                radius: "100%",
                innerRadius: "65%",
                pointColorMapper: (data, index) => data!.status!.toColor,
                dataSource: widget.statusDistribution!,
                xValueMapper: (data, index) =>
                    data!.status!.displayTitle(widget.type),
                yValueMapper: (data, _) => data?.amount ?? 0,
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) => StatsChartLabel(
              status: widget.statusDistribution![index]!.status!,
              data: widget.statusDistribution![index]!.amount!,
              type: widget.type,
            ),
            separatorBuilder: (context, index) => SizedBox(
              height: 5,
            ),
            itemCount: widget.statusDistribution!.length,
          ),
        )
      ],
    );
  }
}
