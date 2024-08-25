import 'package:flutter/material.dart';

import '../../../theme/colors.dart';

class CustomTabBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomTabBar({
    super.key,
    required this.tabs,
    required this.controller,
    this.tabWidth,
  });

  final List<String> tabs;
  final TabController controller;
  final double? tabWidth;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 10,
        right: 10,
        bottom: 5,
      ),
      child: Container(
        // height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [AppColors.japaneseIndigo, AppColors.darkCharcoal],
          ),
        ),
        child: TabBar(
          controller: controller,
          isScrollable: true,
          dividerHeight: 0,
          tabAlignment: TabAlignment.start,
          indicatorSize: TabBarIndicatorSize.tab,
          indicatorPadding: const EdgeInsets.all(5),
          indicator: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: AppColors.sunsetOrange,
          ),
          tabs: _buildTabs(context),
        ),
      ),
    );
  }

  List<Tab> _buildTabs(BuildContext context) {
    return tabs.map((label) => _buildTab(context, label)).toList();
  }

  Tab _buildTab(BuildContext context, String label) {
    return Tab(
      child: SizedBox(
        height: 40,
        width: tabWidth,
        child: Center(
          child: Text(
            label,
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  fontFamily: 'Poppins',
                ),
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50);
}
