part of 'viewer_bloc.dart';

sealed class ViewerEvent {
  const ViewerEvent();
}

class LoadViewer extends ViewerEvent {
  const LoadViewer(this.client);

  final GraphQLClient client;
}

class UpdateTitleLanguage extends ViewerEvent {

}
