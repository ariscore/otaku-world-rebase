part of 'save_list_entry_bloc.dart';

sealed class SaveListEntryEvent {
  const SaveListEntryEvent();
}

class IncreaseProgressCount extends SaveListEntryEvent {
  const IncreaseProgressCount({required this.mediaId, required this.progress});

  final int mediaId;
  final int progress;
}
