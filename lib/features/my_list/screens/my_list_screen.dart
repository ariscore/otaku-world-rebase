import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:otaku_world/bloc/graphql_client/graphql_client_cubit.dart';
import 'package:otaku_world/bloc/media_list/media_list/media_list_bloc.dart';
import 'package:otaku_world/bloc/viewer/viewer_bloc.dart';
import 'package:otaku_world/core/ui/error_text.dart';
import 'package:otaku_world/core/ui/media_section/scroll_to_top_button.dart';
import 'package:otaku_world/features/my_list/widgets/list_search_app_bar.dart';
import 'package:otaku_world/features/my_list/widgets/list_section.dart';
import 'package:otaku_world/features/my_list/widgets/switch_media.dart';
import 'package:otaku_world/graphql/__generated/graphql/schema.graphql.dart';

import '../../../bloc/bottom_nav_bar/bottom_nav_bar_cubit.dart';
import '../widgets/list_sections.dart';

class MyListScreen extends StatefulHookWidget {
  const MyListScreen({super.key});

  @override
  State<MyListScreen> createState() => _MyListScreenState();
}

class _MyListScreenState extends State<MyListScreen> {
  bool isAnime = true;
  MediaListBloc? animeListBloc, mangaListBloc;

  @override
  Widget build(BuildContext context) {
    final client = context.read<GraphqlClientCubit>().getClient()!;
    final scrollController = useScrollController();

    final bottomBarBloc = context.read<BottomNavBarCubit>();

    useEffect(() {
      scrollController.addListener(() {
        log('Min extent: Pixels> ${scrollController.position.pixels} | ${scrollController.position.minScrollExtent}');
        if (scrollController.position.pixels <
                scrollController.position.minScrollExtent + 150 &&
            bottomBarBloc.state is BottomNavBarNotVisible) {
          bottomBarBloc.showBottomBar();
        }

        final direction = scrollController.position.userScrollDirection;
        if (direction == ScrollDirection.forward) {
          if (bottomBarBloc.state is BottomNavBarNotVisible) {
            bottomBarBloc.showBottomBar();
          }
        } else if (direction == ScrollDirection.reverse) {
          if (bottomBarBloc.state is BottomNavBarVisible) {
            bottomBarBloc.hideBottomBar();
          }
        }
      });
      return null;
    }, const []);

    return Scaffold(
      floatingActionButton: ScrollToTopFAB(
        controller: scrollController,
        tag: 'my_list',
      ),
      body: SingleChildScrollView(
        controller: scrollController,
        child: Column(
          children: [
            ListSearchAppBar(
              onApplyFilters: () {

              },
            ),
            SwitchMedia(
              isAnime: isAnime,
              onSwitch: (value) {
                setState(() {
                  isAnime = value;
                });
              },
            ),
            const SizedBox(height: 10),
            BlocBuilder<ViewerBloc, ViewerState>(
              builder: (context, state) {
                if (state is ViewerLoading) {
                  return const CircularProgressIndicator();
                } else if (state is ViewerLoaded) {
                  animeListBloc ??= MediaListBloc(
                    type: Enum$MediaType.ANIME,
                    userId: state.user.id,
                  );
                  mangaListBloc ??= MediaListBloc(
                    type: Enum$MediaType.MANGA,
                    userId: state.user.id,
                  );

                  return isAnime
                      ? _buildAnimeSection(animeListBloc!, client)
                      : _buildAnimeSection(mangaListBloc!, client);
                } else if (state is ViewerError) {
                  return ErrorText(
                    message: state.message,
                    onTryAgain: () {},
                  );
                } else {
                  return const SizedBox();
                }
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAnimeSection(MediaListBloc bloc, GraphQLClient client) {
    return BlocBuilder<MediaListBloc, MediaListState>(
      bloc: bloc,
      builder: (context, state) {
        if (state is MediaListInitial) {
          bloc.add(LoadMediaList(client));
        }
        if (state is MediaListInitial || state is MediaListLoading) {
          return const CircularProgressIndicator();
        } else if (state is MediaListLoaded) {
          return ListSections(sections: state.listCollection.lists);
        } else if (state is MediaListError) {
          return ErrorText(
            message: state.message,
            onTryAgain: () {},
          );
        } else {
          return const SizedBox();
        }
      },
    );
  }

  Widget _buildMangaSection(MediaListBloc bloc, GraphQLClient client) {
    return const SizedBox();
  }
}
