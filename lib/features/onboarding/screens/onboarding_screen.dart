import 'dart:developer' as dev;

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:otaku_world/config/router/router_constants.dart';
import 'package:otaku_world/core/ui/buttons/primary_button.dart';
import 'package:otaku_world/features/onboarding/widgets/next_button.dart';
import 'package:otaku_world/theme/colors.dart';
import 'package:otaku_world/utils/shared_preference_utils.dart';

import '../../../constants/string_constants.dart';
import '../../../generated/assets.dart';

class OnBoardingScreen extends HookWidget {
  OnBoardingScreen({super.key});

  final pageImages = [
    Assets.onBoardingOnBoarding1,
    Assets.onBoardingOnBoarding2,
    Assets.onBoardingOnBoarding3,
    Assets.onBoardingOnBoarding4,
  ];

  final pageHeadings = [
    OnBoardingConstants.page1Heading,
    OnBoardingConstants.page2Heading,
    OnBoardingConstants.page3Heading,
    OnBoardingConstants.page4Heading,
  ];

  final pageSubheadings = [
    OnBoardingConstants.page1Subheading,
    OnBoardingConstants.page2Subheading,
    OnBoardingConstants.page3Subheading,
    OnBoardingConstants.page4Subheading,
  ];

  @override
  Widget build(BuildContext context) {
    final pageController = usePageController();

    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            controller: pageController,
            itemCount: 4,
            itemBuilder: (context, index) {
              return _buildWelcomePage(
                context: context,
                imagePath: pageImages[index],
                heading: pageHeadings[index],
                subheading: pageSubheadings[index],
              );
            },
          ),
          _BottomArea(pageController: pageController),
        ],
      ),
    );
  }

  // Utility function to build welcome screen page
  Widget _buildWelcomePage({
    required BuildContext context,
    required String imagePath,
    required String heading,
    required String subheading,
  }) {
    return Container(
      color: AppColors.blackOlive,
      child: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              imagePath,
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 300,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: const [0.0, 0.1, 1.0],
                  colors: [
                    AppColors.raisinBlack.withValues(alpha: 0.0),
                    AppColors.raisinBlack.withValues(alpha: 0.6),
                    AppColors.raisinBlack.withValues(alpha: 0.8),
                  ],
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 25,
                  left: 12,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 320,
                      child: Text(
                        heading,
                        style:
                            Theme.of(context).textTheme.displayMedium?.copyWith(
                                  fontFamily: 'Poppins-Semi-Bold',
                                ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: 320,
                      child: Text(
                        subheading,
                        style:
                            Theme.of(context).textTheme.headlineSmall?.copyWith(
                                  fontFamily: 'Poppins',
                                ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _BottomArea extends StatefulWidget {
  const _BottomArea({required this.pageController});

  final PageController pageController;

  @override
  State<_BottomArea> createState() => _BottomAreaState();
}

class _BottomAreaState extends State<_BottomArea> {
  int _pageIndex = 0;
  int previousPage = 0;

  @override
  Widget build(BuildContext context) {
    widget.pageController.addListener(() {
      final currentIndex = widget.pageController.page?.round() ?? 0;
      if (currentIndex != previousPage) {
        dev.log('Current index: $currentIndex', name: 'OnBoarding');
        setState(() {
          previousPage = _pageIndex;
          _pageIndex = currentIndex;
        });
      }
    });

    return (_pageIndex == 3)
        // If user is at final page then 'Get Started' button will show up which will take him/her to the login page
        ? Positioned(
            bottom: 45,
            child: PrimaryButton(
              onTap: () async {
                await SharedPreferenceUtils.setIsFirstTime(false).then(
                  (_) {
                    if (context.mounted) {
                      context.go(RouteConstants.login);
                    }
                  },
                );
              },
              label: 'Get Started',
            ),
          )
        : Positioned(
            bottom: 45,
            left: 12,
            right: 25,
            child: Row(
              children: [
                ...List.generate(
                  4,
                  (index) {
                    if (index == _pageIndex) {
                      // Build bigger dot
                      return Padding(
                        padding: const EdgeInsets.only(
                          right: 5,
                        ),
                        child: AnimatedContainer(
                          duration: const Duration(
                            milliseconds: 300,
                          ),
                          width: 30,
                          height: 8,
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              begin: Alignment(0.00, -1.00),
                              end: Alignment(0, 1),
                              colors: [
                                AppColors.sunsetOrange,
                                AppColors.japaneseIndigo,
                              ],
                            ),
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ),
                      );
                    } else {
                      // Build smaller dots
                      return Padding(
                        padding: const EdgeInsets.only(
                          right: 5,
                        ),
                        child: Container(
                          width: 8,
                          height: 8,
                          decoration: BoxDecoration(
                            color: AppColors.chineseWhite,
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ),
                      );
                    }
                  },
                ),
                // const SizedBox(
                //   width: 190,
                // ),
                const Spacer(),
                NextButton(
                  onTap: () {
                    // It'll take user to the next page
                    widget.pageController.nextPage(
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeOut,
                    );
                  },
                ),
              ],
            ),
          );
  }
}
