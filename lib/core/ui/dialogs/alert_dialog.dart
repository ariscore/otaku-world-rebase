import 'package:flutter/material.dart';
import 'package:otaku_world/core/ui/buttons/primary_button.dart';
import 'package:otaku_world/core/ui/buttons/primary_outlined_button.dart';
import 'package:otaku_world/core/ui/filters/custom_check_box.dart';
import 'package:otaku_world/theme/colors.dart';

class CustomAlertDialog extends StatefulWidget {
  const CustomAlertDialog({
    super.key,
    required this.title,
    required this.body,
    required this.onConfirm,
    required this.onCancel,
    this.confirmText = 'Ok',
    this.cancelText = 'Cancel',
    this.showCheckBox = false,
    this.checkValue = false,
    this.checkLabel = 'Private',
    this.onChange,
  });

  final String title;
  final String body;
  final VoidCallback onConfirm;
  final VoidCallback onCancel;
  final String confirmText;
  final String cancelText;
  final bool showCheckBox;
  final bool checkValue;
  final String checkLabel;
  final VoidCallback? onChange;

  @override
  State<CustomAlertDialog> createState() => _CustomAlertDialogState();
}

class _CustomAlertDialogState extends State<CustomAlertDialog> {
  bool checkValue = false;

  @override
  void initState() {
    checkValue = widget.checkValue;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: AppColors.secondaryGradient,
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 10,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            Text(
              widget.title,
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 10),
            Text(
              widget.body,
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
            ),
            if (widget.showCheckBox)
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: CustomCheckBox(
                  value: '',
                  label: widget.checkLabel,
                  initialValue: checkValue,
                  onChanged: widget.onChange!,
                ),
              ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                PrimaryOutlinedButton(
                  onTap: widget.onCancel,
                  label: widget.cancelText,
                  isSmall: true,
                  width: 90,
                  horizontalPadding: 10,
                  verticalPadding: 5,
                  fontSize: 14,
                ),
                PrimaryButton(
                  onTap: widget.onConfirm,
                  label: widget.confirmText,
                  isSmall: true,
                  width: 90,
                  horizontalPadding: 10,
                  verticalPadding: 5,
                  fontSize: 14,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
