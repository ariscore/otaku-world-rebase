import '../shimmer_details.dart';

class InfoSectionShimmer extends StatelessWidget {
  const InfoSectionShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.blackOlive,
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.all(16),
      child: const Column(
        spacing: 10,
        children: [
          // Basic info section
          InfoDetailRow(labelWidth: 80, contentWidth: 200),
          InfoDetailRow(labelWidth: 60, contentWidth: 180),
          InfoDetailRow(labelWidth: 50, contentWidth: 120),
          // Divider
          InfoDivider(),
          // Media info section
          InfoDetailRow(labelWidth: 50, contentWidth: 30),
          InfoDetailRow(labelWidth: 70, contentWidth: 20),
          InfoDetailRow(labelWidth: 120, contentWidth: 60),
          InfoDetailRow(labelWidth: 50, contentWidth: 50),
          InfoDetailRow(labelWidth: 45, contentWidth: 70),
          InfoDetailRow(labelWidth: 70, contentWidth: 90),
          InfoDetailRow(labelWidth: 60, contentWidth: 95),
          InfoDetailRow(labelWidth: 50, contentWidth: 85),
          // Another divider
          InfoDivider(),
          // Production info section
          InfoDetailRow(labelWidth: 55, contentWidth: 70),
          InfoDetailRow(labelWidth: 75, contentWidth: 80),
        ],
      ),
    );
  }
}
