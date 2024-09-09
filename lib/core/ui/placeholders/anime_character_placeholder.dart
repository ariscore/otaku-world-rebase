import 'package:flutter/material.dart';
import 'package:otaku_world/theme/colors.dart';

class AnimeCharacterPlaceholder extends StatelessWidget {
  const AnimeCharacterPlaceholder({
    super.key,
    required this.asset,
    required this.heading,
    required this.subheading,
    this.height = 200,
  });

  final String asset;
  final String heading;
  final String subheading;
  final double height;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: height,
            child: Image.asset(
              asset,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            heading,
            style: Theme.of(context).textTheme.displayMedium,
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
                    color: AppColors.white.withOpacity(0.8),
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
