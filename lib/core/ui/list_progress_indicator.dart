import 'package:flutter/material.dart';

class ListProgressIndicator extends StatelessWidget {
  const ListProgressIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Padding(
        padding: EdgeInsets.all(5.0),
        child: CircularProgressIndicator(),
      ),
    );
  }
}
