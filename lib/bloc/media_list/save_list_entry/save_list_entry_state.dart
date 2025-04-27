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

final class DeletingListEntry extends SaveListEntryState {}

final class DeletedEntry extends SaveListEntryState {}

final class DeleteListEntryError extends SaveListEntryState {
  const DeleteListEntryError({required this.type, required this.message});

  final ErrorType type;
  final String message;
}

final class SavingMediaListEntry extends SaveListEntryState {}

final class SavedMediaListEntry extends SaveListEntryState {
  const SavedMediaListEntry({required this.entry});

  final Fragment$MediaListEntry entry;
}

final class SaveMediaListEntryError extends SaveListEntryState {
  const SaveMediaListEntryError({required this.type, required this.message});

  final ErrorType type;
  final String message;
}
