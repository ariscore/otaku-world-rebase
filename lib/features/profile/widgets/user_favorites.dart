import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:otaku_world/bloc/profile/favorite_anime/favorite_anime_bloc.dart';
import 'package:otaku_world/bloc/profile/favorite_characters/favorite_characters_bloc.dart';
import 'package:otaku_world/bloc/profile/favorite_manga/favorite_manga_bloc.dart';
import 'package:otaku_world/bloc/profile/favorite_staff/favorite_staff_bloc.dart';
import 'package:otaku_world/bloc/profile/favorite_studios/favorite_studios_bloc.dart';
import 'package:otaku_world/config/router/router_constants.dart';
import 'package:otaku_world/core/ui/media_section/media_section.dart';
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
      child: CustomScrollView(
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
                    extra: context.read<FavoriteAnimeBloc>(),
                  );
                },
                onMorePressed: () {
                  context.push(
                    RouteConstants.favoriteAnime,
                    extra: context.read<FavoriteAnimeBloc>(),
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
                    extra: context.read<FavoriteMangaBloc>(),
                  );
                },
                onMorePressed: () {
                  context.push(
                    RouteConstants.favoriteManga,
                    extra: context.read<FavoriteMangaBloc>(),
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
                    extra: context.read<FavoriteCharactersBloc>(),
                  );
                },
              );
            }),
          ),
          SliverToBoxAdapter(
            child: Builder(builder: (context) {
              return EntitySection<FavoriteStaffBloc, Fragment$StaffShort>(
                label: 'Staff',
                heroTag: 'favorite_staff',
                onViewAll: () {
                  context.push(
                    RouteConstants.favoriteStaff,
                    extra: context.read<FavoriteStaffBloc>(),
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
                    extra: context.read<FavoriteStudiosBloc>(),
                  );
                },
              );
            }),
          ),
        ],
      ),
    );
  }
}
