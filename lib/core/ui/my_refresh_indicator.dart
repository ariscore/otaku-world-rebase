import 'package:custom_refresh_indicator/custom_refresh_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:otaku_world/generated/assets.dart';
import 'package:otaku_world/theme/colors.dart';

class _Meteorite {
  AnimationController? controller;
  final SvgPicture image;
  final double dx;
  final double dy;
  final double width;
  final double height;
  final Duration duration;
  final Duration delay;

  _Meteorite({
    required this.image,
    required this.dx,
    required this.dy,
    required this.width,
    required this.height,
    required this.duration,
    required this.delay,
  });
}

class MyRefreshIndicator extends StatefulWidget {
  final Widget child;
  final Future<void> Function() onRefresh;
  final Color background;
  const MyRefreshIndicator({
    super.key,
    required this.child,
    required this.onRefresh,
    this.background = AppColors.raisinBlack,
  });

  @override
  State<MyRefreshIndicator> createState() => _MyRefreshIndicator();
}

class _MyRefreshIndicator extends State<MyRefreshIndicator>
    with TickerProviderStateMixin {
  static final _meteoriteTween = CurveTween(curve: Curves.easeInOutCubic);
  late AnimationController _moonEyeController;
  @override
  void initState() {
    _moonEyeController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    );
    _setupMeteoriteAnimationControllers();
    super.initState();
  }

  @override
  void dispose() {
    _moonEyeController.dispose();
    _disposeMeteoriteAnimationControllers();
    super.dispose();
  }

  void _setupMeteoriteAnimationControllers() {
    for (final meteorite in meteorites) {
      meteorite.controller = AnimationController(
        vsync: this,
        duration: meteorite.duration,
      );
    }
  }

  void _disposeMeteoriteAnimationControllers() {
    for (final meteorite in meteorites) {
      meteorite.controller!.dispose();
    }
  }

  void _startMoonEyeAnimation() {
    _moonEyeController.forward();
  }

  void _stopMoonEyeAnimation() {
    _moonEyeController.stop();
    _moonEyeController.reset();
  }

  void _startMeteoriteAnimation() {
    for (final meteorite in meteorites) {
      Future.delayed(meteorite.delay, () {
        meteorite.controller!.forward();
      });
    }
  }

  void _stopMeteoriteAnimation() {
    for (final meteorite in meteorites) {
      meteorite.controller!.stop();
      meteorite.controller!.reset();
    }
  }

  static const _offsetToArmed = 150.0;

  static final meteorites = [
    _Meteorite(
      image: SvgPicture.asset(
        Assets.myRefreshIndicatorMeteorite1,
      ),
      dx: 50.0,
      dy: -80.0,
      width: 67,
      height: 29,
      duration: const Duration(milliseconds: 1000),
      delay: const Duration(milliseconds: 0),
    ),
    _Meteorite(
      image: SvgPicture.asset(
        Assets.myRefreshIndicatorMeteorite2,
      ),
      dx: 80.0,
      dy: -60.0,
      width: 39,
      height: 16,
      duration: const Duration(milliseconds: 750),
      delay: const Duration(milliseconds: 300),
    ),
    _Meteorite(
      image: SvgPicture.asset(
        Assets.myRefreshIndicatorMeteorite3,
      ),
      dx: 25.0,
      dy: -80.0,
      width: 25,
      height: 10,
      duration: const Duration(milliseconds: 700),
      delay: const Duration(milliseconds: 500),
    ),
    _Meteorite(
      image: SvgPicture.asset(
        Assets.myRefreshIndicatorMeteorite3,
      ),
      dx: -25.0,
      dy: -60.0,
      width: 25,
      height: 10,
      duration: const Duration(milliseconds: 700),
      delay: const Duration(milliseconds: 800),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final screenWidth = constraints.maxWidth;
        const double screenHeight = 150.0;

        return CustomRefreshIndicator(

          onRefresh: () async {
            await Future.delayed(
              const Duration(milliseconds: 1500),
              widget.onRefresh,
            );
          },
          onStateChanged: (change) {
            if (change.didChange(
              to: IndicatorState.loading,
            )) {
              _startMeteoriteAnimation();
              _startMoonEyeAnimation();
            }
            if (change.didChange(
              to: IndicatorState.finalizing,
            )) {
              _stopMeteoriteAnimation();
              _stopMoonEyeAnimation();
            }
          },
          builder: (
            BuildContext context,
            Widget child,
            IndicatorController controller,
          ) {
            return AnimatedBuilder(
              animation: controller,
              child: child,
              builder: (context, child) {
                return Stack(
                  clipBehavior: Clip.hardEdge,
                  children: [
                    if (!controller.side.isNone)
                      Container(
                        // clipBehavior: Clip.hardEdge,
                        height: _offsetToArmed * controller.value,
                        color: AppColors.black,
                        width: double.infinity,
                        child: Stack(
                          clipBehavior: Clip.hardEdge,
                          children: [
                            // sky
                            OverflowBox(
                              maxHeight: double.infinity,
                              maxWidth: double.infinity,
                              minHeight: 150,
                              minWidth: 360,
                              alignment: Alignment.topLeft,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  for (int i = 0;
                                      i * 150 < screenHeight + 50;
                                      i++)
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        for (int i = 0;
                                            i * 360 < screenWidth;
                                            i++)
                                          const Image(
                                            image: AssetImage(
                                              Assets.myRefreshIndicatorSky,
                                            ),
                                          ),
                                      ],
                                    ),
                                ],
                              ),
                            ),

                            // meteorites
                            for (final meteorite in meteorites)
                              _buildMeteorite(
                                meteorite: meteorite,
                                screenWidth: screenWidth,
                                screenHeight: screenHeight,
                              ),

                            // moon
                            Stack(
                              children: [
                                OverflowBox(
                                  alignment: Alignment(25 * 2 / screenWidth - 1,
                                      10 * 2 / screenHeight - 1),
                                  child: Opacity(
                                    opacity:
                                        1 - controller.value.clamp(0.0, 1.0),
                                    child: SvgPicture.asset(
                                      Assets.myRefreshIndicatorFullMoon,
                                    ),
                                  ),
                                ),
                                OverflowBox(
                                  alignment: Alignment(25 * 2 / screenWidth - 1,
                                      10 * 2 / screenHeight - 1),
                                  child: Opacity(
                                    opacity: 2 *
                                        (controller.value.clamp(0.5, 1.0) -
                                            0.5),
                                    child: SvgPicture.asset(
                                      Assets.myRefreshIndicatorMoonLogoBefore,
                                    ),
                                  ),
                                ),
                                OverflowBox(
                                  alignment: Alignment(25 * 2 / screenWidth - 1,
                                      10 * 2 / screenHeight - 1),
                                  child: AnimatedBuilder(
                                    animation: _moonEyeController,
                                    builder:
                                        (BuildContext context, Widget? child) {
                                      return Opacity(
                                        opacity: _moonEyeController.value,
                                        child: child,
                                      );
                                    },
                                    child: SvgPicture.asset(
                                      Assets.myRefreshIndicatorMoonLogoAfter,
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            // forest
                            OverflowBox(
                              maxHeight: 60,
                              maxWidth: double.infinity,
                              minHeight: 60,
                              minWidth: 360,
                              alignment: Alignment.bottomLeft,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  for (int i = 0; i * 360 < screenWidth; i++)
                                    const Image(
                                      image: AssetImage(
                                        Assets.myRefreshIndicatorForest,
                                      ),
                                    ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    Transform.translate(
                      offset: Offset(
                        0.0,
                        _offsetToArmed * controller.value,
                      ),
                      child: Container(
                        color: widget.background,
                        child: child,
                      ),
                    ),
                  ],
                );
              },
            );
          },
          child: widget.child,
        );
      },
    );
  }

  Widget _buildMeteorite({
    required _Meteorite meteorite,
    required double screenWidth,
    required double screenHeight,
  }) {
    return AnimatedBuilder(
      animation: meteorite.controller as AnimationController,
      builder: (BuildContext context, Widget? child) {
        double value = _meteoriteTween.transform(meteorite.controller!.value);
        return Transform.translate(
          offset: Offset(
            (meteorite.dx * screenWidth) / 200 - 2.5 * meteorite.width * value,
            (meteorite.dy * screenHeight) / 200 +
                2.5 * meteorite.height * value,
          ),
          child: Opacity(
            opacity: ((0.3 <= value) && (value < 0.7)
                ? 1
                : 3.33 *
                    (((0.0 <= value) && (value < 0.3)) ? value : 1.0 - value)),
            child: child,
          ),
        );
      },
      child: OverflowBox(
        maxWidth: meteorite.width,
        maxHeight: meteorite.height,
        minWidth: meteorite.width,
        minHeight: meteorite.height,
        child: meteorite.image,
      ),
    );
  }
}
