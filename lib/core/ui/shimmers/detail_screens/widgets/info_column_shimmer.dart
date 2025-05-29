import '../shimmer_details.dart';
class InfoColumnShimmer extends StatelessWidget {
  const InfoColumnShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        InfoRowShimmer(width: 50, iconName: Assets.iconsStar),
        SizedBox(height: 12),
        InfoRowShimmer(width: 65, iconName: Assets.iconsFavourite),
        SizedBox(height: 12),
        InfoRowShimmer(width: 70, iconName: Assets.iconsTrendUp),
        SizedBox(height: 30),
        GenreTagsShimmer(),
      ],
    );
  }
}
