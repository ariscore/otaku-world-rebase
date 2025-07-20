import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:otaku_world/graphql/__generated/graphql/filter/genres.graphql.dart';

import '../../../../core/model/custom_error.dart';
import '../../../../utils/graphql_error_handler.dart';

part 'genre_state.dart';

class GenreCubit extends Cubit<GenreState> {
  GenreCubit() : super(GenreInitial());

  Future<void> loadAnimeGenre(GraphQLClient client) async {
    emit(GenreLoading());
    final response = await client.query$GetGenres();

    if (response.hasException) {
      final exception = response.exception!;
      emit(
        GenreError(
          (GraphQLErrorHandler.handleException(exception)),
        ),
      );
    } else {
      emit(GenreLoaded(response.parsedData!.GenreCollection!));
    }
  }
}
