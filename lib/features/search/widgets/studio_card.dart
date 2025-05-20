import 'package:flutter/material.dart';
import 'package:otaku_world/features/search/widgets/identity_card.dart';

import '../../../graphql/__generated/graphql/fragments.graphql.dart';
import '../../../utils/navigation_helper.dart';

class ResultStudioCard extends StatelessWidget {
  const ResultStudioCard({super.key, required this.studio});

  final Fragment$SearchResultStudio? studio;

  @override
  Widget build(BuildContext context) {
    if (studio == null) return const SizedBox();

    return IdentityCard(
      imageUrl: studio!.media?.nodes?[0]?.coverImage?.large,
      name: studio!.name,
      favorites: '${studio!.favourites ?? '?'}',
      onTap: () => NavigationHelper.goToStudioDetailScreen(
        context: context,
        studioId: studio!.id,
      ),
    );
  }
}
