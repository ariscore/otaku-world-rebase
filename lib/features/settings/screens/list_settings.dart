import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:otaku_world/constants/filter_constants.dart';
import 'package:otaku_world/constants/settings_constants.dart';
import 'package:otaku_world/core/ui/appbars/simple_app_bar.dart';
import 'package:otaku_world/core/ui/filters/custom_check_box.dart';
import 'package:otaku_world/core/ui/filters/custom_dropdown.dart';
import 'package:otaku_world/features/settings/widgets/advanced_scoring.dart';
import 'package:otaku_world/features/settings/widgets/custom_lists.dart';
import 'package:otaku_world/features/settings/widgets/list_activity_options.dart';
import 'package:otaku_world/features/settings/widgets/reorder_list.dart';
import 'package:otaku_world/generated/assets.dart';
import 'package:otaku_world/graphql/__generated/graphql/schema.graphql.dart';
import 'package:otaku_world/theme/colors.dart';
import 'package:url_launcher/url_launcher.dart';

import '../widgets/collection_chip.dart';

class ListSettings extends StatefulWidget {
  const ListSettings({super.key});

  @override
  State<ListSettings> createState() => _ListSettingsState();
}

class _ListSettingsState extends State<ListSettings> {
  List<String> customAnimeLists = [
    'First',
    'Second',
    'Third',
    'Fourth',
    'Fifth',
    'Sixth',
  ];
  List<String> customMangaLists = ['First'];
  List<String> advanceScoringOptions = [
    'Story',
    'Characters',
    'Enjoyment',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: const SimpleAppBar(
        title: 'List Settings',
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              CustomDropdown(
                title: 'Scoring System',
                dropdownItems: SettingsConstants.scoringSystems,
                initialValue: SettingsConstants.scoringSystems[2],
                onChange: (p0) {},
              ),
              const SizedBox(height: 20),
              CustomDropdown(
                title: 'Default List Order',
                dropdownItems: SettingsConstants.listOrders,
                initialValue: SettingsConstants.listOrders[0],
                onChange: (p0) {},
              ),
              const SizedBox(height: 20),
              Text(
                'Split Completed List Section by Format',
                style: Theme.of(context).textTheme.displaySmall!.copyWith(
                      fontFamily: 'Poppins-Medium',
                    ),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  CustomCheckBox(
                    label: 'Anime List',
                    value: '',
                    onChanged: () {},
                    initialValue: false,
                  ),
                  const SizedBox(width: 20),
                  CustomCheckBox(
                    label: 'Manga List',
                    value: '',
                    onChanged: () {},
                    initialValue: false,
                  ),
                ],
              ),
              const SizedBox(height: 20),
              AdvancedScoring(list: advanceScoringOptions, isEnabled: true),
              const SizedBox(height: 20),
              CustomLists(list: customAnimeLists, type: Enum$MediaType.ANIME),
              const SizedBox(height: 20),
              CustomLists(list: customMangaLists, type: Enum$MediaType.MANGA),
              const SizedBox(height: 20),
              ListActivityOptions(),
              const SizedBox(height: 20),
              ReorderList(
                list: customAnimeLists,
                type: Enum$MediaType.ANIME,
              ),
              const SizedBox(height: 20),
              ReorderList(
                list: customMangaLists,
                type: Enum$MediaType.MANGA,
              ),
              const SizedBox(height: 20),
              _buildVisitWebsite(),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildVisitWebsite() {
    return GestureDetector(
      onTap: () {
        final url = Uri(
          scheme: 'https',
          host: 'anilist.co',
          path: '/settings/lists',
        );
        launchUrl(url);
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: AppColors.secondaryGradient,
        ),
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            Expanded(
              child: Text(
                'Visit AniList website to access all settings.',
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      fontFamily: 'Poppins',
                    ),
              ),
            ),
            const SizedBox(width: 10),
            SvgPicture.asset(Assets.iconsLinkSquare),
          ],
        ),
      ),
    );
  }
}
