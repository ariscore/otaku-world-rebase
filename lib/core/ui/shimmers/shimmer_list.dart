import 'package:flutter/cupertino.dart';

class ShimmerList extends StatelessWidget {
  const ShimmerList({
    super.key,
    required this.child,
    this.itemCount = 10,
    this.scrollDirection = Axis.vertical,
  });

  final Widget child;
  final int itemCount;
  final Axis scrollDirection;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: scrollDirection,
      itemCount: itemCount,
      itemBuilder: (context, index) => child,
    );
  }
}
