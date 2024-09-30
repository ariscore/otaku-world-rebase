part of 'paginated_data_bloc.dart';

abstract class PaginatedDataState extends Equatable {
  const PaginatedDataState();

  @override
  List<Object> get props => [];
}

class PaginatedDataInitial extends PaginatedDataState {}

class PaginatedDataLoading extends PaginatedDataState {}

class PaginatedDataLoaded<E> extends PaginatedDataState {
  const PaginatedDataLoaded({
    required this.list,
    required this.hasNextPage,
  });

  final List<E> list;
  final bool hasNextPage;

  @override
  List<Object> get props => [list, hasNextPage];
}

class PaginatedDataError extends PaginatedDataState {
  const PaginatedDataError(this.message);

  final String message;
}
