import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:otaku_world/bloc/auth/auth_cubit.dart';
import 'package:otaku_world/bloc/bottom_nav_bar/bottom_nav_bar_cubit.dart';
import 'package:otaku_world/bloc/calendar/week_calendar/day/day_bloc.dart';
import 'package:otaku_world/bloc/calendar/week_calendar/week_calendar_bloc.dart';
import 'package:otaku_world/bloc/filter/collections/external_links/anime/anime_platforms_cubit.dart';
import 'package:otaku_world/bloc/filter/collections/external_links/manga/manga_platforms_cubit.dart';
import 'package:otaku_world/bloc/filter/collections/genres/genre_cubit.dart';
import 'package:otaku_world/bloc/filter/collections/tags/media_tags_cubit.dart';
import 'package:otaku_world/bloc/filter/filter_anime/filter_anime_bloc.dart';
import 'package:otaku_world/bloc/filter/filter_manga/filter_manga_bloc.dart';
import 'package:otaku_world/bloc/graphql_client/graphql_client_cubit.dart';

import 'package:otaku_world/bloc/recommended_anime/recommended_anime_bloc.dart';
import 'package:otaku_world/bloc/recommended_manga/recommended_manga_bloc.dart';
import 'package:otaku_world/bloc/routes/redirect_route_cubit.dart';

import 'package:otaku_world/bloc/trending_anime/trending_anime_bloc.dart';
import 'package:otaku_world/bloc/trending_manga/trending_manga_bloc.dart';
import 'package:otaku_world/bloc/upcoming_episodes/upcoming_episodes_bloc.dart';
import 'package:otaku_world/bloc/viewer/viewer_bloc.dart';
import 'package:otaku_world/theme/app_theme.dart';

import 'bloc/discover/anime/all_time_popular_anime/all_time_popular_anime_bloc.dart';
import 'bloc/discover/anime/top_100_anime/top_100_anime_bloc.dart';
import 'bloc/discover/anime/top_airing_anime/top_airing_anime_bloc.dart';
import 'bloc/discover/anime/top_upcoming_anime/top_upcoming_anime_bloc.dart';
import 'bloc/discover/manga/all_time_popular_manga/all_time_popular_manga_bloc.dart';
import 'bloc/discover/manga/all_time_popular_manga/popular_manhwa_bloc.dart';
import 'bloc/discover/manga/top_100_manga/top_100_manga.dart';
import 'bloc/paginated_data/paginated_data_bloc.dart';
import 'bloc/recommendations/recommendation_anime_bloc.dart';
import 'config/router/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AuthCubit()..authenticate(),
        ),
        BlocProvider(
          create: (context) => GraphqlClientCubit(),
        ),
        BlocProvider(
          create: (context) => RedirectRouteCubit(),
        ),
        BlocProvider(
          create: (context) => BottomNavBarCubit(),
        ),
        // BlocProvider(
        //   create: (context) => ClearTextCubit(),
        // ),
        BlocProvider(
          create: (context) => UpcomingEpisodesBloc(),
        ),
        BlocProvider(
          create: (context) => TrendingAnimeBloc(),
        ),
        BlocProvider(
          create: (context) => RecommendedAnimeBloc(),
        ),
        BlocProvider(
          create: (context) => TrendingMangaBloc(),
        ),
        BlocProvider(
          create: (context) => RecommendedMangaBloc(),
        ),
        BlocProvider(
          create: (context) => WeekCalendarBloc()..add(InitializeCalendar()),
        ),
        BlocProvider(
          create: (context) => RecommendationAnimeBloc(),
        ),
        BlocProvider(
          create: (context) => TopAiringAnimeBloc(),
        ),
        BlocProvider(
          create: (context) => TopUpcomingAnimeBloc(),
        ),
        BlocProvider(
          create: (context) => AllTimePopularAnimeBloc(),
        ),
        BlocProvider(
          create: (context) => AllTimePopularMangaBloc(),
        ),
        BlocProvider(
          create: (context) => PopularManhwaBloc(),
        ),
        BlocProvider(
          create: (context) => Top100AnimeBloc(),
        ),
        BlocProvider(
          create: (context) => Top100MangaBloc(),
        ),
        BlocProvider(
          create: (context) => DayBloc(DateTime.now()),
        ),
        BlocProvider(
          create: (context) => GenreCubit(),
        ),
        BlocProvider(
          create: (context) => MediaTagsCubit(),
        ),
        BlocProvider(
          create: (context) => AnimePlatformsCubit(),
        ),
        BlocProvider(
          create: (context) => MangaPlatformsCubit(),
        ),
        BlocProvider(
          create: (context) => FilterAnimeBloc(),
        ),
        BlocProvider(
          create: (context) => FilterMangaBloc(),
        ),
        BlocProvider(
          create: (context) => ViewerBloc(),
        ),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<AuthCubit, AuthState>(
            listener: (context, state) {
              router.refresh();
              if (state is Authenticated) {
                context
                    .read<GraphqlClientCubit>()
                    .initializeGraphqlClient(state.token);
              } else if (state is UnAuthenticated) {
                context.read<UpcomingEpisodesBloc>().add(ResetData());
                context.read<TrendingAnimeBloc>().add(ResetData());
                context.read<RecommendedAnimeBloc>().add(ResetData());
                context.read<TrendingMangaBloc>().add(ResetData());
                context.read<RecommendedMangaBloc>().add(ResetData());
                context.read<TopAiringAnimeBloc>().add(ResetData());
                context.read<TopUpcomingAnimeBloc>().add(ResetData());
                context.read<AllTimePopularAnimeBloc>().add(ResetData());
                context.read<AllTimePopularMangaBloc>().add(ResetData());
                context.read<Top100AnimeBloc>().add(ResetData());
                context.read<Top100MangaBloc>().add(ResetData());
              }
            },
          ),
          BlocListener<GraphqlClientCubit, GraphqlClientState>(
            listener: (context, state) {
              if (state is GraphqlClientInitialized) {
                // context
                //     .read<UpcomingEpisodesBloc>()
                //     .add(LoadData(state.client));
                // context.read<TrendingAnimeBloc>().add(LoadData(state.client));
                // context
                //     .read<RecommendedAnimeBloc>()
                //     .add(LoadData(state.client));
                // context.read<TrendingMangaBloc>().add(LoadData(state.client));
                // context
                //     .read<RecommendedMangaBloc>()
                //     .add(LoadData(state.client));

                context.read<ViewerBloc>().add(LoadViewer(state.client));
              }
            },
          ),
        ],
        child: MaterialApp.router(
          theme: AppTheme.getTheme(),
          routerConfig: router,
          showSemanticsDebugger: false,
        ),
      ),
    );
  }
}
