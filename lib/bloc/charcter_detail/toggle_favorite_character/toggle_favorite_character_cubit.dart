import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:otaku_world/graphql/__generated/graphql/character-detail/toggle_favorite_character.graphql.dart';

part 'toggle_favorite_character_state.dart';

class ToggleFavoriteCharacterCubit extends Cubit<ToggleFavoriteCharacterState> {
  ToggleFavoriteCharacterCubit() : super(ToggleFavoriteCharacterInitial());

  Future<Either<String, bool>> toggleFavoriteCharacter(
    GraphQLClient client, {
    required int characterId,
    required bool isLiked,
  }) async {
    final response = await client.mutate$ToggleFavoriteCharacter(
      Options$Mutation$ToggleFavoriteCharacter(
        variables: Variables$Mutation$ToggleFavoriteCharacter(
          characterId: characterId,
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
