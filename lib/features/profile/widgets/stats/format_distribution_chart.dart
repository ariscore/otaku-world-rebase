import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:otaku_world/generated/assets.dart';
import 'package:otaku_world/graphql/__generated/graphql/schema.graphql.dart';
import 'package:otaku_world/graphql/__generated/graphql/user/user_stats.graphql.dart';
import 'package:otaku_world/utils/extensions.dart';
import 'package:otaku_world/utils/formatting_utils.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../../config/router/router_constants.dart';
import '../../../../constants/duration_constants.dart';
import '../../../../theme/colors.dart';

class FormatDistributionChart extends StatelessWidget {
  const FormatDistributionChart({
    super.key,
    required this.formats,
    required this.type,
  });

  final List<Fragment$UserStatistics$formats?>? formats;
  final Enum$MediaType type;

  @override
  Widget build(BuildContext context) {
    // TODO: Show placeholder here
    if (formats == null || formats!.isEmpty) return const SizedBox();
    final total = formats!.fold(0, (sum, status) => sum + (status?.count ?? 0));
    log('Total count: $total', name: 'AnimeStats');

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Format Distribution',
                style: Theme.of(context).textTheme.displayMedium?.copyWith(
                      fontFamily: 'Roboto-Medium',
                    ),
              ),
              IconButton(
                onPressed: () {
                  context.push(
                    '${RouteConstants.formatDistribution}?type=${type == Enum$MediaType.ANIME ? 'anime' : 'manga'}',
                    extra: formats,
                  );
                },
                icon: SvgPicture.asset(
                  Assets.iconsArrowRight,
                ),
              ),
            ],
          ),
        ),
        // const SizedBox(height: 10),
        Row(
          children: [
            SizedBox(
              width: 170,
              height: 170,
              child: SfCircularChart(
                tooltipBehavior: TooltipBehavior(enable: true),
                series: <CircularSeries<Fragment$UserStatistics$formats?,
                    String>>[
                  DoughnutSeries<Fragment$UserStatistics$formats?, String>(
                    animationDelay: ChartDurationConstants.animationDelay,
                    // animationDelay: 0,
                    animationDuration: ChartDurationConstants.animationDuration,
                    // animationDuration: 0,
                    dataLabelMapper: (datum, index) =>
                        FormattingUtils.getMediaFormatString(datum!.format!),
                    strokeColor: AppColors.raisinBlack,
                    strokeWidth: 3,
                    radius: "100%",
                    innerRadius: "65%",
                    pointColorMapper: (data, index) => data!.format!.toColor,
                    dataSource: formats,
                    xValueMapper: (data, index) =>
                        FormattingUtils.getMediaFormatString(data!.format!),
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
                  formats!.length,
                  (index) {
                    final format = formats![index];
                    if (format == null) return const SizedBox();
                    return _buildFormat(format.format!, format.count, total);
                  },
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildFormat(Enum$MediaFormat format, int count, int total) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: Row(
        children: [
          Container(
            width: 14,
            height: 14,
            decoration: ShapeDecoration(
              color: format.toColor,
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
                text: "${FormattingUtils.getMediaFormatString(format)} - ",
                style: const TextStyle(
                  color: AppColors.white,
                  fontSize: 14,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w500,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: '${formatPercentage(count, total)}%',
                    style: TextStyle(
                      color: format.toColor,
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
    if (total == 0) return "0";

    double percentage = (count / total) * 100;

    // Format to remove decimals if whole number, or two decimal places otherwise
    return percentage % 1 == 0
        ? percentage.toInt().toString()
        : percentage.toStringAsFixed(2);
  }
}
