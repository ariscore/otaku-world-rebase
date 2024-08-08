import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:otaku_world/bloc/graphql_client/graphql_client_cubit.dart';
import 'package:otaku_world/core/ui/appbars/simple_app_bar.dart';
import 'package:otaku_world/features/calendar/widgets/single_day_calendar.dart';
import 'package:otaku_world/features/calendar/widgets/week_calendar.dart';
import 'package:otaku_world/generated/assets.dart';

class CalendarScreen extends StatefulHookWidget {
  const CalendarScreen({super.key});

  @override
  State<CalendarScreen> createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  DateTime selectedCalendarDay = DateTime.now();
  bool isSingleDayCalendar = false;

  @override
  Widget build(BuildContext context) {
    final tabController = useTabController(
      initialLength: 7,
      initialIndex: 0,
    );
    final client =
        (context.read<GraphqlClientCubit>().state as GraphqlClientInitialized)
            .client;

    return DefaultTabController(
      length: 7,
      initialIndex: 0,
      child: Scaffold(
        appBar: SimpleAppBar(
          title: 'Calendar',
          actions: [
            Padding(
              padding: const EdgeInsets.only(
                left: 0,
                right: 16,
              ),
              child: IconButton(
                onPressed: () {
                  setState(() {
                    isSingleDayCalendar = !isSingleDayCalendar;
                  });
                },
                icon: isSingleDayCalendar
                    ? SvgPicture.asset(Assets.iconsViewSlider)
                    : SvgPicture.asset(Assets.iconsFilterVertical),
              ),
            ),
          ],
        ),
        body: isSingleDayCalendar
            ? SingleDayCalendar(client: client)
            : WeekCalendar(client: client, tabController: tabController),
      ),
    );
  }
}