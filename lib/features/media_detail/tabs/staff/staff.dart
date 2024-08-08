import 'package:flutter/material.dart';
import 'package:otaku_world/theme/colors.dart';

class Staff extends StatelessWidget {
  const Staff({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 20,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Container(
          height: 100,
          color: AppColors.sunsetOrange,
        ),
      ),
    );

  }
}
