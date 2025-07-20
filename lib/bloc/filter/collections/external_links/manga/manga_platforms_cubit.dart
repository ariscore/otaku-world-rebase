import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:otaku_world/graphql/__generated/graphql/filter/publishing_platforms.graphql.dart';

import '../../../../../core/model/custom_error.dart';
import '../../../../../utils/graphql_error_handler.dart';

part 'manga_platforms_state.dart';

class MangaPlatformsCubit extends Cubit<MangaPlatformsState> {
  MangaPlatformsCubit() : super(MangaPlatformsInitial());

  Future<void> loadMangaPlatforms(GraphQLClient client) async {
    emit(MangaPlatformsLoading());
    final response = await client.query$GetPublishingPlatforms();

    if (response.hasException) {
      final exception = response.exception!;

      emit(
        MangaPlatformsError(
          (GraphQLErrorHandler.handleException(exception)),
        ),
      );
    } else {
      emit(
        MangaPlatformsLoaded(
          response.parsedData!.ExternalLinkSourceCollection!
              .map((e) => e?.site)
              .toList(),
        ),
      );
    }
  }
}
