part of 'save_list_entry_bloc.dart';

sealed class SaveListEntryState {
  const SaveListEntryState();
}

final class SaveListEntryInitial extends SaveListEntryState {}

final class IncrementingEpisode extends SaveListEntryState {}

final class IncrementedEpisode extends SaveListEntryState {
  const IncrementedEpisode({required this.entry});

  final Fragment$MediaListEntry entry;
}

final class IncrementEpisodeError extends SaveListEntryState {
  const IncrementEpisodeError({required this.type, required this.message});

  final ErrorType type;
  final String message;
}
