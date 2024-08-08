import 'package:flutter/material.dart';

import '../../../bloc/calendar/week_calendar/day/day_bloc.dart';
import '../../../constants/string_constants.dart';
import '../../../theme/colors.dart';
import 'date_tab.dart';

class CalendarTabBar extends StatelessWidget {
  const CalendarTabBar({
    super.key,
    required this.tabController,
    required this.dayBlocs,
  });

  final TabController tabController;
  final List<DayBloc> dayBlocs;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: AnimatedBuilder(
          animation: tabController,
          builder: (BuildContext context, Widget? child) {
            return TabBar(
              isScrollable: false,
              dividerHeight: 0,
              controller: tabController,
              labelPadding: EdgeInsets.symmetric(
                horizontal:
                    ((size.width - 10) / 7 - ((size.width < 500) ? 40 : 100)) /
                        2,
              ),
              indicator: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: BorderSide(
                    width: 1,
                    color: AppColors.white.withOpacity(0.0),
                  ),
                ),
                gradient: const LinearGradient(
                  colors: [
                    AppColors.sunsetOrange,
                    AppColors.japaneseIndigo,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              tabs: _buildListTabs(
                context: context,
                tabController: tabController,
              ),
            );
          }),
    );
  }

  List<Tab> _buildListTabs({
    required BuildContext context,
    required TabController tabController,
  }) {
    return List.generate(
      dayBlocs.length,
      (index) => Tab(
        height: (MediaQuery.of(context).size.width < 500) ? 75 : 50,
        child: DateTab(
          index: index,
          weekDay: CalendarConstants.dayNames[dayBlocs[index].day.weekday - 1],
          date: dayBlocs[index].day.day,
          tabController: tabController,
        ),
      ),
    );
  }
}
