import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:otaku_world/bloc/graphql_client/graphql_client_cubit.dart';
import 'package:otaku_world/bloc/paginated_data/paginated_data_bloc.dart';
import 'package:otaku_world/core/ui/media_section/scroll_to_top_button.dart';
import 'package:otaku_world/graphql/__generated/graphql/schema.graphql.dart';

import '../../../core/ui/appbars/simple_app_bar.dart';
import '../../../core/ui/appbars/simple_sliver_app_bar.dart';
import '../../../core/ui/error_text.dart';
import '../../../core/ui/shimmers/grid_shimmer.dart';
import '../../../graphql/__generated/graphql/fragments.graphql.dart';
import '../widgets/entity_card.dart';

class EntityScreen<B extends PaginatedDataBloc> extends HookWidget {
  const EntityScreen({super.key, required this.title, required this.tag});

  final String title;
  final String tag;

  @override
  Widget build(BuildContext context) {
    final client =
        (context.read<GraphqlClientCubit>().state as GraphqlClientInitialized)
            .client;
    final scrollController = useScrollController();
    final bloc = context.read<B>();

    useEffect(() {
      scrollController.addListener(() {
        final maxScroll = scrollController.position.maxScrollExtent;
        final currentScroll = scrollController.position.pixels;

        if (currentScroll == maxScroll) {
          log('Max scrolled', name: 'Media Grid');
          final bloc = context.read<B>();
          final hasNextPage = (bloc.state as PaginatedDataLoaded).hasNextPage;
          if (hasNextPage) {
            final client = (context.read<GraphqlClientCubit>().state
                    as GraphqlClientInitialized)
                .client;
            bloc.add(LoadData(client));
          }
        }
      });
      return null;
    }, const []);

    return Scaffold(
      floatingActionButton: ScrollToTopFAB(
        controller: scrollController,
        tag: tag,
      ),
      body: BlocBuilder<B, PaginatedDataState>(
        builder: (context, state) {
          if (state is PaginatedDataInitial || state is PaginatedDataLoading) {
            return Scaffold(
              appBar: SimpleAppBar(title: title),
              body: const Center(
                child: GridShimmer(
                  mediaType: Enum$MediaType.ANIME,
                ),
              ),
            );
          } else if (state is PaginatedDataLoaded) {
            log('State is data loaded');
            final list = state.list;

            return CustomScrollView(
              controller: scrollController,
              slivers: [
                SimpleSliverAppBar(
                  title: title,
                  floating: true,
                ),
                SliverPadding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  sliver: SliverGrid(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      childAspectRatio: 100 / 182,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                    ),
                    delegate: SliverChildBuilderDelegate(
                      childCount: list.length,
                      (context, index) {
                        final item = list[index];
                        if (item == null) return const SizedBox();

                        if (item is Fragment$CharacterShort) {
                          final character =
                              list[index] as Fragment$CharacterShort;
                          return EntityCard(
                            title: character.name?.userPreferred ?? ' - - ',
                            imageUrl: character.image?.large,
                            favorites: character.favourites,
                          );
                        } else if (item is Fragment$StaffShort) {
                          final staff = list[index] as Fragment$StaffShort;
                          return EntityCard(
                            title: staff.name?.userPreferred ?? ' - - ',
                            imageUrl: staff.image?.large,
                            favorites: staff.favourites,
                          );
                        } else if (item is Fragment$SearchResultStudio) {
                          final studio =
                              list[index] as Fragment$SearchResultStudio;
                          final media = studio.media?.nodes?[0];
                          String poster = '';
                          if (media != null) {
                            poster = (media.isAdult ?? true)
                                ? ''
                                : (media.coverImage?.large ?? '');
                          }

                          return EntityCard(
                            title: studio.name,
                            imageUrl: poster,
                            favorites: studio.favourites,
                          );
                        } else {
                          return const SizedBox();
                        }
                      },
                    ),
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
            );
          } else if (state is PaginatedDataError) {
            return ErrorText(
              message: state.message,
              onTryAgain: () {
                bloc.add(LoadData(client));
              },
            );
          } else {
            return const Text('Unknown State');
          }
        },
      ),
    );
  }
}
