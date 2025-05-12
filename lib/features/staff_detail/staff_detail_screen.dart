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

class StaffDetailScreen extends StatelessWidget {
  const StaffDetailScreen({super.key, required this.staffId});

  final int staffId;

  @override
  Widget build(BuildContext context) {
    dev.log('Key is $key', name: 'Key Value');

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
              // Use the _TabManagerWidget for all tab-related logic
              return _TabManagerWidget(
                staff: state.staff,
                staffId: staffId,
                client: client,
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

// Separate widget to manage tabs with hooks
class _TabManagerWidget extends HookWidget {
  const _TabManagerWidget({
    required this.staff,
    required this.staffId,
    required this.client,
  });

  final dynamic staff;
  final int staffId;
  final dynamic client;

  @override
  Widget build(BuildContext context) {
    // Determine tab structure
    final bool hasVoiceTabs = staff.characterMedia?.edges?.isNotEmpty == true;
    final bool hasMediaTabs = staff.staffMedia?.edges?.isNotEmpty == true;

    // Build tabs list
    final List<String> tabs = ['Overview'];
    if (hasVoiceTabs) {
      tabs.add('Voice');
    }
    if (hasMediaTabs) {
      tabs.add('Anime');
      tabs.add('Manga');
    }

    // Create tab controller with the correct length
    final tabController = useTabController(initialLength: tabs.length);

    dev.log(
      "Query Id: $staffId ---> State Id: ${staff.id} ---> Tabs count: ${tabs.length}",
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
        children: _buildTabViews(hasVoiceTabs, hasMediaTabs),
      ),
    );
  }

  List<Widget> _buildTabViews(bool hasVoiceTabs, bool hasMediaTabs) {
    final List<Widget> views = [];

    // Always add Overview tab
    views.add(
      KeepAliveTab(
        child: StaffOverviewTab(
          staff: staff,
        ),
      ),
    );

    // Add Voice tab if needed
    if (hasVoiceTabs) {
      views.add(
        KeepAliveTab(
          child: BlocProvider(
            create: (context) => StaffVoiceBloc(staffId: staffId)
              ..add(
                LoadData(client),
              ),
            child: const StaffVoiceTab(),
          ),
        ),
      );
    }

    // Add Media tabs if needed
    if (hasMediaTabs) {
      views.add(
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
      );

      views.add(
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
      );
    }

    return views;
  }
}