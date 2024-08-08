import 'dart:developer' as dev;

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../generated/assets.dart';
import '../../../theme/colors.dart';

class CustomRangeSlider extends StatefulWidget {
  const CustomRangeSlider({
    super.key,
    required this.title,
    this.titleStyle,
    this.initialStartValue,
    this.initialEndValue,
    required this.minRange,
    required this.maxRange,
    required this.onChangeEnd,
  });

  final String title;
  final TextStyle? titleStyle;
  final int? initialStartValue;
  final int? initialEndValue;
  final double minRange;
  final double maxRange;
  final Function(RangeValues) onChangeEnd;

  @override
  State<CustomRangeSlider> createState() => _CustomRangeSliderState();
}

class _CustomRangeSliderState extends State<CustomRangeSlider> {
  late double startValue;
  late double endValue;

  @override
  void initState() {
    startValue = widget.initialStartValue?.toDouble() ?? widget.minRange;
    endValue = widget.initialEndValue?.toDouble() ?? widget.maxRange;
    dev.log(
      'Initial start: $startValue | End: $endValue',
      name: 'FilterAnimeBloc',
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style: (widget.titleStyle == null)
              ? Theme.of(context).textTheme.displayMedium!.copyWith(
                    color: AppColors.white,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Poppins',
                  )
              : widget.titleStyle,
        ),
        const SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  if (startValue > widget.minRange) {
                    startValue = startValue - 1;
                  }
                });
              },
              borderRadius: BorderRadius.circular(7),
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: SvgPicture.asset(Assets.iconsRemove),
              ),
            ),
            Expanded(
              child: SliderTheme(
                data: SliderTheme.of(context).copyWith(
                  thumbColor: AppColors.white,
                  activeTrackColor: AppColors.sunsetOrange,
                  inactiveTrackColor: AppColors.brilliantAzure,
                  activeTickMarkColor: AppColors.transparent,
                  inactiveTickMarkColor: AppColors.transparent,
                  trackHeight: 10,
                  trackShape: const RoundedRectSliderTrackShape(),
                  overlayColor: AppColors.sunsetOrange.withOpacity(0.1),
                  valueIndicatorColor: AppColors.sunsetOrange,
                  valueIndicatorTextStyle:
                      Theme.of(context).textTheme.titleLarge,
                ),
                child: RangeSlider(
                  min: widget.minRange,
                  max: widget.maxRange,
                  divisions: (widget.maxRange - widget.minRange).toInt(),
                  labels: RangeLabels(
                    startValue.round().toString(),
                    endValue.round().toString(),
                  ),
                  values: RangeValues(
                    startValue,
                    endValue,
                  ),
                  onChanged: (value) {
                    setState(() {
                      startValue = value.start;
                      endValue = value.end;
                    });
                  },
                  onChangeEnd: widget.onChangeEnd,
                ),
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  if (endValue < widget.maxRange) {
                    endValue = endValue + 1;
                  }
                });
              },
              borderRadius: BorderRadius.circular(7),
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: SvgPicture.asset(Assets.iconsAdd),
              ),
            ),
          ],
        )
      ],
    );
  }
}
