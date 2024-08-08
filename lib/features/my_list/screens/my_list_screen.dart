  import 'package:flutter/material.dart';
import 'package:otaku_world/theme/colors.dart';

class MyListScreen extends StatelessWidget {
  const MyListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'MyList Screen',
          style: TextStyle(color: AppColors.white),
        ),
      ),
    );
  }
}
