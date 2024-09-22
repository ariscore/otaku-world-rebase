import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:otaku_world/bloc/reviews/reviews/review_bloc.dart';
import 'package:otaku_world/core/ui/filters/custom_dropdown.dart';
import 'package:otaku_world/utils/extensions.dart';

import '../../../bloc/paginated_data/paginated_data_bloc.dart';
import '../../../core/ui/buttons/primary_button.dart';
import '../../../graphql/__generated/graphql/schema.graphql.dart';
import '../../../theme/colors.dart';

class ReviewBottomSheet extends StatelessWidget {
  const ReviewBottomSheet({
    super.key,
    required this.reviewsBloc,
  });

  final ReviewsBloc reviewsBloc;
  static const List<Enum$ReviewSort> reviewSort = [
    Enum$ReviewSort.CREATED_AT_DESC,
    Enum$ReviewSort.CREATED_AT,
    Enum$ReviewSort.SCORE_DESC,
    Enum$ReviewSort.SCORE,
    Enum$ReviewSort.RATING_DESC,
    Enum$ReviewSort.RATING,
    Enum$ReviewSort.UPDATED_AT_DESC,
    Enum$ReviewSort.UPDATED_AT
  ];

  static const List<String> mediaSort = ['All', 'Anime', 'Manga'];

  final TextStyle bottomSheetHeaderStyle = const TextStyle(
    color: AppColors.white,
    fontSize: 20,
    fontFamily: 'Roboto Condensed',
    fontWeight: FontWeight.w500,
  );

  final TextStyle bottomSheetDropdownStyle = const TextStyle(
    color: Colors.white,
    fontSize: 14,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w500,
    height: 0,
  );

  @override
  Widget build(BuildContext context) {
    final reviewBloc = context.read<ReviewsBloc>();
    return BlocProvider.value(
      value: reviewBloc,
      child: Container(
        height: 300,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          color: AppColors.darkCharcoal,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
        ),
        padding: const EdgeInsets.only(
          top: 10,
          left: 15,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Center(
              child: Container(
                height: 5,
                width: 50,
                decoration: ShapeDecoration(
                  color: AppColors.lightSilver,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Media',
              style: bottomSheetHeaderStyle,
            ),
            const SizedBox(
              height: 5,
            ),
            BlocBuilder<ReviewsBloc, PaginatedDataState>(
              builder: (context, state) {
                return CustomDropdown(
                  dropdownItems: mediaSort,
                  initialValue: reviewBloc.mediaType?.displayTitle ?? 'All',
                  onChange: (value) {
                    if (value == 'Manga') {
                      reviewBloc.mediaType = Enum$MediaType.MANGA;
                    } else if (value == 'Anime') {
                      reviewBloc.mediaType = Enum$MediaType.ANIME;
                    } else {
                      reviewBloc.mediaType = null;
                    }
                  },
                );
              },
            ),
            Text(
              'Sort',
              style: bottomSheetHeaderStyle,
            ),
            const SizedBox(
              height: 20,
            ),
            PrimaryButton(
              color: AppColors.silver,
              onTap: () {},
              label: 'Remove All',
            ),
            const SizedBox(
              height: 10,
            ),
            PrimaryButton(
              onTap: () {},
              label: 'Apply Filters',
            )
          ],
        ),
      ),
    );
  }
}
