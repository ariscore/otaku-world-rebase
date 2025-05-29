import '../shimmer_details.dart';
class TabBarShimmer extends StatelessWidget implements PreferredSizeWidget {
  const TabBarShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppColors.htmlGray.withValues(alpha: 0.7),
      ),
      margin: const EdgeInsets.all(10),
      child: Row(
        children: List.generate(4, (index) {
          return const Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: TabItemShimmer(),
            ),
          );
        }),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(70);
}
