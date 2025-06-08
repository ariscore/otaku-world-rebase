import 'dart:developer' as dev;

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:otaku_world/bloc/graphql_client/graphql_client_cubit.dart';
import 'package:otaku_world/bloc/search/search_bloc/search_bloc.dart';
import 'package:otaku_world/config/router/router_constants.dart';
import 'package:otaku_world/core/ui/tabs/custom_tab_bar.dart';
import 'package:otaku_world/generated/assets.dart';
import 'package:otaku_world/theme/colors.dart';

import '../../../core/ui/buttons/back_button.dart';

class SearchAppBar extends HookWidget implements PreferredSizeWidget {
  const SearchAppBar({
    super.key,
    required this.controller,
    required this.tabs,
  });

  final TabController controller;
  final List<String> tabs;

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'search_app_bar',
      child: AppBar(
        leading: CustomBackButton(
          onPressed: () {
            // _clearSearch(context);
            if (context.canPop()) {
              context.pop();
            } else {
              context.go(RouteConstants.home);
            }
          },
        ),
        leadingWidth: 45,
        title: SizedBox(
          height: 50,
          child: _SearchTextField(context.read<SearchBloc>()),
        ),
        bottom: CustomTabBar(
          controller: controller,
          tabs: tabs,
        ),
        backgroundColor: AppColors.raisinBlack,
        elevation: 0,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(110);
}

class _SearchTextField extends StatefulWidget {
  const _SearchTextField(this.searchBloc);

  final SearchBloc searchBloc;

  @override
  State<_SearchTextField> createState() => _SearchTextFieldState();
}

class _SearchTextFieldState extends State<_SearchTextField> {
  final searchController = TextEditingController();
  bool _showClearIcon = false;

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
    // final searchBloc = context.read<SearchBloc>();

    return TextField(
      controller: searchController,
      style: Theme.of(context).textTheme.headlineMedium,
      textCapitalization: TextCapitalization.words,
      keyboardType: TextInputType.text,
      textInputAction: TextInputAction.search,
      autofocus: true,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(
            color: AppColors.sunsetOrange.withValues(alpha:0.3),
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
        suffixIcon: _showClearIcon ? Padding(
          padding: const EdgeInsets.only(
            left: 15,
            right: 10,
          ),
          child: GestureDetector(
            onTap: () {
              _clearSearch(context);
            },
            child: SvgPicture.asset(
              Assets.iconsClose,
              fit: BoxFit.cover,
            ),
          ),
        ) : null,
        suffixIconConstraints: const BoxConstraints(
          minWidth: 25,
          minHeight: 25,
          maxWidth: 50,
          maxHeight: 50,
        ),
      ),
      cursorColor: AppColors.sunsetOrange,
      onSubmitted: (value) {
        dev.log('Searching for $value', name: 'Search');
        final client = (context.read<GraphqlClientCubit>().state
                as GraphqlClientInitialized)
            .client;

        widget.searchBloc.add(
          SearchData(
            client: client,
            search: value,
          ),
        );
      },
    );
  }

  void _clearSearch(BuildContext context) {
    context.read<SearchBloc>().add(ClearSearchData());
    searchController.clear();
  }
}
