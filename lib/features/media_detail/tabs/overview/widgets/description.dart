import 'package:flutter/material.dart';
import 'package:otaku_world/core/ui/markdown/markdown.dart';
import 'package:otaku_world/utils/extensions.dart';

class Description extends StatelessWidget {
  const Description({
    super.key,
    required this.description,
  });

  final String? description;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 13,
        bottom: 17,
        left: 10,
        right: 10,
      ),
      decoration: ShapeDecoration(
        gradient: const LinearGradient(
          begin: Alignment(0.00, -1.00),
          end: Alignment(0, 1),
          colors: [Color(0xFF263749), Color(0xFF404040)],
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        shadows: const [
          BoxShadow(
            color: Color(0x3F000000),
            blurRadius: 4,
            offset: Offset(0, 4),
            spreadRadius: 0,
          )
        ],
      ),
      child: Markdown(
        data: description?.checkIfEmpty() ?? '*No Description*',
      ),
    );
  }
}
