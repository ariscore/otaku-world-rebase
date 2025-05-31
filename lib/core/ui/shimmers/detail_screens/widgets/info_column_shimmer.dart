import '../shimmer_details.dart';
class InfoColumnShimmer extends StatelessWidget {
  const InfoColumnShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.end,
      spacing: 15,
      children: [
        InfoRowShimmer(width: 40, iconName: Assets.iconsStar),
        InfoRowShimmer(width: 57, iconName: Assets.iconsFavourite),
        InfoRowShimmer(width: 72, iconName: Assets.iconsTrendUp),
        GenreTagsShimmer(),
      ],
    );
  }
}
