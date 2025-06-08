import 'package:flutter/material.dart';

import '../../../../theme/colors.dart';
import '../../../../utils/formatting_utils.dart';

class NotificationBaseCard extends StatelessWidget {
  const NotificationBaseCard({
    super.key,
    required this.onPressed,
    required this.createdAt,
    required this.child,
  });

  final VoidCallback onPressed;
  final int createdAt;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 5,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: AppColors.secondaryGradient,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              FormattingUtils.formatUnixTimestamp(createdAt),
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    color: AppColors.white.withValues(alpha:0.8),
                  ),
            ),
            child,
          ],
        ),
      ),
    );
  }
}
