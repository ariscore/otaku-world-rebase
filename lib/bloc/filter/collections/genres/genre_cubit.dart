import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:otaku_world/graphql/__generated/graphql/filter/genres.graphql.dart';

part 'genre_state.dart';

class GenreCubit extends Cubit<GenreState> {
  GenreCubit() : super(GenreInitial());

  Future<void> loadAnimeGenre(GraphQLClient client) async {
    emit(GenreLoading());
    final response = await client.query$GetGenres();

    if (response.hasException) {
      final exception = response.exception!;

      if (exception.linkException != null) {
        emit(
          const GenreError('Please check your internet connection!'),
        );
      } else {
        emit(const GenreError('Some Unexpected error occurred!'));
      }
    } else {
      emit(GenreLoaded(response.parsedData!.GenreCollection!));
    }
  }
}
