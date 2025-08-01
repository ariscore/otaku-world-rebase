import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:otaku_world/bloc/paginated_data/paginated_data_bloc.dart';
import 'package:otaku_world/bloc/profile/favorite_anime/favorite_anime_bloc.dart';
import 'package:otaku_world/bloc/profile/favorite_characters/favorite_characters_bloc.dart';
import 'package:otaku_world/bloc/profile/favorite_manga/favorite_manga_bloc.dart';
import 'package:otaku_world/bloc/profile/favorite_staff/favorite_staff_bloc.dart';
import 'package:otaku_world/bloc/profile/favorite_studios/favorite_studios_bloc.dart';
import 'package:otaku_world/config/router/router_constants.dart';
import 'package:otaku_world/core/ui/media_section/media_section.dart';
import 'package:otaku_world/core/ui/placeholders/anime_character_placeholder.dart';
import 'package:otaku_world/core/ui/shimmers/detail_screens/shimmer_details.dart';
import 'package:otaku_world/graphql/__generated/graphql/fragments.graphql.dart';

import '../../discover/widgets/entity_section.dart';

class UserFavorites extends StatelessWidget {
  const UserFavorites({super.key, required this.userId});

  final int userId;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FavoriteAnimeBloc(userId: userId),
        ),
        BlocProvider(
          create: (context) => FavoriteMangaBloc(userId: userId),
        ),
        BlocProvider(
          create: (context) => FavoriteCharactersBloc(userId: userId),
        ),
        BlocProvider(
          create: (context) => FavoriteStaffBloc(userId: userId),
        ),
        BlocProvider(
          create: (context) => FavoriteStudiosBloc(userId: userId),
        ),
      ],
      child: BlocBuilder<FavoriteAnimeBloc, PaginatedDataState>(
        builder: (context, animeState) {
          return BlocBuilder<FavoriteMangaBloc, PaginatedDataState>(
            builder: (context, mangaState) {
              return BlocBuilder<FavoriteCharactersBloc, PaginatedDataState>(
                builder: (context, characterState) {
                  return BlocBuilder<FavoriteStaffBloc, PaginatedDataState>(
                    builder: (context, staffState) {
                      return BlocBuilder<FavoriteStudiosBloc,
                          PaginatedDataState>(
                        builder: (context, studioState) {
                          if (animeState is PaginatedDataLoaded &&
                              animeState.list.isEmpty &&
                              mangaState is PaginatedDataLoaded &&
                              mangaState.list.isEmpty &&
                              characterState is PaginatedDataLoaded &&
                              characterState.list.isEmpty &&
                              staffState is PaginatedDataLoaded &&
                              staffState.list.isEmpty &&
                              studioState is PaginatedDataLoaded &&
                              studioState.list.isEmpty) {
                            return const AnimeCharacterPlaceholder(
                              asset: Assets.charactersErenYeager,
                              heading: 'Nothing to See Here... Yet!',
                              subheading:
                                  ' Tap the heart icon on your favorite anime, '
                                      'manga, or characters to add them to your list.',
                            );
                          }

                          return CustomScrollView(
                            slivers: [
                              // SliverOverlapInjector(
                              //   handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                              // ),
                              SliverToBoxAdapter(
                                child: Builder(builder: (context) {
                                  return MediaSection<FavoriteAnimeBloc>(
                                    label: 'Anime',
                                    onSliderPressed: () {
                                      context.push(
                                        RouteConstants.favoriteAnimeSlider,
                                        extra:
                                            context.read<FavoriteAnimeBloc>(),
                                      );
                                    },
                                    onMorePressed: () {
                                      context.push(
                                        RouteConstants.favoriteAnime,
                                        extra:
                                            context.read<FavoriteAnimeBloc>(),
                                      );
                                    },
                                    heroTag: 'favorite_anime',
                                  );
                                }),
                              ),
                              SliverToBoxAdapter(
                                child: Builder(builder: (context) {
                                  return MediaSection<FavoriteMangaBloc>(
                                    label: 'Manga',
                                    onSliderPressed: () {
                                      context.push(
                                        RouteConstants.favoriteMangaSlider,
                                        extra:
                                            context.read<FavoriteMangaBloc>(),
                                      );
                                    },
                                    onMorePressed: () {
                                      context.push(
                                        RouteConstants.favoriteManga,
                                        extra:
                                            context.read<FavoriteMangaBloc>(),
                                      );
                                    },
                                    heroTag: 'favorite_manga',
                                  );
                                }),
                              ),
                              SliverToBoxAdapter(
                                child: Builder(builder: (context) {
                                  return EntitySection<FavoriteCharactersBloc,
                                      Fragment$CharacterShort>(
                                    label: 'Characters',
                                    heroTag: 'favorite_characters',
                                    onViewAll: () {
                                      context.push(
                                        RouteConstants.favoriteCharacters,
                                        extra: context
                                            .read<FavoriteCharactersBloc>(),
                                      );
                                    },
                                  );
                                }),
                              ),
                              SliverToBoxAdapter(
                                child: Builder(builder: (context) {
                                  return EntitySection<FavoriteStaffBloc,
                                      Fragment$StaffShort>(
                                    label: 'Staff',
                                    heroTag: 'favorite_staff',
                                    onViewAll: () {
                                      context.push(
                                        RouteConstants.favoriteStaff,
                                        extra:
                                            context.read<FavoriteStaffBloc>(),
                                      );
                                    },
                                  );
                                }),
                              ),
                              SliverToBoxAdapter(
                                child: Builder(builder: (context) {
                                  return EntitySection<FavoriteStudiosBloc,
                                      Fragment$SearchResultStudio>(
                                    label: 'Studios',
                                    heroTag: 'favorite_studios',
                                    onViewAll: () {
                                      context.push(
                                        RouteConstants.favoriteStudios,
                                        extra:
                                            context.read<FavoriteStudiosBloc>(),
                                      );
                                    },
                                  );
                                }),
                              ),
                            ],
                          );
                        },
                      );
                    },
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}
