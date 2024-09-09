import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:otaku_world/bloc/paginated_data/paginated_data_bloc.dart';
import 'package:otaku_world/graphql/__generated/graphql/details/media_review.graphql.dart';

import '../../../graphql/__generated/graphql/fragments.graphql.dart';
import '../../../graphql/__generated/graphql/schema.graphql.dart';

class MediaReviewBloc
    extends PaginatedDataBloc<Query$MediaReviews, Fragment$Review> {
  final int mediaId;
  Enum$ReviewSort reviewSort = Enum$ReviewSort.RATING_DESC;

  MediaReviewBloc({required this.mediaId});

  void applyFilter(Enum$ReviewSort reviewSort, GraphQLClient client) {
    this.reviewSort = reviewSort;
    add(ResetData());
    add(LoadData(client));
  }

  @override
  Future<QueryResult<Query$MediaReviews>> loadData(GraphQLClient client) {
    return client.query$MediaReviews(
      Options$Query$MediaReviews(
        fetchPolicy: FetchPolicy.networkOnly,
        variables: Variables$Query$MediaReviews(
          page: page,
          mediaId: mediaId,
          reviewSort: reviewSort,
        ),
      ),
    );
  }

  @override
  void processData(QueryResult<Query$MediaReviews> response) {
    final data = response.parsedData!;
    hasNextPage = data.Media!.reviews!.pageInfo!.hasNextPage!;
    page++;
    list.addAll(data.Media!.reviews!.nodes!);
  }
}
