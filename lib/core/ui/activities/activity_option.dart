import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ActivityOption extends StatelessWidget {
  const ActivityOption({
    super.key,
    required this.context,
    required this.asset,
    required this.count,
  });

  final BuildContext context;
  final String asset;
  final int count;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        log('Option clicked!');
      },
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Row(
          children: [
            SvgPicture.asset(asset),
            const SizedBox(width: 5),
            Text(
              count.toString(),
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ],
        ),
      ),
    );
  }
}
