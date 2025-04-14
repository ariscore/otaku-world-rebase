import 'package:bloc/bloc.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:otaku_world/constants/string_constants.dart';
import 'package:otaku_world/graphql/__generated/graphql/fragments.graphql.dart';
import 'package:otaku_world/graphql/__generated/graphql/list/save_list_entry.graphql.dart';

import '../../../core/types/enums.dart';

part 'save_list_entry_event.dart';

part 'save_list_entry_state.dart';

class SaveListEntryBloc extends Bloc<SaveListEntryEvent, SaveListEntryState> {
  SaveListEntryBloc(this.client) : super(SaveListEntryInitial()) {
    on<IncreaseProgressCount>(_onIncreaseProgressCount);
  }

  final GraphQLClient client;

  void _onIncreaseProgressCount(
    IncreaseProgressCount event,
    Emitter<SaveListEntryState> emit,
  ) async {
    emit(IncrementingEpisode());
    final response = await client.mutate$SaveListEntry(
      Options$Mutation$SaveListEntry(
        variables: Variables$Mutation$SaveListEntry(
          mediaId: event.mediaId,
          progress: event.progress + 1,
        ),
      ),
    );

    if (response.hasException) {
      if (response.exception!.linkException != null &&
          response.exception!.linkException is ServerException) {
        emit(
          const IncrementEpisodeError(
            type: ErrorType.noInternet,
            message: StringConstants.noInternetError,
          ),
        );
      } else {
        emit(
          const IncrementEpisodeError(
            type: ErrorType.unknown,
            message: StringConstants.somethingWentWrongError,
          ),
        );
      }
    } else {
      final data = response.parsedData?.SaveMediaListEntry;
      if (data != null) {
        emit(IncrementedEpisode(entry: data));
      } else {
        emit(
          const IncrementEpisodeError(
            type: ErrorType.unknown,
            message: StringConstants.somethingWentWrongError,
          ),
        );
      }
    }
  }
}
