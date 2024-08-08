import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:otaku_world/generated/assets.dart';
import 'package:otaku_world/theme/colors.dart';

class FeatureCard extends StatelessWidget {
  const FeatureCard(
      {super.key,
      required this.heading,
      required this.subheading,
      required this.icon,
      required this.onTap});

  final String heading;
  final String subheading;
  final String icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(15),
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 13,
          ),
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            gradient: LinearGradient(
              colors: [
                AppColors.darkCharcoal.withOpacity(0.5),
                AppColors.japaneseIndigo
              ],
            ),
            shadows: [
              BoxShadow(
                color: AppColors.black.withOpacity(0.25),
                blurRadius: 4,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        heading,
                        style: Theme.of(context).textTheme.displayMedium?.copyWith(
                              fontWeight: FontWeight.bold,
                              color: AppColors.sunsetOrange,
                            ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      SvgPicture.asset(icon),
                    ],
                  ),
                  SvgPicture.asset(Assets.iconsDoubleArrowRight),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                subheading,
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontFamily: 'Poppins',
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
