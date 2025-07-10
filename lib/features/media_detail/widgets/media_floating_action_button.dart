import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:otaku_world/bloc/media_detail/media_detail_bloc.dart';
import 'package:otaku_world/bloc/media_list/media_list/media_list_bloc.dart';
import 'package:otaku_world/config/router/router_constants.dart';
import 'package:otaku_world/graphql/__generated/graphql/fragments.graphql.dart';
import 'package:otaku_world/graphql/__generated/graphql/schema.graphql.dart';

import '../../../generated/assets.dart';
import '../../../theme/colors.dart';

class MediaFloatingActionButton extends HookWidget {
  const MediaFloatingActionButton({
    super.key,
    required this.tabController,
    required this.reviewIndex,
    required this.userId,
    required this.mediaId,
    required this.media,
    required this.options,
    required this.entry,
  });

  final TabController tabController;
  final int reviewIndex;
  final int userId;
  final int mediaId;
  final Fragment$ListEntryMedia media;
  final Fragment$MediaListOptions? options;
  final Fragment$MediaListEntry? entry;

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<MediaDetailBloc>();
    final listBloc = media.type == Enum$MediaType.ANIME
        ? context.read<AnimeListBloc>()
        : context.read<MangaListBloc>();
    final showButton = useState(tabController.index == reviewIndex);

    useEffect(() {
      void onTabChange() {
        showButton.value = tabController.index == reviewIndex;
      }

      tabController.addListener(onTabChange);
      return () => tabController.removeListener(onTabChange);
    }, [tabController]);

    final String icon = bloc.isDeletedEntry || entry == null
        ? Assets.iconsMediaAdd
        : Assets.iconsMediaEdit;

    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      spacing: 10,
      children: [
        if (showButton.value)
          FloatingActionButton(
            heroTag: 'postReview',
            onPressed: () {
              context.push(
                '${RouteConstants.postReview}?userId=$userId&mediaId=$mediaId',
              );
            },
            backgroundColor: AppColors.sunsetOrange,
            child: SvgPicture.asset(
              Assets.iconsEdit,
              width: 30,
            ),
          ),
        FloatingActionButton(
          heroTag: 'mediaList',
          onPressed: () {
            context.push(RouteConstants.editMediaList, extra: {
              'media': media,
              'options': options,
              'mediaListEntry': bloc.isDeletedEntry ? null : entry,
              'onEdited': (entry) {
                log('edited: $entry');
                bloc.add(UpdateDetailListEntry(entry: entry));
                listBloc.add(UpdateListEntry(entry: entry));
              },
              'onDeleted': (id) {
                log('Deleted: $id');
                bloc.add(RemoveDetailListEntry());
                listBloc.add(RemoveListEntry(id: id));
              },
            });
          },
          backgroundColor: AppColors.sunsetOrange,
          child: SvgPicture.asset(
            icon,
            width: 30,
          ),
        ),
      ],
    );
  }
}
