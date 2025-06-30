import 'package:flutter/material.dart';
import 'package:otaku_world/core/ui/markdown_v2/markdown.dart';
import 'package:otaku_world/utils/extensions.dart';
import 'package:otaku_world/utils/ui_utils.dart';

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
      decoration: UIUtils.getContainerDecoration(),
      // child: MarkdownWidget(
      //   data: description?.checkIfEmpty() ?? '*No Description*',
      // ),
      child: MyMarkdownWidgetV2(
        data: description?.checkIfEmpty() ?? '*No Description*',
      ),
    );
  }
}
