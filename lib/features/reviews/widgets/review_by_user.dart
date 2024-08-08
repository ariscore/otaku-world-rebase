import 'package:flutter/material.dart';
class ReviewByUser extends StatelessWidget {
  const ReviewByUser({super.key, required this.mediaTitle, required this.userName});

  final String mediaTitle;
  final String userName;

  @override
  Widget build(BuildContext context) {
    return  RichText(
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
      text: TextSpan(
        text: 'Review of ',
        style: Theme.of(context)
            .textTheme
            .headlineSmall
            ?.copyWith(
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w100,
        ),
        children: [
          TextSpan(
            text: mediaTitle,
            style: Theme.of(context)
                .textTheme
                .headlineSmall
                ?.copyWith(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600),
          ),
          TextSpan(
            text: ' by ',
            style: Theme.of(context)
                .textTheme
                .headlineSmall
                ?.copyWith(fontFamily: 'Poppins'),
          ),
          TextSpan(
            text: userName,
            style: Theme.of(context)
                .textTheme
                .headlineSmall
                ?.copyWith(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
