import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:otaku_world/constants/string_constants.dart';
import 'package:otaku_world/graphql/__generated/graphql/user/user_stats.graphql.dart';

part 'user_stats_event.dart';
part 'user_stats_state.dart';

class UserStatsBloc extends Bloc<UserStatsEvent, UserStatsState> {
  UserStatsBloc({required this.userId}) : super(UserStatsInitial()) {
    on<LoadUserStats>(_onLoadUserStats);
  }
  
  final int userId;

  void _onLoadUserStats(LoadUserStats event, Emitter<UserStatsState> emit,) async {
    emit(UserStatsLoading());
    final response = await event.client.query$GetUserStats(
      Options$Query$GetUserStats(
        fetchPolicy: FetchPolicy.cacheFirst,
        variables: Variables$Query$GetUserStats(
          id: userId,
        ),
      ),
    );
    log('Response: $response');

    if (response.hasException) {
      if (response.exception!.linkException != null) {
        emit(const UserStatsError(StringConstants.noInternetError));
      } else {
        emit(const UserStatsError(StringConstants.somethingWentWrongError));
      }
    } else {
      final data = response.parsedData?.User?.statistics;
      if (data == null) {
        emit(const UserStatsError(StringConstants.statsNotAvailable));
      } else {
        emit(UserStatsLoaded(animeStats: data.anime!, mangaStats: data.manga!));
      }
    }
  }
}
