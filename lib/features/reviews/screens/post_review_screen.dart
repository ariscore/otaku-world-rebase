import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:otaku_world/core/ui/appbars/simple_app_bar.dart';
import 'package:otaku_world/core/ui/buttons/primary_outlined_button.dart';

import '../../../config/router/router_constants.dart';
import '../../../core/ui/custom_text_field.dart';
import '../../../core/ui/filters/custom_check_box.dart';
import '../../../core/ui/texts/counter_text.dart';
import '../../../theme/colors.dart';

class PostReviewScreen extends StatelessWidget {
  const PostReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const SimpleAppBar(title: 'Post a New Review'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            Center(
              child: PrimaryOutlinedButton(
                height: 30,
                horizontalPadding: 10,
                isSmall: true,
                onTap: () {
                  context.push(RouteConstants.writeReview);
                },
                label: 'Write a Review ',
                fontSize: 14,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'The text must be at least 2200 characters.',
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Review Summary',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
                height: 0,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: TextEditingController(),
              maxLength: 120,
              decoration: InputDecoration(
                isDense: true,
                contentPadding: const EdgeInsets.all(8),
                hintText: 'Type something here...',
                hintStyle: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      color: AppColors.white.withOpacity(0.6),
                    ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    color: AppColors.sunsetOrange,
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              style: Theme.of(context).textTheme.headlineSmall,
              maxLines: 1,
              buildCounter: (
                context, {
                required currentLength,
                required isFocused,
                required maxLength,
              }) {
                return CounterText(
                  maxLength: maxLength,
                  currentLength: currentLength,
                  fontSize: 14,
                );
              },
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Review summary must be less than 120 characters and greater than 20 characters.',
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Score',
                  style: Theme.of(context)
                      .textTheme
                      .displayMedium!
                      .copyWith(fontSize: 18, fontWeight: FontWeight.w600),
                ),
                Row(
                  children: [
                    SizedBox(
                      height: 50,
                      width: 50,
                      child: CustomTextField(
                        controller: TextEditingController(),
                        hintText: '',
                        maxLines: 1,
                        maxLength: 3,
                        keyboardType: TextInputType.number,
                      ),
                    ),
                    Text(
                      ' / 100',
                      style: Theme.of(context)
                          .textTheme
                          .displayMedium!
                          .copyWith(fontSize: 18),
                    )
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            CustomCheckBox(
              label: 'Private',
              onChanged: () {},
              initialValue: true,
            ),
          ],
        ),
      ),
    );
  }
}
