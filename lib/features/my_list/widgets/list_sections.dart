import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:otaku_world/bloc/viewer/viewer_bloc.dart';
import 'package:otaku_world/graphql/__generated/graphql/list/media_list.graphql.dart';
import 'package:otaku_world/graphql/__generated/graphql/schema.graphql.dart';

import 'list_section.dart';

class ListSections extends StatelessWidget {
  const ListSections({
    super.key,
    required this.sections,
    required this.type,
    required this.scoreFormat,
  });

  final List<Query$MediaList$MediaListCollection$lists?>? sections;
  final Enum$MediaType type;
  final Enum$ScoreFormat scoreFormat;

  @override
  Widget build(BuildContext context) {
    List<String?>? sectionOrder = [];
    if (type == Enum$MediaType.ANIME) {
      sectionOrder = context
          .read<ViewerBloc>()
          .getUser()
          .mediaListOptions
          ?.animeList
          ?.sectionOrder;
    } else {
      sectionOrder = context
          .read<ViewerBloc>()
          .getUser()
          .mediaListOptions
          ?.mangaList
          ?.sectionOrder;
    }

    sections?.sort((a, b) {
      int indexA = sectionOrder?.indexOf(a?.name) ?? -1;
      int indexB = sectionOrder?.indexOf(b?.name) ?? -1;

      int maxInt = 0x7FFFFFFFFFFFFFFF;

      indexA = indexA == -1 ? maxInt : indexA;
      indexB = indexB == -1 ? maxInt : indexB;

      return indexA.compareTo(indexB);
    });

    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      sliver: SliverList.builder(
        itemCount: sections?.length ?? 0,
        itemBuilder: (context, index) {
          return ListSection(
            section: sections?[index],
            scoreFormat: scoreFormat,
          );
        },
      ),
    );
  }
}
