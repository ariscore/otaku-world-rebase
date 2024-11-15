import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:otaku_world/bloc/filter/filter_manga/filter_manga_bloc.dart';
import 'package:otaku_world/constants/string_constants.dart';
import 'package:otaku_world/core/ui/appbars/simple_app_bar.dart';
import 'package:otaku_world/core/ui/discover_header.dart';
import 'package:otaku_world/features/discover/discover_manga/widgets/discover_manga_section.dart';

import '../../../../bloc/graphql_client/graphql_client_cubit.dart';
import '../../../../config/router/router_constants.dart';
import '../../../../core/ui/media_section/scroll_to_top_button.dart';
import '../../../../graphql/__generated/graphql/schema.graphql.dart';
import '../../widgets/filtered_media_section.dart';
import '../../widgets/search_option.dart';

class MangaDiscoverScreen extends HookWidget {
  const MangaDiscoverScreen({super.key});

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
          final bloc = context.read<FilterMangaBloc>();
          if (bloc.state is ResultsLoaded) {
            final hasNextPage = (bloc.state as ResultsLoaded).hasNextPage;
            if (hasNextPage) {
              log('Loading more manga', name: 'FilterManga');
              bloc.add(LoadMore(client));
            }
          }
        }
      });
      return null;
    }, const []);

    final bloc = context.read<FilterMangaBloc>();
    return Scaffold(
      appBar: const SimpleAppBar(title: 'Manga'),
      floatingActionButton: ScrollToTopFAB(
        controller: scrollController,
        tag: 'discover_manga_fab',
      ),
      body: SingleChildScrollView(
        controller: scrollController,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: DiscoverHeader(
                title: DiscoverConstants.mangaDiscoverHeading,
                subtitle: DiscoverConstants.mangaDiscoverSubheading,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
              ),
              child: BlocBuilder<FilterMangaBloc, FilterMangaState>(
                builder: (context, state) {
                  return SearchOption(
                    onPressedFilters: () {
                      context.push(RouteConstants.mangaFilters);
                    },
                    clearSearch: () {
                      bloc.add(
                          ClearSearch(client: client, clearFilter: false));
                    },
                    onSubmitted: (value) {
                      bloc.add(ApplySearch(client: client, search: value));
                    },
                    onChanged: (value) {
                      bloc.add(UpdateSearch(value));
                    },
                    filterApplied: bloc.filterApplied,
                    searchCubit: bloc.searchCubit,
                    hint: 'Search manga...',
                  );
                },
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            BlocBuilder<FilterMangaBloc, FilterMangaState>(
              builder: (context, state) {
                if (state is ResultsLoaded) {
                  return FilteredMediaSection(
                    list: state.list,
                    hasNextPage: state.hasNextPage,
                    type: Enum$MediaType.MANGA,
                  );
                } else if (state is ResultsLoading) {
                  return const Center(child: CircularProgressIndicator());
                } else {
                  return const DiscoverMangaSection();
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
