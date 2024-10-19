import 'dart:developer' as dev;

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:otaku_world/bloc/media_detail/reviews/media_review_bloc.dart';
import 'package:otaku_world/bloc/media_detail/social/social_bloc.dart';
import 'package:otaku_world/bloc/media_detail/staff/staff_bloc.dart';
import 'package:otaku_world/features/media_detail/widgets/media_app_bar.dart';

import '../../../bloc/graphql_client/graphql_client_cubit.dart';
import '../../../bloc/media_detail/characters/characters_bloc.dart';
import '../../../bloc/media_detail/media_detail_bloc.dart';
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

    // return PopScope(
    //   canPop: false,
    //   onPopInvoked: (didPop) => _onPopInvoked(context),
    //   child: Scaffold(
    //     appBar: buildAppBar(context),
    //     extendBodyBehindAppBar: true,
    //     extendBody: true,
    //     body: BlocBuilder<MediaDetailBloc, MediaDetailState>(
    //       builder: (context, state) {
    //         if (state is MediaDetailInitial) {
    //           context.read<MediaDetailBloc>().add(
    //                 LoadMediaDetail(
    //                   id: mediaId,
    //                   client: client,
    //                 ),
    //               );
    //         } else if (state is MediaDetailLoading) {
    //           return _buildLoading(context);
    //         } else if (state is MediaDetailLoaded) {
    //           final media = state.media;
    //
    //           dev.log(
    //             "query Id : $mediaId ---> State Id : ${media.id}  Key Id : ---> $key ",
    //             name: "MediaDetailScreenMatched",
    //           );
    //           return NestedScrollView(
    //             headerSliverBuilder: (context, innerBoxIsScrolled) {
    //               dev.log("The InnerBox is scrolled : $innerBoxIsScrolled",
    //                   name: "Scrolling Media Detail Screen");
    //               return [
    //                 SliverToBoxAdapter(
    //                   child: buildPosterContent(
    //                     context,
    //                     media,
    //                     height,
    //                     width,
    //                     tabController,
    //                   ),
    //                 ),
    //               ];
    //             },
    //             body: MediaQuery.removePadding(
    //               context: context,
    //               removeTop: true,
    //               child: TabBarView(
    //                 controller: tabController,
    //                 children: [
    //                   const Overview(),
    //                   BlocProvider(
    //                     create: (context) => CharactersBloc(mediaId: mediaId)..loadData(client),
    //                     child: const ch.Characters(),
    //                   ),
    //                   const Staff(),
    //                   const Stats(),
    //                   const Social(),
    //                   const Reviews(),
    //                 ],
    //               ),
    //             ),
    //           );
    //         } else if (state is MediaDetailError) {
    //           return Center(
    //             child: ErrorText(
    //               message: state.message,
    //               onTryAgain: () => context.read<MediaDetailBloc>().add(
    //                     LoadMediaDetail(
    //                       id: mediaId,
    //                       client: client,
    //                     ),
    //                   ),
    //             ),
    //           );
    //         }
    //
    //         return const Center(
    //           child: Text(
    //             'Unknown State',
    //             style: TextStyle(
    //               color: AppColors.white,
    //             ),
    //           ),
    //         );
    //       },
    //     ),
    //   ),
    // );

    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) {
        if (didPop) return;
        _onPopInvoked(context);
      },
      child: Scaffold(
        floatingActionButton: BlocBuilder<MediaDetailBloc, MediaDetailState>(
          builder: (context, state) {
            if (state is MediaDetailLoaded) {
              final String icon = state.media.mediaListEntry == null &&
                      state.media.mediaListEntry?.status == null
                  ? Assets.iconsMediaAdd
                  : Assets.iconsMediaEdit;
              return FloatingActionButton(
                onPressed: () {},
                backgroundColor: AppColors.sunsetOrange,
                child: SvgPicture.asset(
                  icon,
                  width: 30,
                ),
              );
            } else {
              return const SizedBox();
            }
          },
        ),
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

              return NestedScrollView(
                headerSliverBuilder: (context, innerBoxIsScrolled) {
                  return [
                    MediaAppBar(
                      media: media,
                      tabController: tabController,
                      tabs: tabs,
                    ),
                  ];
                },
                body: TabBarView(
                  controller: tabController,
                  children: [
                    const Overview(),
                    BlocProvider(
                      create: (context) => CharactersBloc(mediaId: mediaId),
                      child: const ch.Characters(),
                    ),
                    BlocProvider(
                      create: (context) => StaffBloc(mediaId: mediaId),
                      child: const Staff(),
                    ),
                    const Stats(),
                    BlocProvider(
                      create: (context) => SocialBloc(mediaId: mediaId),
                      child: const Social(),
                    ),
                    BlocProvider(
                      create: (context) =>
                          MediaReviewBloc(mediaId: mediaId)..loadData(client),
                      child: const Reviews(),
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
