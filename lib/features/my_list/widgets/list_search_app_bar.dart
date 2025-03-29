import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:otaku_world/bloc/filter/search/search_media_cubit.dart';

import '../../../core/ui/custom_search_bar.dart';
import '../../../generated/assets.dart';
import '../../../theme/colors.dart';

class ListSearchAppBar extends StatefulWidget {
  const ListSearchAppBar({super.key, required this.onApplyFilters});

  final VoidCallback onApplyFilters;

  @override
  State<ListSearchAppBar> createState() => _ListSearchAppBarState();
}

class _ListSearchAppBarState extends State<ListSearchAppBar> {
  final searchController = TextEditingController();
  bool _showClearIcon = false;
  bool filterApplied = false;

  @override
  void initState() {
    searchController.addListener(
      () {
        if (searchController.text.isNotEmpty) {
          if (!_showClearIcon) {
            setState(() {
              _showClearIcon = true;
            });
          }
        } else {
          if (_showClearIcon) {
            setState(() {
              _showClearIcon = false;
            });
          }
        }
      },
    );
    super.initState();
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 5,
      ),
      child: Row(
        children: [
          CustomSearchBar(
            clearSearch: () {},
            onSubmitted: (value) {
              // context.read<MediaListBloc>().add(const ApplyFilter());
            },
            onChanged: (p0) {},
            searchCubit: SearchMediaCubit(),
            hint: 'Search list...',
          ),
          const SizedBox(width: 10),
          GestureDetector(
            onTap: () {},
            child: Container(
              height: 50,
              width: 50,
              decoration: ShapeDecoration(
                color: filterApplied ? AppColors.sunsetOrange : AppColors.jet,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              child: Center(
                child: SvgPicture.asset(
                  Assets.iconsDiscoverFilter,
                  width: 24,
                  height: 24,
                  fit: BoxFit.fill,
                  colorFilter: filterApplied
                      ? const ColorFilter.mode(
                          AppColors.white,
                          BlendMode.srcIn,
                        )
                      : null,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
