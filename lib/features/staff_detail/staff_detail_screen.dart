import 'dart:developer' as dev;

import 'package:extended_nested_scroll_view/extended_nested_scroll_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:otaku_world/bloc/staff_detail/staff_detail_bloc.dart';
import 'package:otaku_world/features/profile/widgets/keep_alive_tab.dart';
import 'package:otaku_world/features/staff_detail/tabs/anime/staff_anime_tab.dart';
import 'package:otaku_world/features/staff_detail/tabs/manga/staff_manga_tab.dart';
import 'package:otaku_world/features/staff_detail/tabs/overview/staff_overview_tab.dart';
import 'package:otaku_world/features/staff_detail/tabs/voice/staff_voice_tab.dart';
import 'package:otaku_world/theme/colors.dart';

import 'widgets/staff_app_bar.dart';

class StaffDetailScreen extends HookWidget {
  const StaffDetailScreen({super.key, required this.staffId});

  final int staffId;

  static final tabs = ['Overview', 'Voice', 'Anime', 'Manga'];

  @override
  Widget build(BuildContext context) {
    dev.log('Key is $key', name: 'Key Value');
    final tabController = useTabController(initialLength: tabs.length);

    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) {
        if (didPop) return;
        _onPopInvoked(context);
      },
      child: Scaffold(
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
                  return 50 + kToolbarHeight;
                },
                body: TabBarView(
                  controller: tabController,
                  children: const [
                    KeepAliveTab(child: StaffOverviewTab()),
                    KeepAliveTab(child: StaffVoiceTab()),
                    KeepAliveTab(child: StaffAnimeTab()),
                    KeepAliveTab(child: StaffMangaTab()),
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
