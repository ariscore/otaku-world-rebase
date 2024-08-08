import 'package:flutter/material.dart';
import 'package:otaku_world/theme/colors.dart';

class CustomChoiceChip extends StatefulWidget {
  const CustomChoiceChip({
    super.key,
    required this.label,
    required this.value,
    this.onSelected,
    this.onUnselected,
    this.selected = false,
  });

  final Function(String)? onSelected;
  final Function(String)? onUnselected;
  final String label;
  final String value;
  final bool selected;

  @override
  State<CustomChoiceChip> createState() => _CustomChoiceChipState();
}

class _CustomChoiceChipState extends State<CustomChoiceChip> {
  late bool selected;

  @override
  void initState() {
    selected = widget.selected;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      label: Text(
        widget.label,
        style: Theme.of(context).textTheme.titleLarge?.copyWith(
              color: AppColors.white,
              fontFamily: 'Poppins',
            ),
      ),
      labelPadding: const EdgeInsets.symmetric(
        horizontal: 5,
      ),
      selected: selected,
      selectedColor: AppColors.sunsetOrange,
      backgroundColor: AppColors.raisinBlack,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          15.0,
        ),
      ),
      showCheckmark: false,
      side: const BorderSide(
        color: AppColors.sunsetOrange,
        width: 1,
        style: BorderStyle.solid,
      ),
      onSelected: (isSelected) {
        setState(() {
          if (isSelected) {
            if (widget.onSelected != null) {
              widget.onSelected!(widget.value);
            }
          } else {
            if (widget.onUnselected != null) {
              widget.onUnselected!(widget.value);
            }
          }
          selected = !selected;
        });
      },
    );
  }
}
