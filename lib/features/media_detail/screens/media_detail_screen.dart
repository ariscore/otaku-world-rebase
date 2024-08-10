import 'dart:developer' as dev;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:otaku_world/graphql/__generated/graphql/fragments.graphql.dart';
import 'package:otaku_world/graphql/__generated/graphql/schema.graphql.dart';

import '../../../bloc/graphql_client/graphql_client_cubit.dart';
import '../../../bloc/media_detail/characters/characters_bloc.dart';
import '../../../bloc/media_detail/media_detail_bloc.dart';
import '../../../core/ui/buttons/back_button.dart';
import '../../../core/ui/image_viewer.dart';
import '../../../core/ui/images/cover_image.dart';
import '../../../core/ui/tabs/custom_tab_bar.dart';
import '../../../generated/assets.dart';
import '../../../theme/colors.dart';
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
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

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
      onPopInvoked: (didPop) => _onPopInvoked(context),
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

              return NestedScrollView(
                headerSliverBuilder: (context, innerBoxIsScrolled) {
                  return [
                    buildAppBar(
                      context,
                      tabController,
                      media,
                      height,
                      width,
                      tabs,
                      innerBoxIsScrolled,
                    ),
                  ];
                },
                body: TabBarView(
                  controller: tabController,
                  children: [
                    const Overview(),
                    BlocProvider(
                      create: (context) =>
                      CharactersBloc(mediaId: mediaId)..loadData(client),
                      child: const ch.Characters(),
                    ),
                    const Staff(),
                    const Stats(),
                    const Social(),
                    const Reviews(),
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
}

Widget buildAppBar(
    BuildContext context,
    TabController tabController,
    Fragment$MediaDetailed media,
    double height,
    double width,
    List<String> tabs,
    bool innerBoxScrolled,
    ) {
  return SliverAppBar(
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(20),
          bottomLeft: Radius.circular(20),
        )),
    pinned: true,
    expandedHeight: UIUtils.getWidgetHeight(
      targetWidgetHeight: 515,
      screenHeight: height,
    ),
    leading: CustomBackButton(
      onPressed: () {
        _onPopInvoked(context);
      },
    ),
    backgroundColor: AppColors.raisinBlack,
    surfaceTintColor: AppColors.raisinBlack,
    actions: [
      IconButton(
        onPressed: () {},
        icon: SvgPicture.asset(
          Assets.iconsFavourite,
        ),
      ),
      IconButton(
        onPressed: () {},
        icon: SvgPicture.asset(
          Assets.iconsMoreVertical,
        ),
      ),
    ],
    flexibleSpace: FlexibleSpaceBar(
      collapseMode: CollapseMode.parallax,
      background: buildPosterContent(
        context,
        media,
        height,
        width,
        tabController,
        tabs,
      ),
    ),
    bottom: CustomTabBar(
      controller: tabController,
      tabs: tabs,
    ),
  );
}

Widget buildPosterContent(
    BuildContext context,
    Fragment$MediaDetailed media,
    double height,
    double width,
    TabController tabController,
    List<String> tabs,
    ) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SizedBox(
        height: UIUtils.getWidgetHeight(
          targetWidgetHeight: 430,
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
                  onTap: () => media.bannerImage != null ? showImage(
                    context,
                    media.bannerImage.toString(),
                    tag: media.bannerImage.toString(),
                  ): null ,
                  child: Hero(
                    tag: media.bannerImage.toString(),
                    child: CoverImage(
                      imageUrl: media.bannerImage.toString(),
                      type: media.type!,
                    ),
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
                        onTap: () =>  media.coverImage?.extraLarge != null ? showImage(
                          context,
                          media.coverImage!.extraLarge.toString(),
                          tag: media.coverImage!.extraLarge.toString(),
                        ) : null,
                        child: Hero(
                          tag:media.coverImage!.extraLarge.toString(),
                          child: CoverImage(
                            imageUrl: media.coverImage!.extraLarge.toString(),
                            type: media.type!,
                            // placeHolderName: Assets.placeholders210x310,
                          ),
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
            height: 0,
          ),
          maxLines: 1,
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
        ),
      ),
      // CustomTabBar(
      //   controller: tabController,
      //   tabs: tabs,
      // ),
      // const SizedBox(
      //   height: 10,
      // ),
    ],
  );
}

void lockOrientationToPortrait() {
  SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ],
  );
}

void resetOrientation() {
  SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ],
  );
}

Widget _buildLoading(BuildContext context) {
  return const Center(child: CircularProgressIndicator());
}

_onPopInvoked(BuildContext context) {
  dev.log('Pop called!', name: 'MediaDetail');
  // context.read<MediaDetailBloc>().add(ResetMediaData());
  if (context.canPop()) {
    context.pop();
  } else {
    context.go('/home');
  }
}
