import 'dart:developer' as dev;

import 'package:extended_nested_scroll_view/extended_nested_scroll_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:otaku_world/bloc/media_detail/reviews/media_review_bloc.dart';
import 'package:otaku_world/bloc/media_detail/social/social_bloc.dart';
import 'package:otaku_world/bloc/media_detail/staff/staff_bloc.dart';
import 'package:otaku_world/features/media_detail/widgets/media_app_bar.dart';
import 'package:otaku_world/features/media_detail/widgets/media_floating_action_button.dart';
import 'package:otaku_world/features/profile/widgets/keep_alive_tab.dart';
import 'package:otaku_world/graphql/__generated/graphql/fragments.graphql.dart';

import '../../../bloc/graphql_client/graphql_client_cubit.dart';
import '../../../bloc/media_detail/characters/characters_bloc.dart';
import '../../../bloc/media_detail/media_detail_bloc.dart';
import '../../../bloc/viewer/viewer_bloc.dart';
import '../../../generated/assets.dart';
import '../../../theme/colors.dart';
import '../tabs/characters/characters.dart' as ch;
import '../tabs/overview/overview.dart';
import '../tabs/reviews/reviews.dart';
import '../tabs/social/social.dart';
import '../tabs/staff/staff.dart';
import '../tabs/stats/stats.dart';

class MediaDetailScreen extends HookWidget {
  const MediaDetailScreen({super.key, required this.mediaId});

  final int mediaId;
  static final tabs = [
    'Overview',
    'Characters',
    'Staff',
    'Stats',
    'Social',
    'Reviews'
  ];

  @override
  Widget build(BuildContext context) {
    dev.log('Key is $key', name: 'Key Value');
    final tabController = useTabController(initialLength: tabs.length);
    final client =
        (context.read<GraphqlClientCubit>().state as GraphqlClientInitialized)
            .client;

    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) {
        if (didPop) return;
        _onPopInvoked(context);
      },
      child: Scaffold(
        body: BlocBuilder<MediaDetailBloc, MediaDetailState>(
          builder: (context, state) {
            if (state is MediaDetailInitial) {
              context.read<MediaDetailBloc>().add(
                    LoadMediaDetail(
                      id: mediaId,
                      client: client,
                    ),
                  );
            } else if (state is MediaDetailLoading) {
              return _buildLoading(context);
            } else if (state is MediaDetailLoaded) {
              final media = state.media;

              dev.log(
                "query Id : $mediaId ---> State Id : ${media.id}  Key Id : ---> $key ",
                name: "MediaDetailScreenMatched",
              );

              return ExtendedNestedScrollView(
                headerSliverBuilder: (context, innerBoxIsScrolled) {
                  return [
                    MediaAppBar(
                      media: media,
                      tabController: tabController,
                      tabs: tabs,
                    ),
                  ];
                },
                onlyOneScrollInBody: true,
                pinnedHeaderSliverHeightBuilder: () {
                  return 50 + kToolbarHeight;
                },
                body: TabBarView(
                  controller: tabController,
                  children: [
                    const KeepAliveTab(
                      child: Overview(),
                    ),
                    KeepAliveTab(
                      child: BlocProvider(
                        create: (context) => CharactersBloc(mediaId: mediaId),
                        child: const ch.Characters(),
                      ),
                    ),
                    KeepAliveTab(
                      child: BlocProvider(
                        create: (context) => StaffBloc(mediaId: mediaId),
                        child: const Staff(),
                      ),
                    ),
                    const KeepAliveTab(
                      child: Stats(),
                    ),
                    KeepAliveTab(
                      child: BlocProvider(
                        create: (context) => SocialBloc(mediaId: mediaId),
                        child: const Social(),
                      ),
                    ),
                    KeepAliveTab(
                      child: BlocProvider(
                        create: (context) =>
                            MediaReviewBloc(mediaId: mediaId)..loadData(client),
                        child: const Reviews(),
                      ),
                    ),
                  ],
                ),
              );
            }
            return const Center(
              child: Text(
                'Unknown State',
                style: TextStyle(
                  color: AppColors.white,
                ),
              ),
            );
          },
        ),
        floatingActionButton: BlocBuilder<MediaDetailBloc, MediaDetailState>(
          builder: (context, state) {
            if (state is MediaDetailLoaded) {
              final user = context.read<ViewerBloc>().getUser();
              return MediaFloatingActionButton(
                tabController: tabController,
                media: Fragment$MediaShort(
                  id: mediaId,
                  title: Fragment$MediaShort$title(
                    userPreferred: state.media.title?.userPreferred ?? '',
                    english: state.media.title?.english ?? '',
                    romaji: state.media.title?.romaji ?? '',
                    native: state.media.title?.native ?? '',
                  ),
                  format: state.media.format,
                  type: state.media.type,
                  episodes: state.media.episodes ?? 0,
                  chapters: state.media.chapters ?? 0,
                  volumes: state.media.volumes ?? 0,
                  status: state.media.status,
                ),
                reviewIndex: tabs.length - 1,
                userId: user.id,
                mediaId: mediaId,
                options: state.options,
                entry: state.media.mediaListEntry,
              );
            } else {
              return const SizedBox();
            }
          },
        ),
      ),
    );
  }

  void _onPopInvoked(BuildContext context) {
    if (context.canPop()) {
      context.pop();
    } else {
      context.go('/home');
    }
  }

  Widget _buildLoading(BuildContext context) {
    return const Center(child: CircularProgressIndicator());
  }
}
