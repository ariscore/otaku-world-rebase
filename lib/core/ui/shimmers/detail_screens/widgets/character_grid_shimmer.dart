import '../shimmer_details.dart';

class CharacterGridShimmer extends StatelessWidget {
  const CharacterGridShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(4),
      child: Shimmer(
        child: Container(
          height: 150,
          width: double.infinity,
          decoration: BoxDecoration(
            color: AppColors.htmlGray.withValues(alpha: 0.7),
            borderRadius: BorderRadius.circular(4),
          ),
        ),
      ),
    );
  }
}
