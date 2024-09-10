import 'package:flutter/material.dart';

import '../../../theme/colors.dart';

class MainTabData {
  final Widget child;
  final String label;

  const MainTabData({
    required this.label,
    required this.child,
  });
}

class MainTabView extends StatelessWidget {
  final List<MainTabData> tabs;
  final Animation<double>? paddingAnimation;

  const MainTabView({
    super.key,
    required this.tabs,
    this.paddingAnimation,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      initialIndex: 0,
      child: Container(
        width: MediaQuery.sizeOf(context).width,
        decoration: const BoxDecoration(
          color: AppColors.raisinBlack,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            _buildTabBar(context),
            _buildTabContent(),
          ],
        ),
      ),
    );
  }

  Widget _buildTopAnimatedPadding() {
    if (paddingAnimation == null) {
      return const SizedBox(height: 6);
    }

    return AnimatedBuilder(
      animation: paddingAnimation!,
      builder: (context, _) => SizedBox(
        height: (1 - paddingAnimation!.value) * 16 + 6,
      ),
    );
  }

  Widget _buildTabBar(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 10,
        right: 10,
        bottom: 5,
      ),
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [AppColors.japaneseIndigo, AppColors.darkCharcoal],
          ),
        ),
        child: TabBar(
          isScrollable: true,
          dividerHeight: 0,
          tabAlignment: TabAlignment.start,
          indicatorSize: TabBarIndicatorSize.tab,
          indicatorPadding: const EdgeInsets.all(5),
          indicator: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: AppColors.sunsetOrange,
          ),
          tabs: tabs
              .map(
                (tab) => SizedBox(
                  height: 40,
                  child: Center(
                    child: Text(
                      tab.label,
                      style:
                          Theme.of(context).textTheme.headlineSmall?.copyWith(
                                fontFamily: 'Poppins',
                              ),
                    ),
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }

  Widget _buildTabContent() {
    return Expanded(
      child: TabBarView(
        children: tabs.map((tab) => tab.child).toList(),
      ),
    );
  }
}
