import 'package:flutter/material.dart';

import '../../../../theme/colors.dart';

class DataSection extends StatelessWidget {
  const DataSection({
    super.key,
    required this.value1,
    required this.value2,
    required this.value3,
    required this.field1,
    required this.field2,
    required this.field3,
  });

  final dynamic value1, value2, value3;
  final String field1, field2, field3;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 10,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        gradient: AppColors.secondaryGradient,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildStat(context, count: value1, label: field1),
          _buildSeparator(),
          _buildStat(context, count: value2, label: field2),
          _buildSeparator(),
          _buildStat(context, count: value3, label: field3),
        ],
      ),
    );
  }

  Widget _buildStat(
    BuildContext context, {
    required dynamic count,
    required String label,
  }) {
    final width = (MediaQuery.of(context).size.width - 60) / 3;
    return SizedBox(
      width: width,
      child: Column(
        children: [
          Text(
            count is double ? formatDouble(count) : count.toString(),
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  fontFamily: 'Poppins',
                ),
          ),
          const SizedBox(height: 5),
          Text(
            label,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  color: AppColors.white.withOpacity(0.7),
                  fontFamily: 'Poppins',
                ),
          ),
        ],
      ),
    );
  }

  Widget _buildSeparator() {
    return Container(
      height: 45,
      width: 2,
      decoration: BoxDecoration(
        color: AppColors.white.withOpacity(0.5),
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }

  String formatDouble(double value) {
    if (value % 1 == 0) {
      return value.toInt().toString();
    } else {
      return value.toStringAsFixed(1);
    }
  }
}
