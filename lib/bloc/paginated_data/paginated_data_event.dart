part of 'paginated_data_bloc.dart';

abstract class PaginatedDataEvent extends Equatable {
  const PaginatedDataEvent();

  @override
  List<Object?> get props => [];
}

class ResetData extends PaginatedDataEvent {}

class RefreshData extends PaginatedDataEvent {
  const RefreshData(this.client);

  final GraphQLClient client;
}

class LoadData extends PaginatedDataEvent {
  const LoadData(this.client);

  final GraphQLClient client;
}

class UpdateData<E> extends PaginatedDataEvent {
  const UpdateData({required this.list});

  final List<E?> list;
}

class UpdateListEntryForMedia<E> extends PaginatedDataEvent {
  const UpdateListEntryForMedia({required this.entry});

  final Fragment$MediaListEntry entry;
}

class RemoveListEntryFromMedia extends PaginatedDataEvent {
  const RemoveListEntryFromMedia({required this.id});

  final int id;
}

class UpdateLoading extends PaginatedDataEvent {
  const UpdateLoading(this.showProgress);

  final bool showProgress;
}
