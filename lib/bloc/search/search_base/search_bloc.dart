import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:equatable/equatable.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

part 'search_event.dart';
part 'search_state.dart';

abstract class SearchBloc<Q, E> extends Bloc<SearchEvent, SearchState> {
  SearchBloc() : super(SearchInitial()) {
    on<SearchMedia>(
      _onSearchMedia,
      transformer: droppable(),
    );
    on<LoadMore>(
      _onLoadMore,
      transformer: droppable(),
    );
    on<ClearSearch>(_onClearSearch);
  }

  var page = 1;
  var hasNextPage = true;
  var searchContent = '';
  final List<E?> list = [];

  void _onClearSearch(ClearSearch event, Emitter<SearchState> emit) {
    page = 1;
    hasNextPage = true;
    list.clear();
    searchContent = '';
    emit(SearchInitial());
  }

  Future<void> _onSearchMedia(SearchMedia event, Emitter<SearchState> emit) async {
    emit(SearchResultLoading());
    page = 1;
    hasNextPage = true;
    list.clear();
    // This is for checking shimmer effect (Uncomment below code)
    // await Future.delayed(const Duration(seconds: 20));

    searchContent = event.searchContent;
    final response = await loadData(event.client, searchContent);

    if (response.hasException) {
      final exception = response.exception!;

      if (exception.linkException != null) {
        emit(
          const SearchError('Please check your internet connection!'),
        );
      } else {
        emit(const SearchError('Some Unexpected error occurred!'));
      }
    } else {
      processData(response);

      emit(SearchResultLoaded<E?>(
        list: List.from(list),
        hasNextPage: hasNextPage,
      ));
    }
  }

  Future<void> _onLoadMore(LoadMore event, Emitter<SearchState> emit) async {
    final response = await loadData(event.client, searchContent);

    if (!response.hasException) {
      processData(response);

      emit(SearchResultLoaded<E?>(
        list: List.from(list),
        hasNextPage: hasNextPage,
      ));
    }
  }

  Future<QueryResult<Q>> loadData(GraphQLClient client, String search);

  void processData(QueryResult<Q> response);
}
