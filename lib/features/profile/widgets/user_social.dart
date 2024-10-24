import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:otaku_world/bloc/profile/user_social_bloc/user_social_bloc.dart';
import 'package:otaku_world/constants/filter_constants.dart';
import 'package:otaku_world/core/ui/filters/custom_dropdown.dart';

class UserSocial extends StatelessWidget {
  const UserSocial({super.key, required this.userId});

  final int userId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UserSocialBloc(userId: userId),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
        ),
        child: CustomScrollView(
          slivers: [
            SliverOverlapInjector(
              handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
            ),
            SliverToBoxAdapter(
              child: CustomDropdown(
                dropdownItems: FilterConstants.socialOptions,
                initialValue: FilterConstants.socialOptions[0],
                onChange: (option) {

                },
              ),
            ),
            // BlocBuilder<UserSocialBloc, UserSocialState>(
            //   builder: (context, state) {
            //     if (state is UserSocialLoading) {
            //       return const CircularProgressIndicator();
            //     } else if (state is UserSocialLoaded) {
            //       return SliverList(
            //         delegate: SliverChildBuilderDelegate(
            //           (context, index) {
            //
            //           },
            //           childCount: state.followings.length
            //         ),
            //       );
            //     }
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}
