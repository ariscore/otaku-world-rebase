import 'package:bloc/bloc.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:otaku_world/features/my_list/model/save_entry_model.dart';
import 'package:otaku_world/graphql/__generated/graphql/fragments.graphql.dart';
import 'package:otaku_world/graphql/__generated/graphql/list/delete_list_entry.graphql.dart';
import 'package:otaku_world/graphql/__generated/graphql/list/save_list_entry.graphql.dart';
import 'package:otaku_world/graphql/__generated/graphql/schema.graphql.dart';

import '../../../core/model/custom_error.dart';
import '../../../utils/graphql_error_handler.dart';

part 'save_list_entry_event.dart';
part 'save_list_entry_state.dart';

class SaveListEntryBloc extends Bloc<SaveListEntryEvent, SaveListEntryState> {
  SaveListEntryBloc(this.client) : super(SaveListEntryInitial()) {
    on<IncreaseProgressCount>(_onIncreaseProgressCount);
    on<DeletedListEntry>(_onRemoveListEntry);
    on<SaveMediaListEntry>(_onSaveMediaListEntry);
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
          progress:
              event.type == Enum$MediaType.ANIME ? (event.progress + 1) : null,
          progressVolumes:
              event.type == Enum$MediaType.ANIME ? null : (event.progress + 1),
        ),
      ),
    );

    if (response.hasException) {
      final exception = response.exception!;
      emit(
        IncrementEpisodeError(
          error: (GraphQLErrorHandler.handleException(exception)),
        ),
      );
    } else {
      final data = response.parsedData?.SaveMediaListEntry;
      if (data != null) {
        emit(IncrementedEpisode(entry: data));
      } else {
        emit(
          IncrementEpisodeError(
            error: CustomError.unexpectedError(),
          ),
        );
      }
    }
  }

  void _onRemoveListEntry(
    DeletedListEntry event,
    Emitter<SaveListEntryState> emit,
  ) async {
    emit(DeletingListEntry());
    final response = await client.mutate$DeleteListEntry(
      Options$Mutation$DeleteListEntry(
        variables: Variables$Mutation$DeleteListEntry(
          id: event.id,
        ),
      ),
    );
    if (response.hasException) {
      final exception = response.exception!;
      emit(
        DeleteListEntryError(
          error: (GraphQLErrorHandler.handleException(exception)),
        ),
      );
    } else {
      final deleted =
          response.parsedData?.DeleteMediaListEntry?.deleted ?? true;
      if (!deleted) {
        emit(
          DeleteListEntryError(
            error: CustomError.unexpectedError(),
          ),
        );
      } else {
        emit(DeletedEntry());
      }
    }
  }

  void _onSaveMediaListEntry(
    SaveMediaListEntry event,
    Emitter<SaveListEntryState> emit,
  ) async {
    emit(SavingMediaListEntry());
    final response = await client.mutate$SaveListEntry(
      Options$Mutation$SaveListEntry(
        variables: Variables$Mutation$SaveListEntry(
          id: event.entry.id,
          mediaId: event.entry.mediaId,
          status: event.entry.status,
          score: event.entry.score,
          progress: event.entry.progress,
          progressVolumes: event.entry.progressVolumes,
          repeat: event.entry.repeat,
          private: event.entry.private,
          notes: event.entry.notes,
          customLists: event.entry.customLists,
          hiddenFromStatusLists: event.entry.hiddenFromStatusLists,
          advancedScores: event.entry.advancedScores,
          startedAt: Input$FuzzyDateInput(
            year: event.entry.startedAt?.year,
            month: event.entry.startedAt?.month,
            day: event.entry.startedAt?.day,
          ),
          completedAt: Input$FuzzyDateInput(
            year: event.entry.completedAt?.year,
            month: event.entry.completedAt?.month,
            day: event.entry.completedAt?.day,
          ),
        ),
      ),
    );

    if (response.hasException) {
      final exception = response.exception!;
      emit(
        SaveMediaListEntryError(
          error: (GraphQLErrorHandler.handleException(exception)),
        ),
      );
    } else {
      final listEntry = response.parsedData?.SaveMediaListEntry;
      if (listEntry == null) {
        emit(
          SaveMediaListEntryError(
            error: CustomError.unexpectedError(),
          ),
        );
      } else {
        emit(SavedMediaListEntry(entry: listEntry));
      }
    }
  }
}
