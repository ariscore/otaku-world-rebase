import 'package:flutter/material.dart';
import 'package:otaku_world/core/ui/appbars/simple_app_bar.dart';
import 'package:otaku_world/features/profile/widgets/stats/chart_data_section.dart';
import 'package:otaku_world/graphql/__generated/graphql/schema.graphql.dart';
import 'package:otaku_world/graphql/__generated/graphql/user/user_stats.graphql.dart';
import 'package:otaku_world/utils/extensions.dart';
import 'package:otaku_world/utils/formatting_utils.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../../constants/filter_constants.dart';
import '../../../../core/ui/filters/custom_dropdown.dart';
import '../../../../theme/colors.dart';

class FormatDistributionScreen extends StatefulWidget {
  const FormatDistributionScreen({
    super.key,
    required this.formats,
    required this.type,
  });

  final List<Fragment$UserStatistics$formats?> formats;
  final Enum$MediaType type;

  @override
  State<FormatDistributionScreen> createState() =>
      _FormatDistributionScreenState();
}

class _FormatDistributionScreenState extends State<FormatDistributionScreen> {
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
      appBar: const SimpleAppBar(title: 'Format Distribution'),
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
                series: <CircularSeries<Fragment$UserStatistics$formats?,
                    String>>[
                  PieSeries<Fragment$UserStatistics$formats?, String>(
                    animationDuration: 1000,
                    dataLabelMapper: (datum, index) =>
                        FormattingUtils.getMediaFormatString(datum?.format),
                    strokeColor: AppColors.raisinBlack,
                    strokeWidth: 3,
                    radius: "100%",
                    explode: true,
                    pointColorMapper: (data, index) => data!.format!.toColor,
                    dataSource: widget.formats,
                    xValueMapper: (data, index) =>
                        FormattingUtils.getMediaFormatString(data?.format),
                    yValueMapper: _mapYValue,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: widget.formats.length,
              itemBuilder: (context, index) {
                final format = widget.formats[index];
                if (format == null) return const SizedBox();
                return ChartDataSection(
                  title: FormattingUtils.getMediaFormatString(format.format),
                  color: format.format?.toColor,
                  value1: format.count,
                  field2: widget.type == Enum$MediaType.ANIME
                      ? 'Time Watched'
                      : 'Chapters Read',
                  value2: widget.type == Enum$MediaType.ANIME
                      ? '${FormattingUtils.minutesToHours(format.minutesWatched)} Hours'
                      : format.chaptersRead,
                  value3: format.meanScore,
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  num? _mapYValue(Fragment$UserStatistics$formats? data, int index) {
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
