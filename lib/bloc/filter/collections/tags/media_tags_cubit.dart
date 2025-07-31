import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:otaku_world/graphql/__generated/graphql/filter/media_tags.graphql.dart';
import 'package:otaku_world/graphql/__generated/graphql/fragments.graphql.dart';

import '../../../../core/model/custom_error.dart';
import '../../../../utils/graphql_error_handler.dart';

part 'media_tags_state.dart';

class MediaTagsCubit extends Cubit<MediaTagsState> {
  MediaTagsCubit() : super(MediaTagsInitial());

  Future<void> loadMediaTags(GraphQLClient client) async {
    emit(MediaTagsLoading());
    final response = await client.query$GetMediaTags();

    if (response.hasException) {
      final exception = response.exception!;
      emit(
        MediaTagsError(
          (GraphQLErrorHandler.handleException(exception)),
        ),
      );
    } else {
      final tags = response.parsedData!.MediaTagCollection!;
      final tagsMap = <String, List<Fragment$MediaTag>>{};

      for (final tag in tags) {
        if (tag == null) continue;
        // TODO: Proper implementation
        if (tag.isAdult!) continue;

        final category = tag.category!;
        if (tagsMap[category] == null) {
          tagsMap[category] = <Fragment$MediaTag>[];
        }
        tagsMap[category]!.add(tag);
      }

      final sortedKeys = tagsMap.keys.toList()..sort();

      final sortedTagsMap = Map.fromEntries(
        sortedKeys.map(
          (key) => MapEntry(key, tagsMap[key]!),
        ),
      );

      emit(MediaTagsLoaded(sortedTagsMap));
    }
  }
}
