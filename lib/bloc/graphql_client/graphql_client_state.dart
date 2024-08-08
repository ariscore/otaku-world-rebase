part of 'graphql_client_cubit.dart';

@immutable
abstract class GraphqlClientState {}

class GraphqlClientInitial extends GraphqlClientState {}

class GraphqlClientInitialized extends GraphqlClientState {
  GraphqlClientInitialized(this.client);

  final GraphQLClient client;
}
