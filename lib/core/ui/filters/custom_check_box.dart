import 'package:flutter/material.dart';
import '../../../theme/colors.dart';

class CustomCheckBox extends StatefulWidget {
  const CustomCheckBox({
    super.key,
    required this.label,
    required this.value,
    required this.onChanged,
    required this.initialValue,
  });

  final String label;
  final String value;
  final VoidCallback onChanged;
  final bool initialValue;

  @override
  State<CustomCheckBox> createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  late bool selected;

  @override
  void initState() {
    selected = widget.initialValue;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          widget.onChanged();
          selected = !selected;
        });
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Checkbox(
            side: const BorderSide(
              color: AppColors.sunsetOrange,
              style: BorderStyle.solid,
              width: 1,
            ),
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            visualDensity: const VisualDensity(horizontal: -4, vertical: 0),
            checkColor: AppColors.white,
            activeColor: AppColors.sunsetOrange,
            value: selected,
            onChanged: (value) {
              setState(() {
                widget.onChanged();
                selected = !selected;
              });
            },
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            widget.label,
            style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                  color: AppColors.white,
                  fontFamily: 'Poppins',
                ),
          )
        ],
      ),
    );
  }
}
