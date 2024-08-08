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
