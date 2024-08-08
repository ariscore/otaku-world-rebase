import 'package:flutter/material.dart';
import 'package:otaku_world/theme/colors.dart';

class ErrorText extends StatelessWidget {
  const ErrorText({super.key, required this.message, required this.onTryAgain});

  final String message;
  final VoidCallback onTryAgain;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          message,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(height: 5),
        TextButton(
          onPressed: onTryAgain,
          child: Text(
            'Try again',
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  color: AppColors.sunsetOrange,
                ),
          ),
        ),
      ],
    );
  }
}
