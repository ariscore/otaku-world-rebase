import 'package:flutter/material.dart';
import 'package:otaku_world/graphql/__generated/graphql/fragments.graphql.dart';
import 'package:otaku_world/utils/extensions.dart';
import 'package:otaku_world/utils/ui_utils.dart';

import '../../../../utils/app_texts.dart';
import '../../../features/media_detail/tabs/overview/widgets/info_tile.dart';

class CommonOverViewWidget extends StatelessWidget {
  const CommonOverViewWidget({
    super.key,
    this.age,
    this.gender,
    this.bloodType,
    this.birthDate,
    this.homeTown,
    this.deathDate,
    this.primaryOccupations,
    this.yearActive,
  });

  final String? age;
  final String? gender;
  final String? bloodType;
  final String? homeTown;
  final Fragment$FuzzyDate? birthDate;
  final Fragment$FuzzyDate? deathDate;
  final List<String?>? primaryOccupations;

  // "[startYear, endYear] (If the 2nd value is not present staff is still active)"
  final List<int?>? yearActive;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Overview',
          style: AppTextStyles.titleSectionStyle,
        ),
        const SizedBox(
          height: 5,
        ),
        Container(
          padding: const EdgeInsets.all(10),
          decoration: UIUtils.getContainerDecoration(),
          child: Column(
            spacing: 10,
            children: [
              // Birth Date
              if (birthDate != null)
                InfoTile(
                  title: 'Birth',
                  data: (birthDate)!.toDateString(),
                ),

              // Age
              if (age != null)
                InfoTile(
                  title: age!.endsWith('-') ? 'Initial Age' : 'Age',
                  data: age!.endsWith('-') ? age!.replaceAll('-', '') : age,
                ),

              // Gender
              if (gender != null)
                InfoTile(
                  title: 'Gender',
                  data: gender,
                ),

              if (yearActive != null && yearActive!.isNotEmpty)
                InfoTile(
                  title: 'Years Active',
                  data: yearActive!.length == 1
                      ? '${yearActive!.first}-Present'
                      : '${yearActive!.first}-${yearActive!.last}',
                ),

              // Blood Type
              if (bloodType != null)
                InfoTile(
                  title: 'Blood Type',
                  data: bloodType,
                ),

              // Home Town
              if (homeTown != null)
                InfoTile(
                  title: 'Home Town',
                  data: homeTown,
                ),

              // Death Date
              if (deathDate != null)
                InfoTile(
                  title: 'Death',
                  data: (deathDate)!.toDateString(),
                ),

              // Primary Occupations
              if (primaryOccupations != null && primaryOccupations!.isNotEmpty)
                InfoTile(
                  title: 'Primary Occupations',
                  data: primaryOccupations?.join(', '),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
