import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:otaku_world/features/profile/widgets/user_avatar.dart';
import 'package:otaku_world/generated/assets.dart';
import 'package:otaku_world/graphql/__generated/graphql/fragments.graphql.dart';
import 'package:otaku_world/utils/navigation_helper.dart';

class UserCard extends StatelessWidget {
  const UserCard({super.key, required this.user, required this.onMorePressed});

  final Fragment$User user;
  final VoidCallback onMorePressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 10,
      ),
      child: GestureDetector(
        onTap: () => NavigationHelper.goToProfileScreen(
          context: context,
          userId: user.id,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                UserAvatar(
                  url: user.avatar?.medium ?? '',
                  width: 50,
                  height: 50,
                  showBorder: true,
                  viewer: false,
                ),
                const SizedBox(width: 10),
                SizedBox(
                  width: MediaQuery.of(context).size.width - 150,
                  child: Text(
                    user.name,
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                          fontFamily: 'Poppins',
                        ),
                  ),
                ),
              ],
            ),
            IconButton(
              onPressed: onMorePressed,
              icon: SvgPicture.asset(
                Assets.iconsMoreHorizontal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
