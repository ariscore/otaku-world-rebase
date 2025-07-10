import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:otaku_world/bloc/search/search_base/search_base_bloc.dart';
import 'package:otaku_world/bloc/search/search_staff/search_staff_bloc.dart';
import 'package:otaku_world/features/discover/discover_staff/widgets/discover_staff_section.dart';
import 'package:otaku_world/graphql/__generated/graphql/fragments.graphql.dart';

import '../../../../bloc/filter/search/search_media_cubit.dart';
import '../../../../bloc/graphql_client/graphql_client_cubit.dart';
import '../../../../core/ui/appbars/simple_app_bar.dart';
import '../../../../core/ui/custom_search_bar.dart';
import '../../../../core/ui/discover_header.dart';
import '../../../../core/ui/media_section/scroll_to_top_button.dart';
import '../../../../core/ui/placeholders/anime_character_placeholder.dart';
import '../../../../generated/assets.dart';
import '../../widgets/entity_grid.dart';

class StaffDiscoverScreen extends HookWidget {
  const StaffDiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final searchStaffBloc = context.read<SearchStaffBloc>();
    final client =
        (context.read<GraphqlClientCubit>().state as GraphqlClientInitialized)
            .client;

    final scrollController = useScrollController();

    useEffect(() {
      scrollController.addListener(() {
        final maxScroll = scrollController.position.maxScrollExtent;
        final currentScroll = scrollController.position.pixels;

        if (currentScroll == maxScroll) {
          log('Max scrolled', name: 'StaffSearch');
          final hasNextPage = (searchStaffBloc.state is SearchResultLoaded) &&
              (searchStaffBloc.state as SearchResultLoaded).hasNextPage;
          if (hasNextPage) {
            final client = (context.read<GraphqlClientCubit>().state
                    as GraphqlClientInitialized)
                .client;
            searchStaffBloc.add(LoadMore(client));
          }
        }
      });
      return null;
    });

    return Scaffold(
      appBar: const SimpleAppBar(title: "Staff"),
      floatingActionButton: ScrollToTopFAB(
        controller: scrollController,
        tag: 'discover_staff',
      ),
      body: SingleChildScrollView(
        controller: scrollController,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: DiscoverHeader(
                title: "Discover the Creative Forces \nbehind Anime and Manga",
                subtitle:
                    "Unveiling the Talented Staff Bringing Stories to Life",
              ),
            ),
            const SizedBox(
              height: 15,
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
                      searchStaffBloc.add(ClearSearch());
                    },
                    onSubmitted: (value) {
                      searchStaffBloc.add(
                        SearchMedia(client: client, searchContent: value),
                      );
                    },
                    onChanged: (p0) {},
                    searchCubit: SearchMediaCubit(),
                    hint: 'Search staff...',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            BlocBuilder<SearchStaffBloc, SearchBaseState>(
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
                          child: EntityGrid<Fragment$SearchResultStaff>(
                            list:
                                state.list as List<Fragment$SearchResultStaff?>,
                            hasNextPage: state.hasNextPage,
                          ),
                        );
                } else {
                  return const DiscoverStaffSection();
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
