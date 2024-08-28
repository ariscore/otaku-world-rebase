import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'dart:developer' as dev;
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:otaku_world/bloc/graphql_client/graphql_client_cubit.dart';
import 'package:otaku_world/bloc/paginated_data/paginated_data_bloc.dart';
import 'package:otaku_world/bloc/reviews/reviews/review_bloc.dart';
import 'package:otaku_world/core/ui/error_text.dart';
import 'package:otaku_world/core/ui/shimmers/reviews_shimmer_list.dart';
import 'package:otaku_world/core/ui/appbars/simple_app_bar.dart';
import 'package:otaku_world/core/ui/appbars/simple_sliver_app_bar.dart';
import 'package:otaku_world/features/reviews/widgets/review_card.dart';
import 'package:otaku_world/features/reviews/widgets/scroll_to_top_fab.dart';

import '../../../theme/colors.dart';

class ReviewScreen<B extends PaginatedDataBloc> extends HookWidget {
  const ReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    dev.log('Rebuilding Some screen', name: 'ReviewScreen');
    final reviewsScrollController = useScrollController();

    useEffect(() {
      reviewsScrollController.addListener(() {
        final maxScroll = reviewsScrollController.position.maxScrollExtent;
        final currentScroll = reviewsScrollController.position.pixels;

        if (currentScroll == maxScroll) {
          dev.log('Max scrolled', name: 'Reviews Screen');

          final reviewBloc = context.read<ReviewBloc>();

          final hasNextPage =
              (reviewBloc.state as PaginatedDataLoaded).hasNextPage;
          if (hasNextPage) {
            final client = (context.read<GraphqlClientCubit>().state
                    as GraphqlClientInitialized)
                .client;
            reviewBloc.add(LoadData(client));
          }
        }
      });
      return null;
    });

    return BlocBuilder<ReviewBloc, PaginatedDataState>(
      builder: (context, state) {
        if (state is PaginatedDataInitial) {
          final client = (context.read<GraphqlClientCubit>().state
                  as GraphqlClientInitialized)
              .client;
          context.read<ReviewBloc>().add(LoadData(client));
          return _buildLoadingScaffold();
        } else if (state is PaginatedDataLoading) {
          return _buildLoadingScaffold();
        } else if (state is PaginatedDataLoaded) {
          return Scaffold(
              floatingActionButton: ScrollToTopFAB(
                controller: reviewsScrollController,
                tag: 'review_fab',
              ),
              body: RefreshIndicator(
                backgroundColor: AppColors.raisinBlack,
                onRefresh: () => _refreshPage(context),
                child: CustomScrollView(
                  clipBehavior: Clip.none,
                  controller: reviewsScrollController,
                  slivers: [
                    const SimpleSliverAppBar(
                      title: 'Reviews',
                      floating: true,
                      isPinned: false,
                    ),
                    SliverList(
                      delegate: SliverChildBuilderDelegate(
                        (context, index) {
                          return ReviewCard(
                            review: state.list[index]!,
                          );
                        },
                        childCount: state.list.length,
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
              ));
        } else if (state is PaginatedDataError) {
          return _buildErrorScaffold(state.message, () {
            final client = (context.read<GraphqlClientCubit>().state
                    as GraphqlClientInitialized)
                .client;
            context.read<ReviewBloc>().add(LoadData(client));
          });
        } else {
          return const Text('Unknown State');
        }
      },
    );
  }

  Future<void> _refreshPage(BuildContext context) async {
    final client =
        (context.read<GraphqlClientCubit>().state as GraphqlClientInitialized)
            .client;
    context.read<ReviewBloc>().add(RefreshData(client));
  }

  Widget _buildErrorScaffold(String message, VoidCallback onTryAgain) {
    return Scaffold(
      appBar: const SimpleAppBar(
        title: 'Reviews',
      ),
      body: Center(
        child: ErrorText(
          message: message,
          onTryAgain: onTryAgain,
        ),
      ),
    );
  }

  Widget _buildLoadingScaffold() {
    return const Scaffold(
      appBar: SimpleAppBar(title: 'Reviews'),
      body: ReviewsShimmerList(),
    );
  }
}
