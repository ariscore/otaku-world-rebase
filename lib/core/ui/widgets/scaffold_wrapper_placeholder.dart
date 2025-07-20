import 'package:flutter/material.dart';

import '../appbars/simple_app_bar.dart';

class ScaffoldWrapperPlaceholder extends StatelessWidget {
  const ScaffoldWrapperPlaceholder({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const SimpleAppBar(),
      body: Center(
        child: child,
      ),
    );
  }
}
