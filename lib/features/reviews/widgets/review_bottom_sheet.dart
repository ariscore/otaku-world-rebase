import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:otaku_world/core/ui/filters/custom_dropdown.dart';
import 'package:otaku_world/utils/extensions.dart';

import '../../../bloc/graphql_client/graphql_client_cubit.dart';
import '../../../bloc/paginated_data/paginated_data_bloc.dart';
import '../../../bloc/reviews/reviews/reviews_bloc.dart';
import '../../../core/ui/buttons/primary_button.dart';
import '../../../graphql/__generated/graphql/schema.graphql.dart';
import '../../../theme/colors.dart';

class ReviewBottomSheet extends StatelessWidget {
  const ReviewBottomSheet({
    super.key,
    required this.reviewsBloc,
  });

  final ReviewsBloc reviewsBloc;

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
    final client = (context.read<GraphqlClientCubit>().state
    as GraphqlClientInitialized)
        .client;

    return BlocProvider.value(
      value: reviewsBloc,
      child: SingleChildScrollView(
        child: Container(
          // height: UIUtils.getWidgetHeight(
          //   targetWidgetHeight: 350,
          //   screenHeight: MediaQuery.of(context).size.height,
          // ),
          // width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            color: AppColors.darkCharcoal,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
          ),
          padding: const EdgeInsets.all(10),
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
                    dropdownItemsValues: reviewsBloc.mediaSort,
                    dropdownItems: reviewsBloc.mediaSort,
                    initialValue: reviewsBloc.mediaType,
                    onChange: (value) {
                      reviewsBloc.mediaType = value;
                    },
                  );
                },
              ),
              Text(
                'Sort',
                style: bottomSheetHeaderStyle,
              ),
              const SizedBox(
                height: 5,
              ),
              BlocBuilder<ReviewsBloc, PaginatedDataState>(
                builder: (context, state) {
                  return CustomDropdown<Enum$ReviewSort>(
                    dropdownItems: reviewsBloc.reviewSortList
                        .map((e) => e.displayTitle())
                        .toList(),
                    dropdownItemsValues: reviewsBloc.reviewSortList,
                    initialValue: reviewsBloc.reviewSort,
                    onChange: (value) {
                      reviewsBloc.reviewSort = value;
                    },
                  );
                },
              ),
              // CustomDropdown<Enum$ReviewSort>(
              //   dropdownItems: reviewsBloc.reviewSortList
              //       .map((e) => e.displayTitle())
              //       .toList(),
              //   dropdownItemsValues: reviewsBloc.reviewSortList,
              //   initialValue: reviewsBloc.reviewSort,
              //   onChange: (value) {
              //     reviewsBloc.reviewSort = value;
              //   },
              // ),
              const SizedBox(
                height: 20,
              ),
              PrimaryButton(
                color: AppColors.silver,
                horizontalPadding: 0,
                fontColor: AppColors.black,
                onTap: () {
                  reviewsBloc.resetFilters(client);
                },
                label: 'Remove All',
              ),
              const SizedBox(height: 15),
              PrimaryButton(
                horizontalPadding: 0,
                onTap: () {
                  reviewsBloc.applyFilters(client);
                  context.pop();
                },
                label: 'Apply Filters',
              )
            ],
          ),
        ),
      ),
    );
  }
}
