import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import '../../../bloc/calendar/week_calendar/week_calendar_bloc.dart';
import '../../../core/ui/error_text.dart';
import 'calendar_tab_bar.dart';
import 'episodes_list.dart';

class WeekCalendar extends StatelessWidget {
  const WeekCalendar({
    super.key,
    required this.client,
    required this.tabController,
  });

  final GraphQLClient client;
  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WeekCalendarBloc, WeekCalendarState>(
      builder: (context, state) {
        if (state is WeekCalendarError) {
          return ErrorText(
            message: state.message,
            onTryAgain: () {},
          );
        } else if (state is WeekCalendarInitialized) {
          return Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              CalendarTabBar(
                tabController: tabController,
                dayBlocs: state.days,
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: TabBarView(
                  // physics: const NeverScrollableScrollPhysics(),
                  controller: tabController,
                  children: List.generate(
                    7,
                    (index) {
                      return EpisodesList(
                        dayBloc: state.days[index],
                        client: client,
                      );
                    },
                  ),
                ),
              ),
            ],
          );
        } else {
          return const Center(
            child: Text('Unknown state'),
          );
        }
      },
    );
  }
}
