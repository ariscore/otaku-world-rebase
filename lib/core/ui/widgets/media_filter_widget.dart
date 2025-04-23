import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:otaku_world/core/ui/filters/custom_check_box.dart';
import 'package:otaku_world/utils/extensions.dart';
import 'package:otaku_world/utils/ui_utils.dart';

import '../../../graphql/__generated/graphql/schema.graphql.dart';
import '../filters/custom_dropdown.dart';

class MediaFilterWidget extends StatelessWidget {
  const MediaFilterWidget({
    super.key,
    required this.mediaSortNotifier,
    required this.isOnMyListNotifier,
    required this.onApplyFilters,
    required this.bloc,
  });

  final List<Enum$MediaSort> mediaSortList = const [
    Enum$MediaSort.POPULARITY_DESC,
    Enum$MediaSort.START_DATE_DESC,
    Enum$MediaSort.START_DATE,
    Enum$MediaSort.FAVOURITES_DESC,
    Enum$MediaSort.SCORE_DESC,
    Enum$MediaSort.TITLE_ROMAJI_DESC,
    Enum$MediaSort.TITLE_ENGLISH_DESC,
    Enum$MediaSort.TITLE_NATIVE_DESC,
  ];
  final ValueNotifier<Enum$MediaSort> mediaSortNotifier;
  final ValueNotifier<bool> isOnMyListNotifier;
  final VoidCallback onApplyFilters;
  final Bloc bloc;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          height: UIUtils.getWidgetHeight(
              targetWidgetHeight: 50,
              screenHeight: MediaQuery.sizeOf(context).height),
          width: UIUtils.getWidgetWidth(
              targetWidgetWidth: 170,
              screenWidth: MediaQuery.sizeOf(context).width),
          child: CustomDropdown<Enum$MediaSort>(
            selectedValueNotifier: mediaSortNotifier,
            dropdownItems: mediaSortList.map((e) => e.displayTitle()).toList(),
            dropdownItemsValues: mediaSortList,
            initialValue: mediaSortNotifier.value,
            onChange: (value) {
              mediaSortNotifier.value = value;
              onApplyFilters();
            },
          ),
        ),
        CustomCheckBox(
          label: 'On My List',
          initialValue: isOnMyListNotifier.value,
          onChanged: () {
            isOnMyListNotifier.value = !isOnMyListNotifier.value;
            onApplyFilters();
          },
        ),
      ],
    );
  }
}
