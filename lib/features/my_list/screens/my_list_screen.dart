import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:otaku_world/bloc/filter/search/search_media_cubit.dart';
import 'package:otaku_world/bloc/graphql_client/graphql_client_cubit.dart';
import 'package:otaku_world/bloc/media_list/media_list/media_list_bloc.dart';
import 'package:otaku_world/bloc/media_list/save_list_entry/save_list_entry_bloc.dart';
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
import 'package:otaku_world/utils/ui_utils.dart';

import '../../../bloc/bottom_nav_bar/bottom_nav_bar_cubit.dart';
import '../../../core/ui/widgets/double_back_pop_widget.dart';
import '../widgets/list_sections.dart';

class MyListScreen extends StatefulHookWidget {
  const MyListScreen({super.key});

  @override
  State<MyListScreen> createState() => _MyListScreenState();
}

class _MyListScreenState extends State<MyListScreen> {
  bool isAnime = true;
  MediaListBloc? animeListBloc, mangaListBloc;
  final searchAnimeCubit = SearchMediaCubit(),
      searchMangaCubit = SearchMediaCubit();

  @override
  Widget build(BuildContext context) {
    final client = context.read<GraphqlClientCubit>().getClient()!;

    final viewerBloc = context.read<ViewerBloc>();
    final scrollController = useScrollController();

    final bottomBarBloc = context.read<BottomNavBarCubit>();

    useEffect(() {
      scrollController.addListener(() {
        FocusScope.of(context).unfocus();
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

    return DoubleBackPopWidget(
      child: SafeArea(
        child: BlocProvider(
          create: (context) => SaveListEntryBloc(client),
          child: BlocListener<SaveListEntryBloc, SaveListEntryState>(
            listener: _listBlocListener,
            child: Scaffold(
              floatingActionButton: ScrollToTopFAB(
                controller: scrollController,
                tag: 'my_list',
              ),
              body: RefreshIndicator(
                backgroundColor: AppColors.raisinBlack,
                onRefresh: () => _refresh(client),
                child: BlocBuilder<ViewerBloc, ViewerState>(
                  builder: (context, state) {
                    if (state is ViewerInitial || state is ViewerLoading) {
                      return const MyListShimmer(
                        showFilters: false,
                        isSliver: false,
                      );
                    } else if (state is ViewerLoaded) {
                      animeListBloc ??= context.read<AnimeListBloc>()
                        ..setUserId(
                          viewerBloc.getUser().id,
                        );
                      mangaListBloc ??= context.read<MangaListBloc>()
                        ..setUserId(
                          viewerBloc.getUser().id,
                        );

                      return isAnime
                          ? _buildMediaSection(
                              client,
                              scrollController,
                              bloc: animeListBloc!,
                              type: Enum$MediaType.ANIME,
                            )
                          : _buildMediaSection(
                              client,
                              scrollController,
                              bloc: mangaListBloc!,
                              type: Enum$MediaType.MANGA,
                            );
                    } else if (state is ViewerError) {
                      return _buildErrorWidget(
                        type: state.type,
                        onTryAgain: () {
                          viewerBloc.add(LoadViewer(client));
                        },
                        message: state.message,
                        isSliver: false,
                      );
                    } else {
                      return const SliverToBoxAdapter();
                    }
                  },
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildMediaSection(
    GraphQLClient client,
    ScrollController controller, {
    required MediaListBloc bloc,
    required Enum$MediaType type,
  }) {
    return BlocBuilder<MediaListBloc, MediaListState>(
      bloc: bloc,
      builder: (context, state) {
        if (state is MediaListInitial) {
          bloc.add(LoadMediaList(client: client));
        }
        if (state is MediaListInitial || state is MediaListLoading) {
          return const MyListShimmer(showFilters: true, isSliver: false);
        } else if (state is MediaListLoaded) {
          return CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: ListSearchAppBar(
                  listBloc: bloc,
                  searchCubit: type == Enum$MediaType.ANIME
                      ? searchAnimeCubit
                      : searchMangaCubit,
                  type: type,
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
              (state.listCollection.lists?.isEmpty ?? true)
                  ? const SliverToBoxAdapter(
                      child: AnimeCharacterPlaceholder(
                        asset: Assets.charactersSchoolGirl,
                        height: 300,
                        heading: MyListConstants.emptyListHeading,
                        subheading: MyListConstants.emptyListSubheading,
                      ),
                    )
                  : SliverPadding(
                      padding: const EdgeInsets.only(bottom: 48),
                      sliver: ListSections(
                        sections: state.listCollection.lists,
                        type: type,
                        scoreFormat: bloc.options?.scoreFormat ??
                            Enum$ScoreFormat.POINT_10,
                      ),
                    ),
            ],
          );
        } else if (state is MediaListError) {
          return _buildErrorWidget(
            type: state.type,
            onTryAgain: () {
              bloc.add(LoadMediaList(client: client));
            },
            message: state.message,
            isSliver: false,
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
    required bool isSliver,
  }) {
    final widget = Padding(
      padding: EdgeInsets.only(top: isSliver ? 100 : 0),
      child: AnimeCharacterPlaceholder(
        asset: type == ErrorType.noInternet
            ? Assets.charactersNoInternet
            : Assets.charactersChillBoy,
        heading:
            type == ErrorType.noInternet ? StringConstants.noInternet : null,
        subheading: message,
        width: 230,
        height: 230,
        isError: true,
        onTryAgain: onTryAgain,
      ),
    );

    return isSliver
        ? SliverToBoxAdapter(
            child: widget,
          )
        : widget;
  }

  Future<void> _refresh(GraphQLClient client) {
    return Future.delayed(Duration.zero, () {
      searchAnimeCubit.searchController.clear();
      searchMangaCubit.searchController.clear();
      animeListBloc?.add(LoadMediaList(client: client));
      mangaListBloc?.add(LoadMediaList(client: client));
    });
  }

  void _listBlocListener(BuildContext context, SaveListEntryState state) {
    if (state is IncrementingEpisode) {
      UIUtils.showProgressDialog(context);
    } else if (state is IncrementEpisodeError) {
      UIUtils.hideProgressDialog(context);
      UIUtils.showSnackBar(context, state.message);
    } else if (state is IncrementedEpisode) {
      log('Success: ${state.entry}');
      UIUtils.hideProgressDialog(context);
      if (isAnime) {
        animeListBloc?.add(UpdateListEntry(entry: state.entry));
      } else {
        mangaListBloc?.add(UpdateListEntry(entry: state.entry));
      }
    }
  }
}
