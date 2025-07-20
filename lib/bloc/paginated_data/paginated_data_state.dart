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
    this.showProgress = false,
  });

  final List<E> list;
  final bool hasNextPage;
  final bool showProgress;

  PaginatedDataLoaded copyWith({bool? showProgress}) {
    return PaginatedDataLoaded(
      list: list,
      hasNextPage: hasNextPage,
      showProgress: showProgress ?? this.showProgress,
    );
  }

  @override
  List<Object> get props => [list, hasNextPage, showProgress];
}

class PaginatedDataError extends PaginatedDataState {
  const PaginatedDataError(this.error);

  final CustomError error;
}
