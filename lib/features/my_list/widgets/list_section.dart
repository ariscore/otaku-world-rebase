import 'package:flutter/material.dart';
import 'package:otaku_world/graphql/__generated/graphql/list/media_list.graphql.dart';

import 'media_list_card.dart';

class ListSection extends StatelessWidget {
  const ListSection({super.key, required this.section});

  final Query$MediaList$MediaListCollection$lists? section;

  @override
  Widget build(BuildContext context) {
    if (section == null) {
      return const SizedBox();
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          section!.name ?? '',
          style: Theme.of(context).textTheme.displaySmall?.copyWith(
                fontFamily: 'Poppins-Medium',
              ),
        ),
        const SizedBox(height: 10),
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: section?.entries?.length ?? 0,
          itemBuilder: (context, index) {
            return MediaListCard(entry: section?.entries?[index]);
          },
        ),
      ],
    );
  }
}
