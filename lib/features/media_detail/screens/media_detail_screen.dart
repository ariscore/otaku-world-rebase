import 'dart:developer' as dev;

import 'package:extended_nested_scroll_view/extended_nested_scroll_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:intrinsic_size_builder/intrinsic_size_builder.dart';
import 'package:otaku_world/bloc/media_detail/reviews/media_review_bloc.dart';
import 'package:otaku_world/bloc/media_detail/social/social_bloc.dart';
import 'package:otaku_world/bloc/media_detail/staff/staff_bloc.dart';
import 'package:otaku_world/core/ui/appbars/simple_app_bar.dart';
import 'package:otaku_world/core/ui/shimmers/detail_screens/screens/media_detail_shimmer.dart';
import 'package:otaku_world/features/media_detail/widgets/media_app_bar.dart';
import 'package:otaku_world/features/media_detail/widgets/media_floating_action_button.dart';
import 'package:otaku_world/features/profile/widgets/keep_alive_tab.dart';
import 'package:otaku_world/graphql/__generated/graphql/fragments.graphql.dart';

import '../../../bloc/graphql_client/graphql_client_cubit.dart';
import '../../../bloc/media_detail/characters/characters_bloc.dart';
import '../../../bloc/media_detail/media_detail_bloc.dart';
import '../../../bloc/viewer/viewer_bloc.dart';
import '../../../core/ui/image_viewer.dart';
import '../../../core/ui/images/cover_image.dart';
import '../../../core/ui/placeholders/anime_character_placeholder.dart';
import '../../../generated/assets.dart';
import '../../../graphql/__generated/graphql/schema.graphql.dart';
import '../../../utils/ui_utils.dart';
import '../tabs/characters/characters.dart' as ch;
import '../tabs/overview/overview.dart';
import '../tabs/reviews/reviews.dart';
import '../tabs/social/social.dart';
import '../tabs/staff/staff.dart';
import '../tabs/stats/stats.dart';
import '../widgets/info_col.dart';
import '../widgets/status_row.dart';

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
      onPopInvokedWithResult: (didPop, _) {
        if (didPop) return;
        _onPopInvoked(context);
      },
      child: BlocBuilder<MediaDetailBloc, MediaDetailState>(
        builder: (context, state) {
          if (state is MediaDetailInitial) {
            context.read<MediaDetailBloc>().add(
                  LoadMediaDetail(
                    id: mediaId,
                    client: client,
                  ),
                );
          } else if (state is MediaDetailLoading) {
            return const MediaDetailShimmer();
          } else if (state is MediaDetailLoaded) {
            final media = state.media;

            dev.log(
              "query Id : $mediaId ---> State Id : ${media.id}  Key Id : ---> $key ",
              name: "MediaDetailScreenMatched",
            );

            return IntrinsicSizeBuilder(
              firstFrameWidget: const MediaDetailShimmer(),
              subject: buildPosterContent(
                context,
                media,
                tabController,
                tabs,
              ),
              builder: (context, subjectSize, subject) => Scaffold(
                body: ExtendedNestedScrollView(
                  headerSliverBuilder: (context, innerBoxIsScrolled) {
                    return [
                      MediaAppBar(
                        media: media,
                        tabController: tabController,
                        tabs: tabs,
                        expandedHeight:
                            subjectSize.height + (kToolbarHeight - 30),
                        backgroundWidget: subject,
                      ),
                    ];
                  },
                  onlyOneScrollInBody: true,
                  body: TabBarView(
                    controller: tabController,
                    children: tabs.map((tab) {
                      return _buildTabContent(tab);
                    }).toList(),
                  ),
                ),
                floatingActionButton:
                    BlocBuilder<MediaDetailBloc, MediaDetailState>(
                  builder: (context, state) {
                    final user = context.read<ViewerBloc>().getNullableUser();
                    if (state is MediaDetailLoaded && user != null) {
                      return MediaFloatingActionButton(
                        tabController: tabController,
                        media: Fragment$ListEntryMedia(
                          id: mediaId,
                          title: Fragment$ListEntryMedia$title(
                            userPreferred:
                                state.media.title?.userPreferred ?? '',
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
          return Scaffold(
            appBar: const SimpleAppBar(),
            body: AnimeCharacterPlaceholder(
              asset: Assets.charactersCigaretteGirl,
              height: 300,
              heading: 'Something went wrong!',
              subheading:
                  'Please check your internet connection or try again later.',
              onTryAgain: () {
                context.read<MediaDetailBloc>().add(
                      LoadMediaDetail(
                        id: mediaId,
                        client: client,
                      ),
                    );
              },
              isError: true,
            ),
          );
        },
      ),
    );
  }

  Widget _buildTabContent(String tab) {
    switch (tab) {
      case 'Overview':
        return const KeepAliveTab(
          child: Overview(),
        );
      case 'Characters':
        return KeepAliveTab(
          child: BlocProvider(
            create: (context) => CharactersBloc(mediaId: mediaId),
            child: const ch.Characters(),
          ),
        );
      case 'Staff':
        return KeepAliveTab(
          child: BlocProvider(
            create: (context) => StaffBloc(mediaId: mediaId),
            child: const Staff(),
          ),
        );
      case 'Stats':
        return const KeepAliveTab(child: Stats());
      case 'Social':
        return KeepAliveTab(
          child: BlocProvider(
            create: (context) => SocialBloc(mediaId: mediaId),
            child: const Social(),
          ),
        );
      case 'Reviews':
        return KeepAliveTab(
          child: BlocProvider(
            create: (context) => MediaReviewBloc(mediaId: mediaId)
              ..loadData(
                (context.read<GraphqlClientCubit>().state
                        as GraphqlClientInitialized)
                    .client,
              ),
            child: const Reviews(),
          ),
        );
      default:
        return const SizedBox();
    }
  }

  Widget buildPosterContent(
    BuildContext context,
    Fragment$MediaDetailed media,
    TabController tabController,
    List<String> tabs,
  ) {
    final size = MediaQuery.sizeOf(context);
    final height = size.height;
    final width = size.width;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: UIUtils.getWidgetHeight(
            targetWidgetHeight: 420,
            screenHeight: height,
          ),
          child: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional.topStart,
                child: Container(
                  foregroundDecoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment(0.00, -1.00),
                      end: Alignment(0, 1),
                      colors: [Color(0x001F1F1F), Color(0xFF202020)],
                    ),
                  ),
                  height: UIUtils.getWidgetHeight(
                    targetWidgetHeight: 220,
                    screenHeight: height,
                  ),
                  width: width,
                  child: GestureDetector(
                    onTap: () => media.bannerImage != null
                        ? showImage(
                            context,
                            media.bannerImage.toString(),
                            tag:
                                '${media.bannerImage}${DateTime.now().millisecond}',
                          )
                        : null,
                    child: CoverImage(
                      imageUrl: media.bannerImage.toString(),
                      type: media.type!,
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 15,
                right: 10,
                child: SizedBox(
                  width: width - 25,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(
                        height: UIUtils.getWidgetHeight(
                          targetWidgetHeight: 292,
                          screenHeight: height,
                        ),
                        width: UIUtils.getWidgetWidth(
                          targetWidgetWidth: 200,
                          screenWidth: width,
                        ),
                        child: GestureDetector(
                          onTap: () => media.coverImage?.extraLarge != null
                              ? showImage(
                                  context,
                                  media.coverImage!.extraLarge!,
                                  tag:
                                      '${media.coverImage!.extraLarge!}${DateTime.now().millisecond}',
                                )
                              : null,
                          child: CoverImage(
                            imageUrl: media.coverImage!.extraLarge!,
                            type: media.type!,
                            // placeHolderName: Assets.placeholders210x310,
                          ),
                        ),
                      ),
                      InfoColumn(
                        averageScore: media.averageScore.toString(),
                        favourites: media.favourites.toString(),
                        popularity: media.popularity.toString(),
                        startDate: media.startDate?.year == null
                            ? ""
                            : media.startDate!.year.toString(),
                        episodes: media.episodes.toString(),
                        duration: media.duration.toString(),
                        format: media.format,
                        mediaType: media.type ?? Enum$MediaType.$unknown,
                        chapters: media.chapters.toString(),
                        volumes: media.volumes.toString(),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 15,
            right: 12,
          ),
          child: Text(
            media.title!.userPreferred.toString(),
            style: const TextStyle(
              overflow: TextOverflow.ellipsis,
              color: Colors.white,
              fontSize: 20,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
              // height: 0,
            ),
            maxLines: 5,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 15,
            right: 12,
            bottom: 8,
          ),
          child: StatusRow(
            airingSchedule: media.airingSchedule,
            status: media.status,
            fontSize: 14,
            alignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
          ),
        ),
      ],
    );
  }

  void _onPopInvoked(BuildContext context) {
    if (context.canPop()) {
      context.pop();
    } else {
      context.go('/home');
    }
  }
}
