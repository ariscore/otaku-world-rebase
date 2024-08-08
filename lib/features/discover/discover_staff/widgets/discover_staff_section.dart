import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:otaku_world/bloc/discover/staff/birthday_staff_bloc.dart';
import 'package:otaku_world/bloc/discover/staff/most_favorite_staff_bloc.dart';
import 'package:otaku_world/config/router/router_constants.dart';
import 'package:otaku_world/graphql/__generated/graphql/fragments.graphql.dart';

import '../../widgets/entity_section.dart';

class DiscoverStaffSection extends StatelessWidget {
  const DiscoverStaffSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        EntitySection<BirthdayStaffBloc, Fragment$StaffShort>(
          label: 'Birthdays',
          heroTag: 'birthday_staff',
          onViewAll: () {
            context.push(RouteConstants.birthdayStaff);
          },
        ),
        // SizedBox(height: 15),
        EntitySection<MostFavoriteStaffBloc, Fragment$StaffShort>(
          label: 'Most Favorite Staff',
          heroTag: 'favorite_staff',
          onViewAll: () {
            context.push(RouteConstants.mostFavoriteStaff);
          },
        ),
        const SizedBox(height: 15),
      ],
    );
  }
}
