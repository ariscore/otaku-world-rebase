import '../shimmer_details.dart';

class TabBarShimmer extends StatelessWidget implements PreferredSizeWidget {
  const TabBarShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: AppColors.blackOlive,
      ),
      margin: const EdgeInsets.fromLTRB(10, 0, 10, 10),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Row(
        spacing: 10,
        children: List.generate(3, (index) {
          return const Expanded(
            child: TabItemShimmer(),
          );
        }),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50);
}
