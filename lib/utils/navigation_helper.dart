import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
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
}
