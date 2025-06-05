import '../shimmer_details.dart';

class InfoSectionCharacterShimmer extends StatelessWidget {
  const InfoSectionCharacterShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.blackOlive,
        borderRadius: BorderRadius.circular(15),
      ),
      padding: const EdgeInsets.all(16),
      child: const Column(
        spacing: 10,
        children: [
          InfoDetailRow(labelWidth: 40, contentWidth: 200),
          InfoDetailRow(labelWidth: 0, contentWidth: 50),
          InfoDetailRow(labelWidth: 40, contentWidth: 200),
          InfoDetailRow(labelWidth: 40, contentWidth: 100),
          InfoDetailRow(labelWidth: 40, contentWidth: 60),
        ],
      ),
    );
  }
}
