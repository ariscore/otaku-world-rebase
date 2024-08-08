import 'package:flutter/material.dart';
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

    return Container(
      width: tabWidth,
      height: tabHeight,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(
            width: 1,
            color: (isSelected)
                ? AppColors.white.withOpacity(0.0)
                : AppColors.white.withOpacity(0.8),
          ),
        ),
      ),
      child: (MediaQuery.of(context).size.width < 500)
          ? Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  weekDay,
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontFamily: 'Poppins',
                        color: (isSelected)
                            ? AppColors.white
                            : AppColors.white.withOpacity(0.8),
                        fontWeight:
                            (isSelected) ? FontWeight.w600 : FontWeight.w400,
                      ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  date.toString(),
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                        fontFamily: 'Poppins',
                        fontSize: (isSelected) ? 16 : 14,
                        color: (isSelected)
                            ? AppColors.white
                            : AppColors.white.withOpacity(0.8),
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
                          fontFamily: 'Poppins',
                          fontSize: (isSelected) ? 28 : 26,
                          color: (isSelected)
                              ? AppColors.white
                              : AppColors.white.withOpacity(0.8),
                          fontWeight: (isSelected)
                              ? FontWeight.w600
                              : FontWeight.w400,
                        ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    weekDay,
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontFamily: 'Poppins',
                          color: (isSelected)
                              ? AppColors.white
                              : AppColors.white.withOpacity(0.8),
                          fontWeight: (isSelected)
                              ? FontWeight.w600
                              : FontWeight.w400,
                        ),
                  ),
                ],
              ),
            ),
    );
  }
}
