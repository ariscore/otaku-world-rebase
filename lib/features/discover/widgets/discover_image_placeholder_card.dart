import '../../../core/ui/shimmers/detail_screens/shimmer_details.dart';

class DiscoverImagePlaceholderCard extends StatelessWidget {
  const DiscoverImagePlaceholderCard({
    super.key,
    required this.assetName,
    required this.onTap,
  });

  final String assetName;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Image.asset(
        assetName,
        fit: BoxFit.cover,
      ),
    );
  }
}
