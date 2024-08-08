import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:otaku_world/bloc/search/search_anime/search_anime_bloc.dart';
import 'package:otaku_world/bloc/search/search_base/search_base_bloc.dart';
import 'package:otaku_world/bloc/search/search_characters/search_characters_bloc.dart';
import 'package:otaku_world/bloc/search/search_manga/search_manga_bloc.dart';
import 'package:otaku_world/bloc/search/search_staff/search_staff_bloc.dart';
import 'package:otaku_world/bloc/search/search_studios/search_studios_bloc.dart';
import 'package:otaku_world/bloc/search/search_users/search_users_bloc.dart';

part 'search_event.dart';

part 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc() : super(SearchDataInitial()) {
    on<SearchData>(_onSearchData);
    on<ClearSearchData>(_onClearSearchData);
  }

  final searchBlocs = <SearchBaseBloc>[
    SearchAnimeBloc(),
    SearchMangaBloc(),
    SearchCharactersBloc(),
    SearchStaffBloc(),
    SearchStudiosBloc(),
    SearchUsersBloc(),
  ];

  void _onSearchData(SearchData event, Emitter<SearchState> emit) {
    for (SearchBaseBloc b in searchBlocs) {
      b.add(
        SearchMedia(
          client: event.client,
          searchContent: event.search,
        ),
      );
    }
  }

  void _onClearSearchData(ClearSearchData event, Emitter<SearchState> emit) {
    for (SearchBaseBloc b in searchBlocs) {
      b.add(ClearSearch());
    }
  }
}
