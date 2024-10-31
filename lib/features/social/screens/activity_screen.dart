import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:otaku_world/bloc/graphql_client/graphql_client_cubit.dart';
import 'package:otaku_world/bloc/social/activity/activity_bloc.dart';
import 'package:otaku_world/core/ui/activities/list_activity_card.dart';
import 'package:otaku_world/core/ui/activities/message_activity_card.dart';
import 'package:otaku_world/core/ui/activities/text_activity_card.dart';
import 'package:otaku_world/core/ui/appbars/simple_app_bar.dart';
import 'package:otaku_world/core/ui/error_text.dart';
import 'package:otaku_world/graphql/__generated/graphql/fragments.graphql.dart';

class ActivityScreen extends StatelessWidget {
  const ActivityScreen({super.key, required this.activityId});

  final int activityId;

  @override
  Widget build(BuildContext context) {
    final client = context.read<GraphqlClientCubit>().getClient()!;
    return BlocProvider(
      create: (context) => ActivityBloc(id: activityId)
        ..add(
          LoadActivity(client),
        ),
      child: Scaffold(
        appBar: const SimpleAppBar(title: 'Activity'),
        body: BlocConsumer<ActivityBloc, ActivityState>(
          listenWhen: (previous, current) =>
          current is ActivityLoaded &&
              previous is ActivityLoaded &&
              previous.showProgress != current.showProgress,
          listener: (context, state) {
            if (state is ActivityLoaded) {
              if (state.showProgress) {
                showDialog(
                  context: context,
                  barrierDismissible: false,
                  useRootNavigator: true,
                  builder: (context) {
                    return WillPopScope(
                      onWillPop: () async => false,
                      child: const Center(
                        child: CircularProgressIndicator(),
                      ),
                    );
                  },
                );
              } else {
                context.pop();
              }
            }
          },
          builder: (context, state) {
            if (state is ActivityInitial || state is ActivityLoading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is ActivityLoaded) {
              return SingleChildScrollView(
                child: Builder(
                  builder: (context) {
                    final bloc = context.read<ActivityBloc>();
                    if (state.activity is Fragment$TextActivity) {
                      return TextActivityCard(
                        activity: state.activity,
                        bloc: bloc,
                      );
                    } else if (state.activity is Fragment$ListActivity) {
                      return ListActivityCard(
                        activity: state.activity,
                        bloc: bloc,
                      );
                    } else if (state.activity is Fragment$MessageActivity) {
                      return MessageActivityCard(
                        activity: state.activity,
                        bloc: bloc,
                      );
                    } else {
                      return const SizedBox();
                    }
                  },
                ),
              );
            } else if (state is ActivityError) {
              return Center(
                child: ErrorText(
                  message: state.message,
                  onTryAgain: () {
                    context.read<ActivityBloc>().add(LoadActivity(client));
                  },
                ),
              );
            } else {
              return const Text('Unknown State');
            }
          },
        ),
      ),
    );
  }
}
