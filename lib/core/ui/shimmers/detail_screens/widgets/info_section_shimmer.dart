import '../shimmer_details.dart';
class InfoSectionShimmer extends StatelessWidget {
  const InfoSectionShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.htmlGray.withValues(alpha: 0.7),
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.all(16),
      child: const Column(
        children: [
          // Basic info section
          InfoDetailRow(labelWidth: 80, contentWidth: 200),
          SizedBox(height: 12),
          InfoDetailRow(labelWidth: 60, contentWidth: 180),
          SizedBox(height: 12),
          InfoDetailRow(labelWidth: 50, contentWidth: 120),
          SizedBox(height: 12),

          // Divider
          InfoDivider(),
          SizedBox(height: 16),

          // Media info section
          InfoDetailRow(labelWidth: 50, contentWidth: 30),
          SizedBox(height: 12),
          InfoDetailRow(labelWidth: 70, contentWidth: 20),
          SizedBox(height: 12),
          InfoDetailRow(labelWidth: 120, contentWidth: 60),
          SizedBox(height: 12),
          InfoDetailRow(labelWidth: 50, contentWidth: 50),
          SizedBox(height: 12),
          InfoDetailRow(labelWidth: 45, contentWidth: 70),
          SizedBox(height: 12),
          InfoDetailRow(labelWidth: 70, contentWidth: 90),
          SizedBox(height: 12),
          InfoDetailRow(labelWidth: 60, contentWidth: 95),
          SizedBox(height: 12),
          InfoDetailRow(labelWidth: 50, contentWidth: 85),
          SizedBox(height: 16),

          // Another divider
          InfoDivider(),
          SizedBox(height: 16),

          // Production info section
          InfoDetailRow(labelWidth: 55, contentWidth: 70),
          SizedBox(height: 12),
          InfoDetailRow(labelWidth: 75, contentWidth: 80),
        ],
      ),
    );
  }
}
