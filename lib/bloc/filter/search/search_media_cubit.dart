import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

part 'search_media_state.dart';

class SearchMediaCubit extends Cubit<SearchMediaState> {
  SearchMediaCubit({String? initialText}) : super(SearchContentChanged('')) {
    searchController = TextEditingController(text: initialText);
    searchController.addListener(() {
      emit(SearchContentChanged(searchController.text));
    },);
  }

  @override
  Future<void> close() {
    searchController.dispose();
    return super.close();
  }

  late final TextEditingController searchController;
  bool searchApplied = false;

  String get searchText => (state as SearchContentChanged).content;
}
