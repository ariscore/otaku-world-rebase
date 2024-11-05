import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:otaku_world/generated/assets.dart';
import 'package:otaku_world/graphql/__generated/graphql/schema.graphql.dart';
import 'package:otaku_world/graphql/__generated/graphql/user/user_stats.graphql.dart';
import 'package:otaku_world/utils/extensions.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../../config/router/router_constants.dart';
import '../../../../constants/duration_constants.dart';
import '../../../../theme/colors.dart';

class MangaStatusDistributionChart extends StatelessWidget {
  const MangaStatusDistributionChart({super.key, required this.statuses});

  final List<Fragment$UserStatistics$statuses?>? statuses;

  @override
  Widget build(BuildContext context) {
    if (statuses == null || statuses!.isEmpty) return const SizedBox();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Status Distribution',
                style: Theme.of(context).textTheme.displayMedium?.copyWith(
                  fontFamily: 'Roboto-Medium',
                ),
              ),
              IconButton(
                onPressed: () {
                  context.push(
                    '${RouteConstants.statusDistribution}?type=manga',
                    extra: statuses,
                  );
                },
                icon: SvgPicture.asset(
                  Assets.iconsArrowRight,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            SizedBox(
              width: 170,
              height: 170,
              child: SfCircularChart(
                tooltipBehavior: TooltipBehavior(enable: true),
                series: <CircularSeries<Fragment$UserStatistics$statuses?,
                    String>>[
                  DoughnutSeries<Fragment$UserStatistics$statuses?, String>(
                    animationDelay: ChartDurationConstants.animationDelay,
                    animationDuration: ChartDurationConstants.animationDuration,
                    dataLabelMapper: (datum, index) =>
                        datum!.status!.displayTitle(Enum$MediaType.MANGA),
                    strokeColor: AppColors.raisinBlack,
                    strokeWidth: 3,
                    radius: "100%",
                    innerRadius: "65%",
                    pointColorMapper: (data, index) => data!.status!.toColor,
                    dataSource: statuses,
                    xValueMapper: (data, index) =>
                        data!.status!.displayTitle(Enum$MediaType.MANGA),
                    yValueMapper: (data, _) => data?.count ?? 0,
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                children: List.generate(
                  statuses!.length,
                      (index) {
                    final status = statuses![index];
                    if (status == null) return const SizedBox();
                    return _buildStatus(status.status!, status.count);
                  },
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildStatus(Enum$MediaListStatus status, int count) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: Row(
        children: [
          Container(
            width: 14,
            height: 14,
            decoration: ShapeDecoration(
              color: status.toColor,
              shape: const OvalBorder(),
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          Expanded(
            child: RichText(
              overflow: TextOverflow.ellipsis,
              text: TextSpan(
                text: "${status.displayTitle(Enum$MediaType.MANGA)} - ",
                style: const TextStyle(
                  color: AppColors.white,
                  fontSize: 14,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w500,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: count.toString(),
                    style: TextStyle(
                      color: status.toColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  String formatPercentage(int count, int total) {
    if (total == 0) return "0"; // Handle division by zero

    double percentage = (count / total) * 100;

    // Format to remove decimals if whole number, or two decimal places otherwise
    return percentage % 1 == 0
        ? percentage.toInt().toString()
        : percentage.toStringAsFixed(2);
  }
}
