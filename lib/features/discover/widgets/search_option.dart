import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:otaku_world/bloc/filter/search/search_media_cubit.dart';
import 'package:otaku_world/core/ui/custom_search_bar.dart';

import '../../../generated/assets.dart';
import '../../../theme/colors.dart';

class SearchOption extends StatelessWidget {
  const SearchOption({
    super.key,
    required this.onPressedFilters,
    required this.clearSearch,
    required this.onSubmitted,
    required this.onChanged,
    required this.filterApplied,
    required this.searchCubit,
    required this.hint,
  });

  final VoidCallback onPressedFilters;
  final VoidCallback clearSearch;
  final ValueChanged<String> onSubmitted;
  final Function(String) onChanged;
  final bool filterApplied;
  final SearchMediaCubit searchCubit;
  final String hint;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomSearchBar(
          clearSearch: clearSearch,
          onSubmitted: onSubmitted,
          onChanged: onChanged,
          searchCubit: searchCubit,
          hint: hint,
        ),
        const SizedBox(width: 10),
        GestureDetector(
          onTap: onPressedFilters,
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
    );
  }
}
