import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';

import '../../../generated/assets.dart';
import '../../../theme/colors.dart';

class PrimaryFAB extends StatefulHookWidget {
  const PrimaryFAB({super.key, required this.controller, required this.onPressed,});

  final ScrollController controller;
  final VoidCallback onPressed;

  @override
  State<PrimaryFAB> createState() => _WriteReplyButtonState();
}

class _WriteReplyButtonState extends State<PrimaryFAB> {
  bool _isVisible = true;

  @override
  Widget build(BuildContext context) {
    useEffect(() {
      widget.controller.addListener(() {
        if (widget.controller.position.userScrollDirection ==
            ScrollDirection.reverse) {
          if (_isVisible) {
            setState(() {
              _isVisible = false;
            });
          }
        } else if (widget.controller.position.userScrollDirection ==
            ScrollDirection.forward) {
          if (!_isVisible) {
            setState(() {
              _isVisible = true;
            });
          }
        }
      });
      return null;
    });

    return _isVisible
        ? Animate(
            effects: const [ScaleEffect()],
            child: FloatingActionButton(
              backgroundColor: AppColors.sunsetOrange,
              onPressed: widget.onPressed,
              child: SvgPicture.asset(Assets.iconsEdit, width: 25),
            ),
          )
        : const SizedBox();
  }
}
