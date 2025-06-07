import 'package:flutter/material.dart';
import 'package:otaku_world/core/ui/markdown/markdown.dart';
import 'package:otaku_world/graphql/__generated/graphql/fragments.graphql.dart';
import 'package:otaku_world/theme/colors.dart';

class UserOverview extends StatelessWidget {
  const UserOverview({
    super.key,
    required this.user,
    required this.followerCount,
    required this.followingCount,
  });

  final Fragment$UserInfo user;
  final int followerCount;
  final int followingCount;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverPadding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 10,
          ),
          sliver: _buildItem(
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildStat(
                  context,
                  count: user.statistics?.anime?.count ?? 0,
                  label: 'Anime',
                ),
                _buildSeparator(),
                _buildStat(
                  context,
                  count: user.statistics?.manga?.count ?? 0,
                  label: 'Manga',
                ),
                _buildSeparator(),
                _buildStat(context, count: followingCount, label: 'Following'),
                _buildSeparator(),
                _buildStat(context, count: followerCount, label: 'Followers'),
              ],
            ),
          ),
        ),
        // const SizedBox(height: 15),
        SliverPadding(
          padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
          sliver: _buildItem(
            MarkdownWidget(data: user.about ?? '*No Description*'),
          ),
        ),
      ],
    );
  }

  Widget _buildStat(
    BuildContext context, {
    required int count,
    required String label,
  }) {
    final width = (MediaQuery.of(context).size.width - 60) / 4;
    return Column(
      children: [
        SizedBox(
          width: width,
          child: Text(
            count.toString(),
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.displayMedium?.copyWith(
                  fontFamily: 'Poppins',
                ),
          ),
        ),
        const SizedBox(height: 5),
        Text(
          label,
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: AppColors.white.withValues(alpha:0.7),
                fontFamily: 'Poppins',
              ),
        ),
      ],
    );
  }

  Widget _buildSeparator() {
    return Container(
      height: 45,
      width: 2,
      decoration: BoxDecoration(
        color: AppColors.white.withValues(alpha:0.5),
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }

  Widget _buildItem(Widget child) {
    return SliverToBoxAdapter(
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 10,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: AppColors.secondaryGradient,
        ),
        child: child,
      ),
    );
  }
}
