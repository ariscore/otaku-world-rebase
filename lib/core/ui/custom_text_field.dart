import 'package:flutter/material.dart';
import 'package:otaku_world/core/ui/texts/counter_text.dart';
import 'package:otaku_world/theme/colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.controller,
    this.hintText = 'Type something here...',
    this.textCapitalization = TextCapitalization.sentences,
    this.focusNode,
    this.maxLines = 25,
    this.maxLength,
    this.minLength,
    this.isShowingCounter = false,
    this.keyboardType,
    this.counterBuilder,
    this.validator,
  });

  final TextEditingController controller;
  final FocusNode? focusNode;
  final String hintText;
  final TextCapitalization textCapitalization;
  final int maxLines;
  final int? maxLength;
  final int? minLength;
  final bool isShowingCounter;
  final TextInputType? keyboardType;
  final Widget Function(BuildContext, int currentLength, int? maxLength)?
      counterBuilder;
  final FormFieldValidator<String>? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      controller: controller,
      focusNode: focusNode,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: Theme.of(context).textTheme.headlineMedium?.copyWith(
              color: AppColors.white.withValues(alpha: 0.6),
            ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(
            color: AppColors.sunsetOrange,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 10,
        ),
        errorMaxLines: 2,
      ),
      style: Theme.of(context).textTheme.headlineMedium,
      textCapitalization: textCapitalization,
      maxLines: maxLines,
      maxLength: maxLength,
      buildCounter: (context,
          {required currentLength, required isFocused, required maxLength}) {
        if (!isShowingCounter) return null;

        // Get the current error text from validation
        final String? errorText =
            validator != null ? validator!(controller.text) : null;

        if (counterBuilder != null) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              counterBuilder!(context, currentLength, maxLength),

              // Add error text below the counter if there is an error
              if (errorText != null) _errorText(errorText),
            ],
          );
        }

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CounterText(
              currentLength: currentLength,
              maxLength: minLength ?? maxLength ?? 0,
            ),

            // Add error text below the counter if there is an error
            if (errorText != null) _errorText(errorText)
          ],
        );
      },
      keyboardType: keyboardType,
    );
  }

  Widget _errorText(String errorText) {
    return Padding(
      padding: const EdgeInsets.only(top: 5.0),
      child: Text(
        errorText,
        style: TextStyle(
          color: Colors.red[300],
          fontSize: 14.0,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
