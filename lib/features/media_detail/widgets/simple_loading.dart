import 'package:flutter/material.dart';
class SimpleLoading extends StatelessWidget {
  const SimpleLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: CircularProgressIndicator());
  }
}
