import 'package:flutter/material.dart';
import 'package:otaku_world/theme/colors.dart';

class AnimeCharacterPlaceholder extends StatelessWidget {
  const AnimeCharacterPlaceholder({
    super.key,
    required this.asset,
    this.heading,
    required this.subheading,
    this.width,
    this.height = 200,
    this.isError = false,
    this.onTryAgain,
    this.actionLabel = 'Try Again',
    this.isScrollable = false,
  });

  final String asset;
  final String? heading;
  final String subheading;
  final double? width;
  final double height;
  final bool isError;
  final String actionLabel;
  final VoidCallback? onTryAgain;
  final bool isScrollable;

  @override
  Widget build(BuildContext context) {
    if (isScrollable) {
      return SingleChildScrollView(
        child: _buildContent(context),
      );
    }
    return _buildContent(context);
  }

  Widget _buildContent(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: width,
              height: height,
              child: Image.asset(
                asset,
              ),
            ),
            if (heading != null)
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Text(
                  heading!,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.displayMedium,
                ),
              ),
            const SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
              ),
              child: Text(
                subheading,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      fontFamily: 'Poppins',
                      color: AppColors.white.withValues(alpha: 0.8),
                    ),
              ),
            ),
            if (isError)
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: TextButton(
                  onPressed: onTryAgain,
                  child: Text(
                    actionLabel,
                    style: const TextStyle(color: AppColors.sunsetOrange),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
