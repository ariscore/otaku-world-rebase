import 'package:flutter/material.dart';
import 'package:otaku_world/constants/font_constants.dart';
import 'package:otaku_world/theme/colors.dart';

class DateTab extends StatelessWidget {
  const DateTab({
    super.key,
    required this.index,
    required this.date,
    required this.weekDay,
    required this.tabController,
  });

  final int index;
  final String weekDay;
  final int date;
  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    final double tabWidth =
        (MediaQuery.of(context).size.width < 500) ? 40 : 100;
    final double tabHeight =
        (MediaQuery.of(context).size.width < 500) ? 75 : 50;

    final isSelected = index == tabController.index;

    return SizedBox(
      width: tabWidth,
      height: tabHeight,
      child: (MediaQuery.of(context).size.width < 500)
          ? Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  weekDay,
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontFamily: isSelected
                            ? FontConstants.poppinsMedium
                            : FontConstants.poppins,
                        color: (isSelected)
                            ? AppColors.white
                            : AppColors.white.withValues(alpha:0.8),
                        fontWeight:
                            (isSelected) ? FontWeight.w600 : FontWeight.w400,
                      ),
                ),
                const SizedBox(height: 5),
                Text(
                  date.toString(),
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                        fontFamily: isSelected
                            ? FontConstants.poppinsMedium
                            : FontConstants.poppins,
                        fontSize: (isSelected) ? 16 : 14,
                        color: (isSelected)
                            ? AppColors.white
                            : AppColors.white.withValues(alpha:0.8),
                        fontWeight:
                            (isSelected) ? FontWeight.w600 : FontWeight.w400,
                      ),
                ),
              ],
            )
          : Padding(
              padding: EdgeInsets.all((isSelected) ? 10 : 11),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    date.toString(),
                    style: Theme.of(context).textTheme.displayLarge?.copyWith(
                          fontFamily: isSelected
                              ? FontConstants.poppinsMedium
                              : FontConstants.poppins,
                          fontSize: (isSelected) ? 28 : 26,
                          color: (isSelected)
                              ? AppColors.white
                              : AppColors.white.withValues(alpha:0.8),
                          fontWeight:
                              (isSelected) ? FontWeight.w600 : FontWeight.w400,
                        ),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    weekDay,
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontFamily: isSelected
                              ? FontConstants.poppinsMedium
                              : FontConstants.poppins,
                          color: (isSelected)
                              ? AppColors.white
                              : AppColors.white.withValues(alpha:0.8),
                          fontWeight:
                              (isSelected) ? FontWeight.w600 : FontWeight.w400,
                        ),
                  ),
                ],
              ),
            ),
    );
  }
}
