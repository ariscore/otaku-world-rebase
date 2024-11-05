import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:otaku_world/generated/assets.dart';
import 'package:otaku_world/graphql/__generated/graphql/schema.graphql.dart';
import 'package:otaku_world/graphql/__generated/graphql/user/user_stats.graphql.dart';
import 'package:otaku_world/utils/formatting_utils.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../../../config/router/router_constants.dart';
import '../../../../../constants/duration_constants.dart';
import '../../../../../theme/colors.dart';

class CountryDistributionChart extends StatelessWidget {
  const CountryDistributionChart({
    super.key,
    required this.countries,
    required this.type,
  });

  final List<Fragment$UserStatistics$countries?>? countries;
  final Enum$MediaType type;

  @override
  Widget build(BuildContext context) {
    // TODO: Show placeholder here
    if (countries == null || countries!.isEmpty) return const SizedBox();
    final total =
        countries!.fold(0, (sum, status) => sum + (status?.count ?? 0));
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
                'Country Distribution',
                style: Theme.of(context).textTheme.displayMedium?.copyWith(
                      fontFamily: 'Roboto-Medium',
                    ),
              ),
              IconButton(
                onPressed: () {
                  context.push(
                    '${RouteConstants.countryDistribution}?type=${type == Enum$MediaType.ANIME ? 'anime' : 'manga'}',
                    extra: countries,
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
                series: <CircularSeries<Fragment$UserStatistics$countries?,
                    String>>[
                  DoughnutSeries<Fragment$UserStatistics$countries?, String>(
                    animationDelay: ChartDurationConstants.animationDelay,
                    // animationDelay: 0,
                    animationDuration: ChartDurationConstants.animationDuration,
                    // animationDuration: 0,
                    dataLabelMapper: (datum, index) =>
                        FormattingUtils.getCountry(datum!.country),
                    strokeColor: AppColors.raisinBlack,
                    strokeWidth: 3,
                    radius: "100%",
                    innerRadius: "65%",
                    pointColorMapper: (data, index) =>
                        FormattingUtils.getCountryColor(
                      data!.country,
                    ),
                    dataSource: countries,
                    xValueMapper: (data, index) =>
                        FormattingUtils.getCountry(data!.country),
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
                  countries!.length,
                  (index) {
                    final country = countries![index];
                    if (country == null) return const SizedBox();
                    return _buildCountry(
                        country.country!, country.count, total);
                  },
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildCountry(String countryCode, int count, int total) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: Row(
        children: [
          Container(
            width: 14,
            height: 14,
            decoration: ShapeDecoration(
              color: FormattingUtils.getCountryColor(countryCode),
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
                text: "${FormattingUtils.getCountry(countryCode)} - ",
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
                      color: FormattingUtils.getCountryColor(countryCode),
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
