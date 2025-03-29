import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:otaku_world/bloc/graphql_client/graphql_client_cubit.dart';
import 'package:otaku_world/bloc/media_list/media_list/media_list_bloc.dart';
import 'package:otaku_world/bloc/viewer/viewer_bloc.dart';
import 'package:otaku_world/constants/string_constants.dart';
import 'package:otaku_world/core/types/enums.dart';
import 'package:otaku_world/core/ui/media_section/scroll_to_top_button.dart';
import 'package:otaku_world/core/ui/placeholders/anime_character_placeholder.dart';
import 'package:otaku_world/features/my_list/widgets/list_search_app_bar.dart';
import 'package:otaku_world/features/my_list/widgets/my_list_shimmer.dart';
import 'package:otaku_world/features/my_list/widgets/switch_media.dart';
import 'package:otaku_world/generated/assets.dart';
import 'package:otaku_world/graphql/__generated/graphql/schema.graphql.dart';
import 'package:otaku_world/theme/colors.dart';
import 'package:otaku_world/utils/extensions.dart';

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
    final viewerBloc = context.read<ViewerBloc>();
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
      body: RefreshIndicator(
        backgroundColor: AppColors.raisinBlack,
        onRefresh: () {
          return Future.delayed(const Duration(seconds: 1), () {
            animeListBloc?.add(LoadMediaList(client));
            mangaListBloc?.add(LoadMediaList(client));
          });
        },
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: ListSearchAppBar(
                onApplyFilters: () {},
              ),
            ),
            SliverToBoxAdapter(
              child: SwitchMediaDropdown(
                initialValue:
                    isAnime ? Enum$MediaType.ANIME : Enum$MediaType.MANGA,
                onChanged: (value) {
                  setState(() {
                    isAnime = value == Enum$MediaType.ANIME.displayTitle();
                  });
                },
              ),
            ),
            BlocBuilder<ViewerBloc, ViewerState>(
              builder: (context, state) {
                if (state is ViewerInitial || state is ViewerLoading) {
                  return const MyListShimmer();
                } else if (state is ViewerLoaded) {
                  log('Viewer loaded state');
                  animeListBloc ??= MediaListBloc(
                    type: Enum$MediaType.ANIME,
                    userId: state.user.id,
                  );
                  mangaListBloc ??= MediaListBloc(
                    type: Enum$MediaType.MANGA,
                    userId: state.user.id,
                  );

                  return isAnime
                      ? _buildMediaSection(
                          client,
                          bloc: animeListBloc!,
                          type: Enum$MediaType.ANIME,
                        )
                      : _buildMediaSection(
                          client,
                          bloc: mangaListBloc!,
                          type: Enum$MediaType.MANGA,
                        );
                } else if (state is ViewerError) {
                  log('Viewer error state');
                  return _buildErrorWidget(
                    type: state.type,
                    onTryAgain: () {
                      viewerBloc.add(LoadViewer(client));
                    },
                    message: state.message,
                  );
                } else {
                  return const SliverToBoxAdapter();
                }
              },
            ),
          ],
        ),
        // child: SingleChildScrollView(
        //   controller: scrollController,
        //   child: Column(
        //     children: [
        //       ListSearchAppBar(
        //         onApplyFilters: () {},
        //       ),
        //       SwitchMediaDropdown(
        //         initialValue:
        //             isAnime ? Enum$MediaType.ANIME : Enum$MediaType.MANGA,
        //         onChanged: (value) {
        //           setState(() {
        //             isAnime = value == Enum$MediaType.ANIME.displayTitle();
        //           });
        //         },
        //       ),
        //       const SizedBox(height: 10),
        //       BlocBuilder<ViewerBloc, ViewerState>(
        //         builder: (context, state) {
        //           if (state is ViewerLoading) {
        //             return const CircularProgressIndicator();
        //           } else if (state is ViewerLoaded) {
        //             animeListBloc ??= MediaListBloc(
        //               type: Enum$MediaType.ANIME,
        //               userId: state.user.id,
        //             );
        //             mangaListBloc ??= MediaListBloc(
        //               type: Enum$MediaType.MANGA,
        //               userId: state.user.id,
        //             );
        //
        //             return isAnime
        //                 ? _buildMediaSection(
        //                     client,
        //                     bloc: animeListBloc!,
        //                     type: Enum$MediaType.ANIME,
        //                   )
        //                 : _buildMediaSection(
        //                     client,
        //                     bloc: mangaListBloc!,
        //                     type: Enum$MediaType.MANGA,
        //                   );
        //           } else if (state is ViewerError) {
        //             return ErrorText(
        //               message: state.message,
        //               onTryAgain: () {},
        //             );
        //           } else {
        //             return const SizedBox();
        //           }
        //         },
        //       ),
        //     ],
        //   ),
        // ),
      ),
    );
  }

  Widget _buildMediaSection(
    GraphQLClient client, {
    required MediaListBloc bloc,
    required Enum$MediaType type,
  }) {
    // return const MyListShimmer();
    return BlocBuilder<MediaListBloc, MediaListState>(
      bloc: bloc,
      builder: (context, state) {
        if (state is MediaListInitial) {
          bloc.add(LoadMediaList(client));
        }
        if (state is MediaListInitial || state is MediaListLoading) {
          return const MyListShimmer();
        } else if (state is MediaListLoaded) {
          return ListSections(
            sections: state.listCollection.lists,
            type: type,
          );
        } else if (state is MediaListError) {
          return _buildErrorWidget(
            type: state.type,
            onTryAgain: () {
              bloc.add(LoadMediaList(client));
            },
            message: state.message,
          );
        } else {
          return const SizedBox();
        }
      },
    );
  }

  Widget _buildErrorWidget({
    required ErrorType type,
    required VoidCallback onTryAgain,
    required String message,
  }) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.only(top: 100),
        child: AnimeCharacterPlaceholder(
          asset: type == ErrorType.noInternet
              ? Assets.charactersNoInternet
              : Assets.charactersChillBoy,
          heading: type == ErrorType.noInternet
              ? StringConstants.noInternet
              : null,
          subheading: message,
          width: 230,
          height: 230,
          isError: true,
          onTryAgain: onTryAgain,
        ),
      ),
    );
  }
}
