import 'package:flutter/material.dart';

class ReviewByUser extends StatelessWidget {
  const ReviewByUser({
    super.key,
    required this.mediaTitle,
    required this.userName,
  });

  final String? mediaTitle;
  final String? userName;

  @override
  Widget build(BuildContext context) {
    return RichText(
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
      text: TextSpan(
        style: Theme.of(context)
            .textTheme
            .headlineSmall
            ?.copyWith(fontFamily: 'Poppins'),
        children: [
          const TextSpan(
            text: 'Review',
            style: TextStyle(fontWeight: FontWeight.w100),
          ),
          if (mediaTitle != null && mediaTitle!.isNotEmpty) ...[
            const TextSpan(
              text: ' of ',
              style: TextStyle(fontWeight: FontWeight.w100),
            ),
            TextSpan(
              text: mediaTitle,
              style: const TextStyle(fontWeight: FontWeight.w600),
            ),
          ],
          if (userName != null && userName!.isNotEmpty) ...[
            const TextSpan(
              text: ' by ',
            ),
            TextSpan(
              text: userName,
              style: const TextStyle(fontWeight: FontWeight.w600),
            ),
          ],
        ],
      ),
    );
  }
}
