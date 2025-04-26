import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:otaku_world/graphql/__generated/graphql/studio_detail/toggle_favorite_studio.graphql.dart';

part 'toggle_favorite_studio_state.dart';

class ToggleFavoriteStudioCubit extends Cubit<ToggleFavoriteStudioState> {
  ToggleFavoriteStudioCubit() : super(ToggleFavoriteStudioInitial());

  Future<Either<String, bool>> toggleFavoriteStudio(
    GraphQLClient client, {
    required int studioId,
    required bool isLiked,
  }) async {
    final response = await client.mutate$ToggleFavoriteStudio(
      Options$Mutation$ToggleFavoriteStudio(
        variables: Variables$Mutation$ToggleFavoriteStudio(
          studioId: studioId,
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
