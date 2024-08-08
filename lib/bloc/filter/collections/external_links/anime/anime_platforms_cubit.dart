import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:otaku_world/graphql/__generated/graphql/filter/streaming_platforms.graphql.dart';

part 'anime_platforms_state.dart';

class AnimePlatformsCubit extends Cubit<AnimePlatformsState> {
  AnimePlatformsCubit() : super(AnimePlatformsInitial());

  Future<void> loadAnimePlatforms(GraphQLClient client) async {
    emit(AnimePlatformsLoading());
    final response = await client.query$GetStreamingPlatforms();

    if (response.hasException) {
      final exception = response.exception!;

      if (exception.linkException != null) {
        emit(
          const AnimePlatformsError('Please check your internet connection!'),
        );
      } else {
        emit(const AnimePlatformsError('Some Unexpected error occurred!'));
      }
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
