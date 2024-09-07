import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:otaku_world/bloc/media_detail/reviews/media_review_bloc.dart';
import 'package:otaku_world/features/media_detail/tabs/reviews/review_card.dart';
import 'package:otaku_world/graphql/__generated/graphql/schema.graphql.dart';
import 'package:otaku_world/utils/extensions.dart';

import '../../../../bloc/graphql_client/graphql_client_cubit.dart';
import '../../../../bloc/paginated_data/paginated_data_bloc.dart';
import '../../../../core/ui/filters/custom_dropdown.dart';
import '../../../../graphql/__generated/graphql/fragments.graphql.dart';
import '../../widgets/simple_loading.dart';

class Reviews extends StatelessWidget {
  const Reviews({super.key});

  static const List<Enum$ReviewSort> reviewSort = [
    Enum$ReviewSort.RATING_DESC,
    Enum$ReviewSort.RATING,
    Enum$ReviewSort.CREATED_AT_DESC,
    Enum$ReviewSort.CREATED_AT,
    Enum$ReviewSort.SCORE_DESC,
    Enum$ReviewSort.SCORE,
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: ReviewSortDropdown(),
        ),
        Expanded(
          child: BlocBuilder<MediaReviewBloc, PaginatedDataState>(
            builder: (context, state) {
              if (state is PaginatedDataInitial) {
                final client = (context.read<GraphqlClientCubit>().state
                        as GraphqlClientInitialized)
                    .client;
                context.read<MediaReviewBloc>().add(LoadData(client));
                return const SimpleLoading();
              } else if (state is PaginatedDataLoading) {
                return const SimpleLoading();
              } else if (state is PaginatedDataLoaded) {
                final List<Fragment$Review?> reviews =
                    state.list as List<Fragment$Review?>;
                return NotificationListener<ScrollNotification>(
                  onNotification: (scrollInfo) {
                    if (scrollInfo.metrics.pixels ==
                        scrollInfo.metrics.maxScrollExtent) {
                      final hasNextPage = (context.read<MediaReviewBloc>().state
                              as PaginatedDataLoaded)
                          .hasNextPage;
                      if (hasNextPage) {
                        final client = (context.read<GraphqlClientCubit>().state
                                as GraphqlClientInitialized)
                            .client;
                        context.read<MediaReviewBloc>().add(LoadData(client));
                      }
                    }
                    return false;
                  },
                  child: CustomScrollView(
                    key: const PageStorageKey<String>('Reviews'),
                    slivers: [
                      SliverPadding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        sliver: SliverList.separated(
                          itemCount: reviews.length,
                          separatorBuilder: (context, index) => const SizedBox(
                            height: 10,
                          ),
                          itemBuilder: (context, index) {
                            return ReviewCard(
                              review: reviews[index]!,
                            );
                          },
                        ),
                      ),
                      if (state.hasNextPage)
                        const SliverToBoxAdapter(
                          child: Center(
                            child: Padding(
                              padding: EdgeInsets.all(5.0),
                              child: CircularProgressIndicator(),
                            ),
                          ),
                        ),
                    ],
                  ),
                );
              }
              return const Text(
                'Unknown State',
                style: TextStyle(color: Colors.white),
              );
            },
          ),
        ),
      ],
    );
  }
}

class ReviewSortDropdown extends StatefulWidget {
  const ReviewSortDropdown({super.key});

  @override
  State<ReviewSortDropdown> createState() => _ReviewSortDropdownState();
}

class _ReviewSortDropdownState extends State<ReviewSortDropdown> {
  Enum$ReviewSort selectedSort = Reviews.reviewSort.first;

  @override
  Widget build(BuildContext context) {
    return CustomDropdown<Enum$ReviewSort>(
      dropdownItems: Reviews.reviewSort.map((e) => e.displayTitle()).toList(),
      initialValue: selectedSort,
      dropdownItemsValues: Reviews.reviewSort,
      onChange: (newSort) {
        setState(() {
          selectedSort = newSort;
        });
        final client = (context.read<GraphqlClientCubit>().state
                as GraphqlClientInitialized)
            .client;
        context.read<MediaReviewBloc>().applyFilter(newSort, client);
      },
    );
  }
}
