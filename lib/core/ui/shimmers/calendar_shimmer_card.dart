import 'package:flutter/cupertino.dart';
import 'package:otaku_world/theme/colors.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

class CalendarShimmerCard extends StatelessWidget {
  const CalendarShimmerCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 7.5),
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          color: AppColors.blackOlive,
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Shimmer(
              child: Container(
                height: 72,
                color: AppColors.htmlGray,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 9.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Shimmer(
                      child: Container(
                        height: 18,
                        width: 40,
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          color: AppColors.htmlGray,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(5.0),
                        child: Shimmer(
                          child: Container(
                            height: 18,
                            width: 262,
                            clipBehavior: Clip.hardEdge,
                            decoration: BoxDecoration(
                                color: AppColors.htmlGray,
                                borderRadius: BorderRadius.circular(5.0)),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(5.0),
                        child: Shimmer(
                          child: Container(
                            height: 18,
                            width: 230,
                            clipBehavior: Clip.hardEdge,
                            decoration: BoxDecoration(
                                color: AppColors.htmlGray,
                                borderRadius: BorderRadius.circular(5.0)),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(7.0),
                            child: Shimmer(
                              child: Container(
                                height: 14,
                                width: 14,
                                clipBehavior: Clip.hardEdge,
                                decoration: BoxDecoration(
                                    color: AppColors.htmlGray,
                                    borderRadius: BorderRadius.circular(7.0)),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 7.0,
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(5.0),
                            child: Shimmer(
                              child: Container(
                                height: 14,
                                width: 60,
                                clipBehavior: Clip.hardEdge,
                                decoration: BoxDecoration(
                                    color: AppColors.htmlGray,
                                    borderRadius: BorderRadius.circular(5.0)),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(5.0),
                        child: Shimmer(
                          child: Container(
                            height: 14,
                            width: 124,
                            clipBehavior: Clip.hardEdge,
                            decoration: BoxDecoration(
                                color: AppColors.htmlGray,
                                borderRadius: BorderRadius.circular(5.0)),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
