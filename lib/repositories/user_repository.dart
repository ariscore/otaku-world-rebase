import 'dart:developer';

import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:otaku_world/graphql/__generated/graphql/fragments.graphql.dart';
import 'package:otaku_world/graphql/__generated/graphql/user/viewer.graphql.dart';
import 'package:otaku_world/utils/shared_preference_utils.dart';

import '../constants/string_constants.dart';

class UserRepository {
  Fragment$Settings? get lastCachedUser {
    log('Getting last cached user: ${SharedPreferenceUtils.getUserData()?.name}');
    return SharedPreferenceUtils.getUserData();
  }

  Future<Fragment$Settings> fetchAndCacheUserData(GraphQLClient client) async {
    final response = await client.query$Viewer(
      Options$Query$Viewer(
        fetchPolicy: FetchPolicy.networkOnly,
      ),
    );
    log('Response: $response');

    if (response.hasException) {
      throw response.exception!;
    } else {
      final user = response.parsedData?.Viewer;
      if (user == null) {
        throw Exception(StringConstants.unexpectedError);
      } else {
        updateUserData(user);
        return user;
      }
    }
  }

  void updateUserData(Fragment$Settings user) {
    SharedPreferenceUtils.setUserData(user);
  }

}