import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:otaku_world/bloc/media_detail/reviews/media_review_bloc.dart';
import 'package:otaku_world/features/media_detail/tabs/reviews/review_card.dart';

import '../../../../bloc/graphql_client/graphql_client_cubit.dart';
import '../../../../bloc/paginated_data/paginated_data_bloc.dart';
import '../../../../graphql/__generated/graphql/fragments.graphql.dart';
import '../../widgets/simple_loading.dart';

class Reviews extends StatelessWidget {
  const Reviews({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MediaReviewBloc, PaginatedDataState>(
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
                final mediaReviewBloc = context.read<MediaReviewBloc>();
                final hasNextPage =
                    (mediaReviewBloc.state as PaginatedDataLoaded).hasNextPage;
                if (hasNextPage) {
                  final client = (context.read<GraphqlClientCubit>().state
                          as GraphqlClientInitialized)
                      .client;
                  mediaReviewBloc.add(LoadData(client));
                }
              }
              return false;
            },
            child: CustomScrollView(
              key: const PageStorageKey<String>('Characters'),
              slivers: [
                // if (false)
                //   SliverPadding(
                //     padding: const EdgeInsets.all(8.0),
                //     sliver: SliverToBoxAdapter(
                //       child: CustomDropdown(
                //         dropdownItems: availableLanguages,
                //         initialValue: selectedLanguage,
                //         onChange: (language) {
                //           setState(() {
                //             selectedLanguage = language;
                //           });
                //         },
                //       ),
                //     ),
                //   ),
                SliverPadding(
                  padding: const EdgeInsets.all(10),
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
    );
  }
}
