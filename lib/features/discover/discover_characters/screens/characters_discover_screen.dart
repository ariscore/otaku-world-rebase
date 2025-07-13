import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:otaku_world/bloc/filter/search/search_media_cubit.dart';
import 'package:otaku_world/bloc/graphql_client/graphql_client_cubit.dart';
import 'package:otaku_world/bloc/search/search_base/search_base_bloc.dart';
import 'package:otaku_world/bloc/search/search_characters/search_characters_bloc.dart';
import 'package:otaku_world/core/ui/custom_search_bar.dart';
import 'package:otaku_world/core/ui/media_section/scroll_to_top_button.dart';
import 'package:otaku_world/features/discover/discover_characters/widgets/discover_characters_section.dart';
import 'package:otaku_world/features/discover/widgets/entity_grid.dart';
import 'package:otaku_world/graphql/__generated/graphql/fragments.graphql.dart';

import '../../../../core/ui/appbars/simple_app_bar.dart';
import '../../../../core/ui/discover_header.dart';
import '../../../../core/ui/placeholders/anime_character_placeholder.dart';
import '../../../../generated/assets.dart';

class CharactersDiscoverScreen extends HookWidget {
  const CharactersDiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final searchCharactersBloc = context.read<SearchCharactersBloc>();
    final client =
        (context.read<GraphqlClientCubit>().state as GraphqlClientInitialized)
            .client;

    final scrollController = useScrollController();

    useEffect(() {
      scrollController.addListener(() {
        final maxScroll = scrollController.position.maxScrollExtent;
        final currentScroll = scrollController.position.pixels;

        if (currentScroll == maxScroll) {
          log('Max scrolled', name: 'CharacterSearch');
          final hasNextPage = (searchCharactersBloc.state
                  is SearchResultLoaded) &&
              (searchCharactersBloc.state as SearchResultLoaded).hasNextPage;
          if (hasNextPage) {
            final client = (context.read<GraphqlClientCubit>().state
                    as GraphqlClientInitialized)
                .client;
            searchCharactersBloc.add(LoadMore(client));
          }
        }
      });
      return null;
    });

    return Scaffold(
      appBar: const SimpleAppBar(title: "Characters"),
      floatingActionButton: ScrollToTopFAB(
        controller: scrollController,
        tag: 'discover_characters',
      ),
      body: SingleChildScrollView(
        controller: scrollController,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: DiscoverHeader(
                title: "Unlock the Realm of \nCharacters",
                subtitle: "Immerse Yourself in a Colorful Mosaic of "
                    "Unique Personalities and Memorable Icons",
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
                      searchCharactersBloc.add(ClearSearch());
                    },
                    onSubmitted: (value) {
                      searchCharactersBloc.add(
                        SearchMedia(client: client, searchContent: value),
                      );
                    },
                    onChanged: (p0) {},
                    searchCubit: SearchMediaCubit(),
                    hint: 'Search characters...',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            BlocBuilder<SearchCharactersBloc, SearchBaseState>(
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
                          padding: const EdgeInsets.only(left: 15),
                          child: EntityGrid<Fragment$SearchResultCharacter>(
                            list: state.list
                                as List<Fragment$SearchResultCharacter?>,
                            hasNextPage: state.hasNextPage,
                          ),
                        );
                } else {
                  // context.read()
                  return const DiscoverCharactersSection();
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
