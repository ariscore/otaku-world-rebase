import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:otaku_world/core/ui/shimmers/detail_screens/shimmer_details.dart';

class DoubleBackPopWidget extends StatefulWidget {
  final Widget child;
  final String? message;
  final Duration duration;
  final VoidCallback? onFirstBackPress;
  final VoidCallback? onDoubleBackPress;

  const DoubleBackPopWidget({
    super.key,
    required this.child,
    this.message = 'Press back again to exit',
    this.duration = const Duration(seconds: 2),
    this.onFirstBackPress,
    this.onDoubleBackPress,
  });

  @override
  State<DoubleBackPopWidget> createState() => _DoubleBackPopWidgetState();
}

class _DoubleBackPopWidgetState extends State<DoubleBackPopWidget> {
  DateTime? _lastBackPressed;

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, _) {
        if (didPop) return;

        _handleBackPress(context);
      },
      child: widget.child,
    );
  }

  void _handleBackPress(BuildContext context) {
    final now = DateTime.now();

    if (_lastBackPressed == null ||
        now.difference(_lastBackPressed!) > widget.duration) {
      // First back press or timeout exceeded
      _lastBackPressed = now;

      // Show snackbar message
      if (widget.message != null) {
        if (mounted) {
          UIUtils.showSnackBar(
            context,
            widget.message!,
          );
        }
      }

      // Call first back press callback
      widget.onFirstBackPress?.call();
    } else {
      // Second back press within duration
      widget.onDoubleBackPress?.call();

      // Schedule the navigation for the next frame to avoid navigator lock
      WidgetsBinding.instance.addPostFrameCallback(
        (_) {
          if (mounted) {
            // Check if we can go back in GoRouter
            if (context.canPop()) {
              context.pop();
            } else {
              // Exit app if no more routes to pop
              SystemNavigator.pop();
            }
          }
        },
      );
    }
  }
}
