import 'package:otaku_world/core/ui/shimmers/detail_screens/shimmer_details.dart';

class CopyrightText extends StatelessWidget {
  final String year;
  final String parentCompany;
  final String productName;

  const CopyrightText({
    super.key,
    required this.year,
    required this.parentCompany,
    required this.productName,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      '© $year $parentCompany ($productName)',
      style: Theme.of(context).textTheme.bodySmall?.copyWith(
        color: AppColors.americanSilver,
        fontFamily: 'Roboto',
      ),
      textAlign: TextAlign.center,
    );
  }
}
