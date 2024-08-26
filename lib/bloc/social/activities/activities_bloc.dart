import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:equatable/equatable.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:otaku_world/graphql/__generated/graphql/schema.graphql.dart';
import 'package:otaku_world/graphql/__generated/graphql/social/activities.graphql.dart';

part 'activities_event.dart';

part 'activities_state.dart';

class ActivitiesBloc extends Bloc<ActivitiesEvent, ActivitiesState> {
  ActivitiesBloc() : super(ActivitiesInitial()) {
    on<LoadActivities>(_onLoadActivities, transformer: droppable());
    on<SelectActivityType>(_onSelectActivityType);
    on<ResetActivities>(_onResetActivities);
    on<RefreshActivities>(_onRefreshActivities);
    on<LoadMoreActivities>(_onLoadMoreActivities, transformer: droppable());
    // on<SelectActivityScope>(_onSelectActivityScope);
  }

  int followingPage = 1, globalPage = 1;
  bool hasNextPageFollowing = true, hasNextPageGlobal = true;
  final List<dynamic> followingList = [], globalList = [];
  List<Enum$ActivityType> types = Enum$ActivityType.values;
  bool isFollowing = true;

  void _onResetActivities(
    ResetActivities event,
    Emitter<ActivitiesState> emit,
  ) {
    followingPage = 1;
    globalPage = 1;
    hasNextPageFollowing = true;
    hasNextPageGlobal = true;
    followingList.clear();
    globalList.clear();
    types = Enum$ActivityType.values;
    emit(ActivitiesInitial());
  }

  void _onRefreshActivities(
    RefreshActivities event,
    Emitter<ActivitiesState> emit,
  ) {
    followingPage = 1;
    globalPage = 1;
    hasNextPageFollowing = true;
    hasNextPageGlobal = true;
    followingList.clear();
    globalList.clear();
    add(LoadActivities(event.client));
  }

  Future<void> _onLoadActivities(
    LoadActivities event,
    Emitter<ActivitiesState> emit,
  ) async {
    if (followingPage == 1 || globalPage == 1) emit(ActivitiesLoading());

    log('Fetching for types: $types', name: 'ActivitiesBloc');
    final followingResponse = await _loadData(
      event.client,
      true,
      followingPage,
    );
    final globalResponse = await _loadData(
      event.client,
      false,
      globalPage,
    );

    if (followingResponse.hasException || globalResponse.hasException) {
      final exception =
          followingResponse.exception ?? globalResponse.exception!;

      if (exception.linkException != null) {
        emit(
          const ActivitiesError('Please check your internet connection!'),
        );
      } else {
        emit(const ActivitiesError('Some Unexpected error occurred!'));
      }
    } else {
      _processData(response: followingResponse, isFollowing: true);
      _processData(response: globalResponse, isFollowing: false);
      emit(
        ActivitiesLoaded(
          followingActivities: List.from(followingList),
          globalActivities: List.from(globalList),
          hasNextPageFollowing: hasNextPageFollowing,
          hasNextPageGlobal: hasNextPageGlobal,
        ),
      );
    }
  }

  Future<void> _onLoadMoreActivities(
    LoadMoreActivities event,
    Emitter<ActivitiesState> emit,
  ) async {
    if ((!hasNextPageFollowing && event.isFollowing) ||
        (!hasNextPageGlobal && !event.isFollowing)) {
      return;
    }

    log('Loading more activities', name: 'ActivitiesBloc');
    final response = await _loadData(
      event.client,
      event.isFollowing,
      event.isFollowing ? followingPage : globalPage,
    );

    if (response.hasException) {
      if (response.exception!.linkException != null) {
        emit(
          const ActivitiesError('Please check your internet connection!'),
        );
      } else {
        emit(const ActivitiesError('Some Unexpected error occurred!'));
      }
    } else {
      _processData(response: response, isFollowing: event.isFollowing);
      emit(
        ActivitiesLoaded(
          followingActivities: List.from(followingList),
          globalActivities: List.from(globalList),
          hasNextPageFollowing: hasNextPageFollowing,
          hasNextPageGlobal: hasNextPageGlobal,
        ),
      );
    }
  }

  Future<QueryResult<Query$GetActivities>> _loadData(
    GraphQLClient client,
    bool isFollowing,
    int page,
  ) async {
    return await client.query$GetActivities(
      Options$Query$GetActivities(
        variables: Variables$Query$GetActivities(
          type_in: types.where((e) => e != Enum$ActivityType.$unknown).toList(),
          isFollowing: isFollowing,
          page: page,
        ),
      ),
    );
  }

  void _processData({
    required QueryResult<Query$GetActivities> response,
    required bool isFollowing,
  }) {
    final data = response.parsedData!;
    if (isFollowing) {
      hasNextPageFollowing = data.Page!.pageInfo!.hasNextPage!;
      log('Has next following page: $hasNextPageFollowing');
      followingPage++;
      followingList.addAll(data.Page!.activities!);
    } else {
      hasNextPageGlobal = data.Page!.pageInfo!.hasNextPage!;
      log('Has next global page: $hasNextPageFollowing');
      globalPage++;
      globalList.addAll(data.Page!.activities!);
    }
  }

  void _onSelectActivityType(
    SelectActivityType event,
    Emitter<ActivitiesState> emit,
  ) {
    switch (event.type) {
      case 'All':
        types = Enum$ActivityType.values;
      case 'Text':
        types = [Enum$ActivityType.TEXT];
      case 'Message':
        types = [Enum$ActivityType.MESSAGE];
      case 'List Progress':
        types = [Enum$ActivityType.ANIME_LIST, Enum$ActivityType.MANGA_LIST];
      default:
        types = Enum$ActivityType.values;
    }
    add(RefreshActivities(event.client));
  }

  // void _onSelectActivityScope(
  //   SelectActivityScope event,
  //   Emitter<ActivitiesState> emit,
  // ) {
  //   isFollowing = event.isFollowing;
  //   add(RefreshActivities(event.client));
  // }

  @override
  void onTransition(
    Transition<ActivitiesEvent, ActivitiesState> transition,
  ) {
    log(transition.toString(), name: 'ActivitiesBloc');
    super.onTransition(transition);
  }
}
