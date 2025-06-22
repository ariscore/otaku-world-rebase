import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:otaku_world/bloc/graphql_client/graphql_client_cubit.dart';
import 'package:otaku_world/bloc/viewer/viewer_bloc.dart';
import 'package:otaku_world/utils/ui_utils.dart';

import '../config/router/router_constants.dart';

class NavigationHelper {
  static void goToMediaDetailScreen({
    required BuildContext context,
    required mediaId,
  }) {
    context.push('${RouteConstants.mediaDetail}?id=$mediaId');
  }

  static void goToReviewDetailScreen({
    required BuildContext context,
    required reviewId,
    required Bloc bloc,
  }) {
    context.push(
      '${RouteConstants.reviewDetail}?id=$reviewId',
      extra: bloc,
    );
  }

  static void goToCharacterDetailScreen({
    required BuildContext context,
    required int characterId,
  }) {
    context.push(
      '${RouteConstants.characterDetail}?id=$characterId',
    );
  }

  static void goToStudioDetailScreen({
    required BuildContext context,
    required int studioId,
  }) {
    context.push(
      '${RouteConstants.studioDetail}?id=$studioId',
    );
  }

  static void goToStaffDetailScreen({
    required BuildContext context,
    required int staffId,
  }) {
    context.push(
      '${RouteConstants.staffDetail}?id=$staffId',
    );
  }

  static void goToProfileScreen({
    required BuildContext context,
    required int userId,
  }) {
    final viewerBloc = context.read<ViewerBloc>();
    if (viewerBloc.state is ViewerLoaded) {
      final isCurrentUser =
          (viewerBloc.state as ViewerLoaded).user.id == userId;
      if (isCurrentUser) {
        context.push(RouteConstants.myProfile);
      } else {
        context.push('${RouteConstants.profile}?id=$userId');
      }
    } else if (viewerBloc.state is ViewerInitial ||
        viewerBloc.state is ViewerError) {
      viewerBloc.add(
        LoadViewer(context.read<GraphqlClientCubit>().getClient()!),
      );
      UIUtils.showSnackBar(context, 'Try again after some time');
    }
  }

  static void onPopInvoked(BuildContext context) {
    if (context.canPop()) {
      context.pop();
    } else {
      context.go('/home');
    }
  }
}
