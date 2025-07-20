import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:otaku_world/bloc/bottom_nav_bar/bottom_nav_bar_cubit.dart';
import 'package:otaku_world/core/ui/widgets/double_back_pop_widget.dart';
import 'package:otaku_world/generated/assets.dart';
import 'package:otaku_world/theme/colors.dart';

import 'appbars/main_app_bar.dart';

class AppScaffold extends StatelessWidget {
  const AppScaffold({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return DoubleBackPopWidget(
      child: Scaffold(
        appBar: navigationShell.currentIndex != 3 ? const MainAppBar() : null,
        body: navigationShell,
        bottomNavigationBar: SafeArea(child: _BottomNavBar(navigationShell)),
      ),
    );
  }
}

class _BottomNavBar extends StatefulWidget {
  const _BottomNavBar(this.navigationShell);

  final StatefulNavigationShell navigationShell;

  @override
  State<_BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<_BottomNavBar> {
  bool _isBottomBarVisible = true;
  final bottomBarHeight = 75.0;

  @override
  Widget build(BuildContext context) {
    return BlocListener<BottomNavBarCubit, BottomNavBarState>(
      listener: (context, state) {
        if (state is BottomNavBarVisible) {
          setState(() {
            _isBottomBarVisible = true;
          });
        } else if (state is BottomNavBarNotVisible) {
          setState(() {
            _isBottomBarVisible = false;
          });
        }
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeIn,
        height: _isBottomBarVisible ? bottomBarHeight : 0,
        child: Wrap(
          children: [
            SizedBox(
              height: bottomBarHeight,
              child: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                showUnselectedLabels: true,
                currentIndex: widget.navigationShell.currentIndex,
                onTap: _goBranch,
                items: [
                  _buildBottomNavBarItem(
                    label: 'Home',
                    icon: Assets.iconsHome,
                  ),
                  _buildBottomNavBarItem(
                    label: 'Discover',
                    icon: Assets.iconsSearch,
                  ),
                  _buildBottomNavBarItem(
                    label: 'Social',
                    icon: Assets.iconsUserGroup,
                  ),
                  _buildBottomNavBarItem(
                    label: 'My List',
                    icon: Assets.iconsBulletList,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  BottomNavigationBarItem _buildBottomNavBarItem({
    required String label,
    required String icon,
  }) {
    return BottomNavigationBarItem(
      icon: Padding(
        padding: const EdgeInsets.only(bottom: 4),
        child: SvgPicture.asset(
          icon,
          colorFilter: const ColorFilter.mode(
            AppColors.white,
            BlendMode.srcIn,
          ),
        ),
      ),
      label: label,
      activeIcon: Padding(
        padding: const EdgeInsets.only(bottom: 4),
        child: SvgPicture.asset(
          icon,
          colorFilter: const ColorFilter.mode(
            AppColors.sunsetOrange,
            BlendMode.srcIn,
          ),
        ),
      ),
    );
  }

  void _goBranch(int index) {
    widget.navigationShell.goBranch(
      index,
      initialLocation: index == widget.navigationShell.currentIndex,
    );
  }
}
