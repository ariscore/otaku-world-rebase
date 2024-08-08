import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:otaku_world/bloc/discover/studios/most_favorite_studios_bloc.dart';
import 'package:otaku_world/bloc/filter/search/search_media_cubit.dart';
import 'package:otaku_world/bloc/search/search_studios/search_studios_bloc.dart';
import 'package:otaku_world/core/ui/media_section/scroll_to_top_button.dart';
import 'package:otaku_world/features/discover/discover_studios/widgets/discover_studios_section.dart';
import 'package:otaku_world/graphql/__generated/graphql/fragments.graphql.dart';

import '../../../../bloc/graphql_client/graphql_client_cubit.dart';
import '../../../../bloc/paginated_data/paginated_data_bloc.dart';
import '../../../../bloc/search/search_base/search_base_bloc.dart';
import '../../../../core/ui/appbars/simple_app_bar.dart';
import '../../../../core/ui/custom_search_bar.dart';
import '../../../../core/ui/discover_header.dart';
import '../../../../core/ui/placeholders/anime_character_placeholder.dart';
import '../../../../generated/assets.dart';
import '../../widgets/entity_grid.dart';

class StudiosDiscoverScreen extends HookWidget {
  const StudiosDiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final client =
        (context.read<GraphqlClientCubit>().state as GraphqlClientInitialized)
            .client;
    final scrollController = useScrollController();
    final studiosBloc = context.read<MostFavoriteStudiosBloc>();
    final searchStudiosBloc = context.read<SearchStudiosBloc>();

    useEffect(() {
      scrollController.addListener(() {
        final maxScroll = scrollController.position.maxScrollExtent;
        final currentScroll = scrollController.position.pixels;

        if (currentScroll == maxScroll) {
          if (searchStudiosBloc.state is SearchResultLoaded) {
            final hasNextPage =
                (searchStudiosBloc.state as SearchResultLoaded).hasNextPage;
            if (hasNextPage) {
              searchStudiosBloc.add(LoadMore(client));
            }
          } else {
            final hasNextPage =
                (studiosBloc.state as PaginatedDataLoaded).hasNextPage;
            if (hasNextPage) {
              studiosBloc.add(LoadData(client));
            }
          }
        }
      });
      return null;
    }, const []);

    return Scaffold(
      appBar: const SimpleAppBar(title: "Studios"),
      floatingActionButton: ScrollToTopFAB(controller: scrollController),
      body: SingleChildScrollView(
        controller: scrollController,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: DiscoverHeader(
                title: "Unveiling the World of Anime \nStudios",
                subtitle:
                    "Explore the Creative Powerhouses Behind Your Favorite Shows",
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
              ),
              child: Row(
                children: [
                  CustomSearchBar(
                    clearSearch: () {
                      searchStudiosBloc.add(ClearSearch());
                    },
                    onSubmitted: (value) {
                      searchStudiosBloc.add(
                        SearchMedia(client: client, searchContent: value),
                      );
                    },
                    onChanged: (p0) {},
                    searchCubit: SearchMediaCubit(),
                    hint: 'Search studios...',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            BlocBuilder<SearchStudiosBloc, SearchBaseState>(
              builder: (context, state) {
                if (state is SearchResultLoading) {
                  return const Center(child: CircularProgressIndicator());
                } else if (state is SearchResultLoaded) {
                  return state.list.isEmpty
                      ? const Center(
                          child: AnimeCharacterPlaceholder(
                            asset: Assets.charactersErenYeager,
                            heading: 'Oops! No matches found!',
                            subheading: 'Try searching something else.',
                          ),
                        )
                      : Padding(
                          padding: const EdgeInsets.only(
                            left: 15,
                          ),
                          child: EntityGrid<Fragment$SearchResultStudio>(
                            list: state.list
                                as List<Fragment$SearchResultStudio?>,
                            hasNextPage: state.hasNextPage,
                          ),
                        );
                } else {
                  return const DiscoverStudiosSection();
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
