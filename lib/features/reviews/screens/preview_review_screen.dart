import 'package:flutter/material.dart';
import 'package:otaku_world/core/ui/markdown/markdown.dart';
import 'package:otaku_world/core/ui/markdown_v2/markdown.dart';

import '../../../core/ui/appbars/simple_app_bar.dart';

class PreviewReviewScreen extends StatelessWidget {
  const PreviewReviewScreen({
    super.key,
    required this.data,
  });

  final String data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const SimpleAppBar(title: 'Preview'),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        // child: MarkdownWidget(data: data),
        child: MyMarkdownWidgetV2(data: data),
      ),
    );
  }
}
