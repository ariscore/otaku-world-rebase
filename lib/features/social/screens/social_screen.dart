import 'package:flutter/material.dart';
import 'package:otaku_world/theme/colors.dart';

class SocialScreen extends StatelessWidget {
  const SocialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Social Screen',
          style: TextStyle(color: AppColors.white),
        ),
      ),
    );
  }
}
