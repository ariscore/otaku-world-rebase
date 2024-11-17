import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:otaku_world/constants/settings_constants.dart';
import 'package:otaku_world/core/ui/appbars/simple_app_bar.dart';
import 'package:otaku_world/core/ui/filters/custom_check_box.dart';
import 'package:otaku_world/core/ui/filters/custom_dropdown.dart';

class AnimeMangaSettingsScreen extends StatelessWidget {
  const AnimeMangaSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const SimpleAppBar(
        title: 'Anime & Manga Settings',
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10,
          ),
          child: Column(
            children: [
              CustomDropdown(
                title: 'Title Language',
                dropdownItems: SettingsConstants.titleLanguages,
                initialValue: SettingsConstants.titleLanguages[0],
                onChange: (p0) {},
              ),
              const SizedBox(height: 20),
              CustomDropdown(
                title: 'Staff & Character Name Language',
                dropdownItems: SettingsConstants.staffLanguages,
                initialValue: SettingsConstants.staffLanguages[0],
                onChange: (p0) {},
              ),
              const SizedBox(height: 20),
              CustomDropdown(
                title: 'Activity Merge Time',
                description: 'Episode and chapter activity created within this '
                    'time period will be merged together (E.g. Watched episodes 10-12)',
                dropdownItems: SettingsConstants.activityMergeTimes,
                initialValue: SettingsConstants.activityMergeTimes[0],
                onChange: (time) {
                  log('Time: ${SettingsConstants.getMinutesFromMergeTime(time)}');
                },
              ),
              const SizedBox(height: 20),
              CustomCheckBox(
                label: 'Airing Anime Notification',
                value: '',
                onChanged: () {},
                initialValue: true,
              ),
              CustomCheckBox(
                label: '18+ Content',
                value: '',
                onChanged: () {},
                initialValue: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
