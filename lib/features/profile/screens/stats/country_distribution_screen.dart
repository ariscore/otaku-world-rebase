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

class CountryDistributionScreen extends StatefulWidget {
  const CountryDistributionScreen({
    super.key,
    required this.countries,
    required this.type,
  });

  final List<Fragment$UserStatistics$countries?> countries;
  final Enum$MediaType type;

  @override
  State<CountryDistributionScreen> createState() =>
      _CountryDistributionScreenState();
}

class _CountryDistributionScreenState extends State<CountryDistributionScreen> {
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
    return Scaffold(
      appBar: const SimpleAppBar(title: 'Country Distribution'),
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
            SizedBox(
              width: 300,
              height: 300,
              child: SfCircularChart(
                key: UniqueKey(),
                tooltipBehavior: TooltipBehavior(enable: true),
                series: <CircularSeries<Fragment$UserStatistics$countries?,
                    String>>[
                  PieSeries<Fragment$UserStatistics$countries?, String>(
                    animationDuration: 1000,
                    dataLabelMapper: (datum, index) =>
                        FormattingUtils.getCountry(datum?.country),
                    strokeColor: AppColors.raisinBlack,
                    strokeWidth: 3,
                    radius: "100%",
                    explode: true,
                    pointColorMapper: (data, index) =>
                        FormattingUtils.getCountryColor(data?.country),
                    dataSource: widget.countries,
                    xValueMapper: (data, index) =>
                        FormattingUtils.getCountry(data?.country),
                    yValueMapper: _mapYValue,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: widget.countries.length,
              itemBuilder: (context, index) {
                final country = widget.countries[index];
                if (country == null) return const SizedBox();
                return ChartDataSection(
                  title: FormattingUtils.getCountry(country.country),
                  color: FormattingUtils.getCountryColor(country.country),
                  value1: country.count,
                  value2:
                  '${FormattingUtils.minutesToHours(country.minutesWatched)} Hours',
                  value3: country.meanScore,
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  num? _mapYValue(Fragment$UserStatistics$countries? data, int index) {
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
