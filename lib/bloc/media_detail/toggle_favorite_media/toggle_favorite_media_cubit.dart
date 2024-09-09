import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:otaku_world/graphql/__generated/graphql/details/toggle_favorite_media.graphql.dart';
import 'package:otaku_world/graphql/__generated/graphql/schema.graphql.dart';

part 'toggle_favorite_media_state.dart';

class ToggleFavoriteMediaCubit extends Cubit<ToggleFavoriteMediaState> {
  ToggleFavoriteMediaCubit() : super(ToggleFavoriteMediaInitial());

  Future<Either<String, bool>> toggleFavoriteMedia(
    GraphQLClient client, {
    required int mediaId,
    required Enum$MediaType type,
    required bool isLiked,
  }) async {
    final response = await client.mutate$ToggleFavoriteMedia(
      Options$Mutation$ToggleFavoriteMedia(
        variables: Variables$Mutation$ToggleFavoriteMedia(
          animeId: type == Enum$MediaType.ANIME ? mediaId : null,
          mangaId: type == Enum$MediaType.MANGA ? mediaId : null,
        ),
      ),
    );

    log('Response: $response');

    if (response.hasException) {
      final exception = response.exception!;
      log(exception.toString());
      if (exception.linkException != null) {
        return left('Please check your internet connection!');
      } else {
        return left('Something went wrong!');
      }
    } else {
      final data = response.parsedData?.ToggleFavourite;
      if (data == null) {
        log('Data is null');
        return left('Something went wrong!');
      } else {
        return right(!isLiked);
      }
    }
  }
}
