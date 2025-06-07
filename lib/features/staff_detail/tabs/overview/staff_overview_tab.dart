import 'package:flutter/material.dart';
import 'package:otaku_world/features/media_detail/tabs/overview/widgets/description.dart';
import 'package:otaku_world/utils/extensions.dart';

import '../../../../core/ui/widgets/common_overview_widget.dart';
import '../../../../graphql/__generated/graphql/staff_detail/staff_detail.graphql.dart';

class StaffOverviewTab extends StatelessWidget {
  const StaffOverviewTab({super.key, required this.staff});

  final Query$getStaffDetail$Staff staff;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(
        10,
      ),
      children: [
        CommonOverViewWidget(
          age: staff.age?.toString(),
          birthDate: staff.dateOfBirth,
          deathDate: staff.dateOfDeath,
          homeTown: staff.homeTown,
          primaryOccupations: staff.primaryOccupations,
          bloodType: staff.bloodType,
          gender: staff.gender,
        ),
        20.height,
        Description(
          description: staff.description,
        ),
      ],
    );
  }
}
