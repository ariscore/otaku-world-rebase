import 'dart:developer' as dev;

import 'package:extended_nested_scroll_view/extended_nested_scroll_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:otaku_world/bloc/paginated_data/paginated_data_bloc.dart';
import 'package:otaku_world/bloc/staff_detail/media/staff_media_bloc.dart';
import 'package:otaku_world/bloc/staff_detail/staff_detail_bloc.dart';
import 'package:otaku_world/bloc/staff_detail/voice/staff_voice_bloc.dart';
import 'package:otaku_world/features/profile/widgets/keep_alive_tab.dart';
import 'package:otaku_world/features/staff_detail/tabs/anime/staff_anime_tab.dart';
import 'package:otaku_world/features/staff_detail/tabs/manga/staff_manga_tab.dart';
import 'package:otaku_world/features/staff_detail/tabs/overview/staff_overview_tab.dart';
import 'package:otaku_world/features/staff_detail/tabs/voice/staff_voice_tab.dart';
import 'package:otaku_world/graphql/__generated/graphql/schema.graphql.dart';
import 'package:otaku_world/theme/colors.dart';

import '../../bloc/graphql_client/graphql_client_cubit.dart';
import 'widgets/staff_app_bar.dart';

class StaffDetailScreen extends HookWidget {
  const StaffDetailScreen({super.key, required this.staffId});

  final int staffId;

  static final tabs = ['Overview', 'Voice', 'Anime', 'Manga'];

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
        extendBodyBehindAppBar: false,
        body: BlocBuilder<StaffDetailBloc, StaffDetailState>(
          builder: (context, state) {
            if (state is StaffDetailInitial || state is StaffDetailLoading) {
              return _buildLoading();
            } else if (state is StaffDetailLoaded) {
              final staff = state.staff;

              dev.log(
                "Query Id: $staffId ---> State Id: ${staff.id} ---> Key: $key",
                name: "StaffDetailScreen",
              );

              return ExtendedNestedScrollView(
                headerSliverBuilder: (context, innerBoxIsScrolled) {
                  return [
                    StaffAppBar(
                      staff: staff,
                      tabController: tabController,
                      tabs: tabs,
                    ),
                  ];
                },
                onlyOneScrollInBody: true,
                pinnedHeaderSliverHeightBuilder: () {
                  return 45 + kToolbarHeight;
                },
                body: TabBarView(
                  controller: tabController,
                  children: [
                    KeepAliveTab(
                      child: StaffOverviewTab(
                        staff: staff,
                      ),
                    ),
                    KeepAliveTab(
                      child: BlocProvider(
                        create: (context) => StaffVoiceBloc(staffId: staffId)
                          ..add(
                            LoadData(client),
                          ),
                        child: const StaffVoiceTab(),
                      ),
                    ),
                    KeepAliveTab(
                      child: BlocProvider(
                        create: (context) => StaffMediaBloc(
                          staffId: staffId,
                          mediaType: Enum$MediaType.ANIME,
                        )..add(
                            LoadData(client),
                          ),
                        child: const StaffAnimeTab(),
                      ),
                    ),
                    KeepAliveTab(
                      child: BlocProvider(
                        create: (context) => StaffMediaBloc(
                          staffId: staffId,
                          mediaType: Enum$MediaType.MANGA,
                        )..add(
                            LoadData(client),
                          ),
                        child: const StaffMangaTab(),
                      ),
                    ),
                  ],
                ),
              );
            }

            return const Center(
              child: Text(
                'Unknown State',
                style: TextStyle(color: AppColors.white),
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

  Widget _buildLoading() {
    return const Center(child: CircularProgressIndicator());
  }
}
