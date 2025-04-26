import 'dart:developer';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:otaku_world/graphql/__generated/graphql/staff_detail/toggle_favorite_staff.graphql.dart';

part 'toggle_favorite_staff_state.dart';

class ToggleFavoriteStaffCubit extends Cubit<ToggleFavoriteStaffState> {
  ToggleFavoriteStaffCubit() : super(ToggleFavoriteStaffInitial());

  Future<Either<String, bool>> toggleFavoriteStaff(
    GraphQLClient client, {
    required int staffId,
    required bool isLiked,
  }) async {
    final response = await client.mutate$ToggleFavoriteStaff(
      Options$Mutation$ToggleFavoriteStaff(
        variables: Variables$Mutation$ToggleFavoriteStaff(
          staffId: staffId,
        ),
      ),
    );

    log('Response: $response');

    if (response.hasException) {
      final exception = response.exception!;
      log(exception.toString());
      if (exception.linkException != null) {
        return left('Please check your internet connection!');
      } else {
        return left('Something went wrong!');
      }
    } else {
      final data = response.parsedData?.ToggleFavourite;
      if (data == null) {
        log('Data is null');
        return left('Something went wrong!');
      } else {
        return right(!isLiked);
      }
    }
  }
}