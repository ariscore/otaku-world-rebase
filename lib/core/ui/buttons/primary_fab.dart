import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/svg.dart';

import '../../../generated/assets.dart';
import '../../../theme/colors.dart';

class PrimaryFAB extends StatefulWidget {
  const PrimaryFAB({
    super.key,
    required this.controller,
    required this.onPressed,
    this.asset = Assets.iconsEdit,
  });

  final ScrollController controller;
  final VoidCallback onPressed;
  final String asset;

  @override
  State<PrimaryFAB> createState() => _WriteReplyButtonState();
}

class _WriteReplyButtonState extends State<PrimaryFAB> {
  bool _isVisible = true;

  @override
  void initState() {
    widget.controller.addListener(_listener);
    super.initState();
  }

  @override
  void dispose() {
    widget.controller.removeListener(_listener);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _isVisible
        ? Animate(
            effects: const [ScaleEffect()],
            child: FloatingActionButton(
              backgroundColor: AppColors.sunsetOrange,
              onPressed: widget.onPressed,
              child: SvgPicture.asset(widget.asset, width: 25),
            ),
          )
        : const SizedBox();
  }

  void _listener() {

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

  }
}
