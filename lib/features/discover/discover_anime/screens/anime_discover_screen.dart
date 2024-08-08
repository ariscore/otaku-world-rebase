import 'dart:developer' as dev;

import 'package:double_back_to_close/double_back_to_close.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:otaku_world/bloc/filter/filter_anime/filter_anime_bloc.dart';
import 'package:otaku_world/constants/string_constants.dart';
import 'package:otaku_world/core/ui/appbars/simple_app_bar.dart';
import 'package:otaku_world/core/ui/discover_header.dart';
import 'package:otaku_world/features/discover/discover_anime/widgets/discover_anime_section.dart';
import 'package:otaku_world/features/discover/widgets/filtered_media_section.dart';
import 'package:otaku_world/features/discover/widgets/search_option.dart';
import 'package:otaku_world/features/reviews/widgets/scroll_to_top_fab.dart';
import 'package:otaku_world/graphql/__generated/graphql/schema.graphql.dart';

import '../../../../bloc/graphql_client/graphql_client_cubit.dart';
import '../../../../config/router/router_constants.dart';

class AnimeDiscoverScreen extends HookWidget {
  const AnimeDiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final client =
        (context.read<GraphqlClientCubit>().state as GraphqlClientInitialized)
            .client;
    final scrollController = useScrollController();

    useEffect(() {
      scrollController.addListener(() {
        final maxScroll = scrollController.position.maxScrollExtent;
        final currentScroll = scrollController.position.pixels;

        if (currentScroll >= maxScroll) {
          final bloc = context.read<FilterAnimeBloc>();
          if (bloc.state is ResultsLoaded) {
            final hasNextPage = (bloc.state as ResultsLoaded).hasNextPage;
            if (hasNextPage) {
              dev.log('Loading more anime', name: 'FilterAnimeGrid');
              bloc.add(LoadMore(client));
            }
          }
        }
      });
      return null;
    }, const []);

    final bloc = context.read<FilterAnimeBloc>();
    return Scaffold(
      appBar: const SimpleAppBar(title: 'Anime'),
      floatingActionButton: ScrollToTopFAB(
        controller: scrollController,
        tag: 'discover_anime_fab',
      ),
      body: SingleChildScrollView(
        controller: scrollController,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: DiscoverHeader(
                title: DiscoverConstants.animeDiscoverHeading,
                subtitle: DiscoverConstants.animeDiscoverSubheading,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
              ),
              child: BlocBuilder<FilterAnimeBloc, FilterAnimeState>(
                builder: (context, state) {
                  return SearchOption(
                    onPressedFilters: () {
                      context.push(RouteConstants.animeFilters);
                    },
                    clearSearch: () {
                      bloc.add(
                        ClearSearch(client: client, clearFilter: false),
                      );
                    },
                    onSubmitted: (value) {
                      bloc.add(ApplySearch(client: client, search: value));
                    },
                    onChanged: (value) {
                      bloc.add(UpdateSearch(value));
                    },
                    filterApplied: bloc.filterApplied,
                    searchCubit: bloc.searchCubit,
                    hint: 'Search anime...',
                  );
                },
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            BlocBuilder<FilterAnimeBloc, FilterAnimeState>(
              builder: (context, state) {
                if (state is ResultsLoaded) {
                  return FilteredMediaSection(
                    list: state.list,
                    hasNextPage: state.hasNextPage,
                    type: Enum$MediaType.ANIME,
                  );
                } else if (state is ResultsLoading) {
                  return const Center(child: CircularProgressIndicator());
                } else {
                  return const DiscoverAnimeSection();
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
