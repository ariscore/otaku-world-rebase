import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:otaku_world/bloc/filter/search/search_media_cubit.dart';

import '../../generated/assets.dart';
import '../../theme/colors.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({
    super.key,
    required this.clearSearch,
    required this.onSubmitted,
    required this.onChanged,
    required this.searchCubit,
    required this.hint,
  });

  final VoidCallback clearSearch;
  final ValueChanged<String> onSubmitted;
  final Function(String) onChanged;
  final SearchMediaCubit searchCubit;
  final String hint;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextField(
        controller: searchCubit.searchController,
        style: Theme.of(context).textTheme.headlineMedium,
        textCapitalization: TextCapitalization.words,
        keyboardType: TextInputType.text,
        textInputAction: TextInputAction.search,
        autofocus: false,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(
              color: AppColors.transparent,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(
              color: AppColors.sunsetOrange,
            ),
          ),
          contentPadding: const EdgeInsets.symmetric(
            vertical: 10,
          ),
          prefixIcon: Padding(
            padding: const EdgeInsets.only(
              left: 10,
              right: 10,
            ),
            child: SvgPicture.asset(
              Assets.iconsSearchSmall,
              fit: BoxFit.cover,
            ),
          ),
          prefixIconConstraints: const BoxConstraints(
            minWidth: 20,
            minHeight: 20,
            maxWidth: 50,
            maxHeight: 50,
          ),
          fillColor: AppColors.jet,
          filled: true,
          hintText: hint,
          hintStyle: Theme.of(context).textTheme.headlineMedium?.copyWith(
            color: AppColors.white.withValues(alpha:0.5),
          ),
          suffixIcon: Padding(
            padding: const EdgeInsets.only(
              left: 15,
              right: 10,
            ),
            child: BlocBuilder<SearchMediaCubit, SearchMediaState>(
              bloc: searchCubit,
              builder: (context, state) {
                if (state is SearchContentChanged) {
                  if (state.content.isEmpty || state.content == '') {
                    return const SizedBox();
                  } else {
                    return InkWell(
                      onTap: () {
                        searchCubit.searchController.clear();
                        clearSearch();
                      },
                      borderRadius: BorderRadius.circular(15),
                      child: SvgPicture.asset(
                        Assets.iconsClose,
                        fit: BoxFit.cover,
                      ),
                    );
                  }
                } else {
                  return const SizedBox();
                }
              },
            ),
          ),
          suffixIconConstraints: const BoxConstraints(
            minWidth: 25,
            minHeight: 25,
            maxWidth: 50,
            maxHeight: 50,
          ),
        ),
        cursorColor: AppColors.sunsetOrange,
        onChanged: (value) {
          // if (value.isEmpty || value == '') {
          //   context.read<ClearTextCubit>().hideClearText();
          // } else {
          //   context.read<ClearTextCubit>().showClearText();
          // }
          onChanged(value);
        },
        onSubmitted: onSubmitted,
      ),
    );
  }
}
