import 'package:flutter/material.dart';
import 'package:otaku_world/theme/colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.controller,
    this.hintText = 'Type something here...',
    this.textCapitalization = TextCapitalization.sentences,
    this.focusNode,
  });

  final TextEditingController controller;
  final FocusNode? focusNode;
  final String hintText;
  final TextCapitalization textCapitalization;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      focusNode: focusNode,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: Theme.of(context).textTheme.headlineMedium?.copyWith(
          color: AppColors.white.withOpacity(0.6),
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
      ),
      style: Theme.of(context).textTheme.headlineMedium,
      textCapitalization: textCapitalization,
      maxLines: 30,
    );
  }
}
