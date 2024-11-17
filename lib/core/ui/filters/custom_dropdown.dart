import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:otaku_world/generated/assets.dart';

import '../../../theme/colors.dart';

// If we are giving custom Type T value then we must provide dropdownItemsValues otherwise it does not work
class CustomDropdown<T extends Object> extends StatefulWidget {
  const CustomDropdown({
    super.key,
    this.title,
    this.description,
    this.dropdownItemsValues,
    required this.dropdownItems,
    this.titleStyle,
    required this.initialValue,
    required this.onChange,
    this.borderRadius = 10,
    this.selectedValueNotifier,
  });

  final String? title;
  final String? description;
  final TextStyle? titleStyle;

  final List<T>?
      dropdownItemsValues; // List of enum or other type values (optional)
  final List<String> dropdownItems; // List of strings for display
  final T initialValue;
  final Function(T) onChange;
  final double borderRadius;
  final ValueNotifier<T>? selectedValueNotifier;

  @override
  State<CustomDropdown> createState() => _CustomDropdownState<T>();
}

class _CustomDropdownState<T extends Object> extends State<CustomDropdown<T>> {
  late T selectedValue;

  @override
  void initState() {
    super.initState();
    selectedValue = widget.initialValue;
    widget.selectedValueNotifier?.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    widget.selectedValueNotifier?.removeListener(() {});
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final dropdownItemsValues =
        widget.dropdownItemsValues ?? widget.dropdownItems.cast<T>();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.title != null)
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Text(
              widget.title!,
              style: (widget.titleStyle == null)
                  ? Theme.of(context).textTheme.displayMedium!.copyWith(
                        fontFamily: 'Poppins-Medium',
                      )
                  : widget.titleStyle,
            ),
          ),
        if (widget.description != null)
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Text(
              widget.description!,
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: Colors.white.withOpacity(0.8),
              ),
            ),
          ),
        DropdownButtonFormField<T>(
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 0,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(widget.borderRadius),
            ),
            enabled: false,
            fillColor: AppColors.jet,
            filled: true,
          ),
          onChanged: (value) {
            setState(() {
              if (value != null && selectedValue != value) {
                widget.selectedValueNotifier?.value = value;
                widget.onChange(value);
                selectedValue = value;
              }
            });
          },
          icon: SvgPicture.asset(Assets.iconsArrowDown),
          alignment: Alignment.topCenter,
          borderRadius: BorderRadius.circular(widget.borderRadius),
          value: widget.selectedValueNotifier?.value ?? selectedValue,
          dropdownColor: AppColors.jet,
          isExpanded: true,
          style: Theme.of(context).textTheme.headlineSmall,
          items: List<DropdownMenuItem<T>>.generate(
            dropdownItemsValues.length,
            (index) {
              return DropdownMenuItem<T>(
                value: dropdownItemsValues[index],
                child: Text(
                  widget.dropdownItems[index],
                ), // Display string
              );
            },
          ),
        ),
      ],
    );
  }
}
