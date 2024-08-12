import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:otaku_world/constants/filter_constants.dart';
import 'package:otaku_world/constants/string_constants.dart';
import 'package:otaku_world/core/ui/discover_header.dart';
import 'package:otaku_world/core/ui/filters/custom_dropdown.dart';
import 'package:otaku_world/core/ui/tabs/custom_tab_bar.dart';

class SocialScreen extends HookWidget {
  const SocialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final tabController = useTabController(initialLength: 2);

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: DiscoverHeader(
              title: StringConstants.socialHeading,
              subtitle: StringConstants.socialSubheading,
            ),
          ),
          const SizedBox(height: 10),
          CustomTabBar(
            tabs: const [
              'Following',
              'Global',
            ],
            controller: tabController,
            tabWidth: size.width / 2 - 45,
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Activity',
                  style: Theme.of(context).textTheme.displayMedium?.copyWith(
                        fontFamily: 'Roboto-Condensed',
                      ),
                ),
                const SizedBox(width: 100),
                Expanded(
                  child: CustomDropdown(
                    dropdownItems: FilterConstants.activitiesOptions,
                    initialValue: 'All',
                    borderRadius: 20,
                    onChange: (p0) {},
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
