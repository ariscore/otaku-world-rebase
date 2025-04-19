part of 'viewer_bloc.dart';

sealed class ViewerEvent {
  const ViewerEvent();
}

class LoadViewer extends ViewerEvent {
  const LoadViewer(this.client);

  final GraphQLClient client;
}

class UpdateUser extends ViewerEvent {
  const UpdateUser({required this.client, required this.user});

  final GraphQLClient client;
  final Fragment$Settings user;
}
