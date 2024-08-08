import 'package:flutter/material.dart';
import 'package:otaku_world/features/search/widgets/identity_card.dart';

import '../../../graphql/__generated/graphql/fragments.graphql.dart';

class ResultStaffCard extends StatelessWidget {
  const ResultStaffCard({super.key, required this.staff});

  final Fragment$SearchResultStaff? staff;

  @override
  Widget build(BuildContext context) {
    if (staff == null) return const SizedBox();

    return IdentityCard(
      imageUrl: staff!.image?.large,
      name: staff!.name!.userPreferred!,
      favorites: '${staff!.favourites ?? '?'}',
    );
  }
}
