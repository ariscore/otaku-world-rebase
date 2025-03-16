import 'package:flutter/material.dart';

class CounterText extends StatelessWidget {
  const CounterText({
    super.key,
    required this.currentLength,
    required this.maxLength,
    this.fontSize = 18,
  });

  final int? currentLength;
  final int? maxLength;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      '(${currentLength.toString()} / ${maxLength.toString()})',
      style: Theme.of(context).textTheme.headlineSmall!.copyWith(
            fontSize: fontSize,
          ),
    );
    ;
  }
}
