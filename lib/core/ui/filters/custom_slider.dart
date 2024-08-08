import 'dart:developer' as dev;

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../generated/assets.dart';
import '../../../theme/colors.dart';

class CustomSlider extends StatefulWidget {
  const CustomSlider({
    super.key,
    required this.title,
    this.titleStyle,
    this.initialValue,
    required this.minRange,
    required this.maxRange,
    required this.onChangeEnd,
  });

  final String title;
  final TextStyle? titleStyle;
  final int? initialValue;
  final double minRange;
  final double maxRange;
  final Function(double) onChangeEnd;

  @override
  State<CustomSlider> createState() => _CustomSliderState();
}

class _CustomSliderState extends State<CustomSlider> {
  late double startValue;

  @override
  void initState() {
    startValue = (widget.initialValue ?? 18).toDouble();
    dev.log('Initial start: $startValue', name: 'FilterAnimeBloc');
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
                child: Slider(
                  min: widget.minRange,
                  max: widget.maxRange,
                  value: startValue,
                  divisions: (widget.maxRange - widget.minRange).toInt(),
                  label: startValue.round().toString(),
                  onChanged: (value) {
                    setState(() {
                      startValue = value;
                    });
                  },
                  onChangeEnd: widget.onChangeEnd,
                ),
                // child: RangeSlider(
                //   min: widget.minRange,
                //   max: widget.maxRange,
                //   divisions: (widget.maxRange - widget.minRange).toInt(),
                //   labels: RangeLabels(
                //     startValue.round().toString(),
                //     endValue.round().toString(),
                //   ),
                //   values: RangeValues(
                //     startValue,
                //     endValue,
                //   ),
                //   onChanged: (value) {
                //     setState(() {
                //       startValue = value.start;
                //       endValue = value.end;
                //     });
                //   },
                //   onChangeEnd: widget.onChangeEnd,
                // ),
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  if (startValue < widget.maxRange) {
                    startValue = startValue + 1;
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
