import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../generated/assets.dart';
import '../../../theme/colors.dart';

class ScrollToTopFAB extends StatefulHookWidget {
  const ScrollToTopFAB({
    required this.controller,
    super.key,
  });

  final ScrollController controller;

  @override
  State<ScrollToTopFAB> createState() => _ScrollToTopFABState();
}

class _ScrollToTopFABState extends State<ScrollToTopFAB> {
  bool _isVisible = false;

  @override
  Widget build(BuildContext context) {
    useEffect(() {
      widget.controller.addListener(() {
        final minScroll = widget.controller.position.minScrollExtent;
        final currentScroll = widget.controller.position.pixels;

        if (currentScroll > minScroll + 100) {
          if (!_isVisible) {
            setState(() {
              _isVisible = true;
            });
          }
        } else {
          if (_isVisible) {
            setState(() {
              _isVisible = false;
            });
          }
        }
      });
      return null;
    });

    return _isVisible
        ? Animate(
            effects: const [ScaleEffect()],
            child: IconButton(
              style: ButtonStyle(
                shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                backgroundColor: WidgetStateColor.resolveWith(
                  (states) => AppColors.sunsetOrange.withOpacity(0.6),
                ),
              ),
              onPressed: () {
                widget.controller.animateTo(
                  0,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeInOut,
                );
              },
              icon: SvgPicture.asset(
                Assets.iconsArrowUp,
              ),
            ),
          )
        : const SizedBox();
  }
}
