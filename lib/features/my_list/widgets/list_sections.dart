import 'package:flutter/material.dart';
import 'package:otaku_world/graphql/__generated/graphql/list/media_list.graphql.dart';

import 'list_section.dart';

class ListSections extends StatelessWidget {
  const ListSections({super.key, required this.sections});

  final List<Query$MediaList$MediaListCollection$lists?>? sections;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: sections?.length ?? 0,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return ListSection(section: sections?[index]);
        },
      ),
    );
  }
}
