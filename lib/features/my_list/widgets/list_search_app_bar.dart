import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:otaku_world/bloc/filter/search/search_media_cubit.dart';
import 'package:otaku_world/bloc/media_list/media_list/media_list_bloc.dart';

import '../../../core/ui/custom_search_bar.dart';
import '../../../generated/assets.dart';
import '../../../theme/colors.dart';

class ListSearchAppBar extends StatefulWidget {
  const ListSearchAppBar({super.key, required this.listBloc, this.searchCubit,});

  final MediaListBloc listBloc;
  final SearchMediaCubit? searchCubit;

  @override
  State<ListSearchAppBar> createState() => _ListSearchAppBarState();
}

class _ListSearchAppBarState extends State<ListSearchAppBar> {
  bool filterApplied = false;

  @override
  void initState() {
    // searchController.addListener(
    //   () {
    //     if (searchController.text.isNotEmpty) {
    //       if (!_showClearIcon) {
    //         setState(() {
    //           _showClearIcon = true;
    //         });
    //       }
    //     } else {
    //       if (_showClearIcon) {
    //         setState(() {
    //           _showClearIcon = false;
    //         });
    //       }
    //     }
    //   },
    // );
    super.initState();
  }

  @override
  void dispose() {
    // searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    log('Search text: ${widget.listBloc.filter.search}');
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 5,
      ),
      child: Row(
        children: [
          CustomSearchBar(
            clearSearch: () {
              widget.listBloc.add(ClearSearch());
            },
            onSubmitted: (value) {},
            onChanged: (value) {
              widget.listBloc.add(ApplyFilter(search: value));
            },
            searchCubit: widget.searchCubit ?? SearchMediaCubit(
              initialText: widget.listBloc.filter.search,
            ),
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
