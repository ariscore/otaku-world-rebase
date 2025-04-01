import 'package:flutter/material.dart';
import 'package:otaku_world/core/ui/custom_text_field.dart';

import '../../../core/ui/appbars/simple_app_bar.dart';

class WriteReviewScreen extends StatelessWidget {
  const WriteReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const SimpleAppBar(title: 'Write New Review'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomTextField(
              controller: TextEditingController(),
              isShowingCounter: true,
              maxLength: 2200,

            ),
          ],
        ),
      ),
    );
  }
}
