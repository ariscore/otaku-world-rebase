import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../../bloc/calendar/week_calendar/day/day_bloc.dart';
import '../../../constants/string_constants.dart';
import '../../../generated/assets.dart';
import '../../../theme/colors.dart';
import 'episodes_list.dart';

class SingleDayCalendar extends StatelessWidget {
  const SingleDayCalendar({super.key, required this.client});

  final GraphQLClient client;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DayBloc, DayState>(
      builder: (BuildContext context, DayState state) {
        final date = context.read<DayBloc>().day;
        return Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: () {
                    context.read<DayBloc>().add(
                          SetDay(
                            client: client,
                            day: date.subtract(const Duration(days: 1)),
                          ),
                        );
                  },
                  icon: SvgPicture.asset(
                    Assets.iconsArrowLeft,
                    height: 26,
                    width: 26,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    _buildCalendar(
                      context,
                      context.read<DayBloc>().day,
                    );
                  },
                  child: Row(
                    children: [
                      Text(
                        "${CalendarConstants.dayNames[date.weekday - 1]}, ${date.day}",
                        style:
                            Theme.of(context).textTheme.displayLarge!.copyWith(
                                  color: AppColors.sunsetOrange,
                                  fontSize: 26,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'Poppins',
                                ),
                      ),
                      Text(
                        ' ${CalendarConstants.months[date.month - 1]} ${date.year}',
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .copyWith(
                              color: AppColors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Poppins',
                            ),
                      ),
                    ],
                  ),
                ),
                IconButton(
                  onPressed: () {
                    context.read<DayBloc>().add(
                          SetDay(
                            client: client,
                            day: date.add(const Duration(days: 1)),
                          ),
                        );
                  },
                  icon: SvgPicture.asset(
                    Assets.iconsArrowRight,
                    height: 26,
                    width: 26,
                  ),
                ),
              ],
            ),
            Expanded(
              child: EpisodesList(
                client: client,
                dayBloc: context.read<DayBloc>(),
                clipBehaviour: Clip.hardEdge,
              ),
            ),
          ],
        );
      },
    );
  }

  void _buildCalendar(BuildContext context, DateTime date) {
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          elevation: 0,
          backgroundColor: AppColors.raisinBlack,
          child: Container(
            height: 360,
            width: 320,
            decoration: BoxDecoration(
              color: AppColors.raisinBlack,
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: TableCalendar(
              firstDay: DateTime.now().subtract(const Duration(days: 365)),
              lastDay: DateTime.now().add(const Duration(days: 365)),
              focusedDay: DateTime.now(),
              selectedDayPredicate: (currentSelectedDate) {
                return (isSameDay(date, currentSelectedDate));
              },
              onDaySelected: (selectedDay, focusedDay) {
                if (!isSameDay(date, selectedDay)) {
                  // setState(() {
                  //   selectedCalendarDay = selectedDay;
                  // });
                  context.read<DayBloc>().add(SetDay(
                        client: client,
                        day: selectedDay,
                      ));
                  context.pop();
                }
              },
              startingDayOfWeek: StartingDayOfWeek.monday,
              rowHeight: 40,
              daysOfWeekHeight: 40,
              headerStyle: HeaderStyle(
                formatButtonVisible: false,
                titleCentered: true,
                titleTextStyle:
                    Theme.of(context).textTheme.displayLarge!.copyWith(
                          color: AppColors.white,
                        ),
                headerMargin: const EdgeInsets.symmetric(horizontal: 10),
                leftChevronMargin: const EdgeInsets.symmetric(horizontal: 0),
                rightChevronMargin: const EdgeInsets.symmetric(vertical: 0),
                leftChevronIcon: SvgPicture.asset(
                  Assets.iconsArrowLeft,
                  height: 20,
                  width: 20,
                ),
                rightChevronIcon: SvgPicture.asset(
                  Assets.iconsArrowRight,
                  height: 20,
                  width: 20,
                ),
                decoration: const BoxDecoration(
                  border: BorderDirectional(
                    start: BorderSide.none,
                    end: BorderSide.none,
                    top: BorderSide.none,
                    bottom: BorderSide(
                      style: BorderStyle.solid,
                      width: 2,
                      color: AppColors.silver,
                    ),
                  ),
                ),
              ),
              calendarStyle: CalendarStyle(
                todayDecoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: AppColors.sunsetOrange,
                    width: 1.5,
                  ),
                ),
                selectedDecoration: const BoxDecoration(
                  color: AppColors.sunsetOrange,
                  shape: BoxShape.circle,
                ),
                tablePadding: const EdgeInsets.only(
                  left: 4,
                  right: 4,
                  top: 5,
                ),
                outsideDaysVisible: false,
                defaultTextStyle:
                    Theme.of(context).textTheme.headlineMedium!.copyWith(
                          color: AppColors.white,
                          fontFamily: 'Poppins',
                        ),
              ),
              weekendDays: const [],
              daysOfWeekStyle: DaysOfWeekStyle(
                weekdayStyle:
                    Theme.of(context).textTheme.headlineMedium!.copyWith(
                          color: AppColors.sunsetOrange,
                          fontFamily: 'Poppins',
                        ),
              ),
              calendarBuilders: CalendarBuilders(
                selectedBuilder: (context, date, events) => Container(
                  margin: const EdgeInsets.all(6.0),
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    color: AppColors.sunsetOrange,
                    shape: BoxShape.circle,
                  ),
                  child: Text(
                    date.day.toString(),
                    style: const TextStyle(color: AppColors.white),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
