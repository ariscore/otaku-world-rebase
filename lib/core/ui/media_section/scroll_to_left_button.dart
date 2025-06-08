import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';

import '../../../generated/assets.dart';
import '../../../theme/colors.dart';

class ScrollToLeftFAB extends StatefulHookWidget {
  const ScrollToLeftFAB({
    super.key,
    required this.controller,
    required this.tag,
  });

  final ScrollController controller;
  final String tag;

  @override
  State<ScrollToLeftFAB> createState() => _ScrollToLeftFABState();
}

class _ScrollToLeftFABState extends State<ScrollToLeftFAB> {
  bool _isVisible = false;

  @override
  Widget build(BuildContext context) {
    useEffect(() {
      widget.controller.addListener(() {
        final minScroll = widget.controller.position.minScrollExtent;
        final currentScroll = widget.controller.position.pixels;

        if (mounted) {
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
        }
      });
      return null;
    });

    return _isVisible
        ? Animate(
            effects: const [ScaleEffect()],
            child: Positioned(
              top: 0,
              bottom: 0,
              left: 0,
              child: Center(
                child: FloatingActionButton.small(
                  heroTag: widget.tag,
                  onPressed: () {
                    widget.controller.animateTo(
                      0,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeInOut,
                    );
                  },
                  backgroundColor: AppColors.sunsetOrange.withValues(alpha:0.60),
                  child: SvgPicture.asset(
                    Assets.iconsArrowLeft,
                    colorFilter: const ColorFilter.mode(
                      AppColors.white,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
              ),
            ),
          )
        : const SizedBox();
  }
}
