part of 'save_list_entry_bloc.dart';

sealed class SaveListEntryEvent {
  const SaveListEntryEvent();
}

class IncreaseProgressCount extends SaveListEntryEvent {
  const IncreaseProgressCount({
    required this.mediaId,
    required this.type,
    required this.progress,
  });

  final int mediaId;
  final Enum$MediaType type;
  final int progress;
}

class DeletedListEntry extends SaveListEntryEvent {
  const DeletedListEntry({required this.id});

  final int id;
}

class SaveMediaListEntry extends SaveListEntryEvent {
  const SaveMediaListEntry({required this.entry});

  final SaveEntryModel entry;
}
