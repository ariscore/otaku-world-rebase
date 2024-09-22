import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:otaku_world/graphql/__generated/graphql/schema.graphql.dart';

import '../bloc/reviews/reviews/reviews_bloc.dart';
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
  }) {
    context.push(
      '${RouteConstants.reviewDetail}?id=$reviewId',
      extra: context.read<ReviewsBloc>(),
    );
  }
}
