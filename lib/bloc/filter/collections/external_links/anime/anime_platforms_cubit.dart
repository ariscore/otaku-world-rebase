import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:otaku_world/graphql/__generated/graphql/filter/streaming_platforms.graphql.dart';

import '../../../../../core/model/custom_error.dart';
import '../../../../../utils/graphql_error_handler.dart';

part 'anime_platforms_state.dart';

class AnimePlatformsCubit extends Cubit<AnimePlatformsState> {
  AnimePlatformsCubit() : super(AnimePlatformsInitial());

  Future<void> loadAnimePlatforms(GraphQLClient client) async {
    emit(AnimePlatformsLoading());
    final response = await client.query$GetStreamingPlatforms();

    if (response.hasException) {
      final exception = response.exception!;
      emit(
        AnimePlatformsError(
          (GraphQLErrorHandler.handleException(exception)),
        ),
      );
    } else {
      emit(
        AnimePlatformsLoaded(
          response.parsedData!.ExternalLinkSourceCollection!
              .map((e) => e?.site)
              .toList(),
        ),
      );
    }
  }
}
