import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:otaku_world/bloc/media_list/media_list/media_list_bloc.dart';
import 'package:otaku_world/core/model/manga_filter.dart';
import 'package:otaku_world/core/ui/appbars/simple_app_bar.dart';
import 'package:otaku_world/core/ui/filters/custom_dropdown.dart';
import 'package:otaku_world/features/my_list/widgets/list_genre_chips.dart';
import 'package:otaku_world/graphql/__generated/graphql/schema.graphql.dart';

import '../../../constants/filter_constants.dart';
import '../../../core/ui/buttons/primary_button.dart';
import '../../../core/ui/filters/custom_chips.dart';
import '../../../core/ui/filters/custom_choice_chip.dart';
import '../../../core/ui/filters/custom_range_slider.dart';
import '../../../theme/colors.dart';
import '../../../utils/formatting_utils.dart';

class MangaListFilterScreen extends StatefulWidget {
  const MangaListFilterScreen({super.key, required this.listBloc});

  final MediaListBloc listBloc;

  @override
  State<MangaListFilterScreen> createState() => _MangaListFilterScreenState();
}

class _MangaListFilterScreenState extends State<MangaListFilterScreen> {
  final mangaFormats = const [
    Enum$MediaFormat.MANGA,
    Enum$MediaFormat.NOVEL,
    Enum$MediaFormat.ONE_SHOT,
  ];

  final mangaStatuses = const [
    Enum$MediaStatus.RELEASING,
    Enum$MediaStatus.FINISHED,
    Enum$MediaStatus.NOT_YET_RELEASED,
    Enum$MediaStatus.HIATUS,
    Enum$MediaStatus.CANCELLED,
  ];

  late MangaFilter filter;
  late List<String> selectedLists;

  @override
  void initState() {
    filter = widget.listBloc.filter as MangaFilter;
    selectedLists = widget.listBloc.selectedLists;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const SimpleAppBar(
        title: 'List Filters',
      ),
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 10,
                  children: [
                    CustomDropdown(
                      title: 'Sort',
                      dropdownItems: FilterConstants.mediaListSortOptions,
                      initialValue:
                          FormattingUtils.getMediaListSortOptionString(
                        filter.listSort,
                      ),
                      onChange: (option) {
                        filter = filter.copyWith(
                          listSort:
                              FormattingUtils.getMediaListSortOption(option),
                        );
                        log('Select sort: ${filter.listSort}');
                      },
                    ),
                    CustomRangeSlider(
                      title: 'Year',
                      initialStartValue: filter.startDateGreater != null
                          ? int.parse(filter.startDateGreater!)
                          : null,
                      initialEndValue: filter.startDateLesser != null
                          ? int.parse(filter.startDateLesser!)
                          : null,
                      minRange: FilterConstants.mediaYearMinimum,
                      maxRange: FilterConstants.mediaYearMaximum,
                      onChangeEnd: (values) {
                        log('Year range ${values.start} to ${values.end}');
                        filter = filter.copyWith(
                          startDateGreater: values.start.toInt().toString(),
                          startDateLesser: values.end.toInt().toString(),
                        );
                      },
                    ),
                    CustomChips(
                      title: 'Lists',
                      chipList: widget.listBloc.getUserLists().map((list) {
                        return CustomChoiceChip(
                          label: list,
                          value: list,
                          selected: selectedLists.contains(list),
                          onSelected: (list) {
                            log('Select list: $list');
                            selectedLists.add(list);
                          },
                          onUnselected: (list) {
                            log('Unselect list: $list');
                            selectedLists.remove(list);
                          },
                        );
                      }).toList(),
                    ),
                    ListGenreChips(
                      selectedGenres: filter.genres ?? [],
                      onSelected: (genre) {
                        log('Select genre: $genre');
                        filter = filter.copyWith(
                          genres: (filter.genres ?? [])..add(genre),
                        );
                      },
                      onUnselected: (genre) {
                        log('Unselect genre: $genre');
                        filter = filter.copyWith(
                          genres: (filter.genres ?? [])..remove(genre),
                        );
                      },
                    ),
                    CustomChips(
                      title: 'Format',
                      chipList: mangaFormats.map((f) {
                        final format = FormattingUtils.getMediaFormatString(f);
                        return CustomChoiceChip(
                          label: format,
                          value: format,
                          selected: (filter.formatIn ?? []).contains(
                            FormattingUtils.getMediaFormat(format),
                          ),
                          onSelected: (format) {
                            log('Select format: $format');
                            filter = filter.copyWith(
                              formatIn: (filter.formatIn ?? [])
                                ..add(
                                  FormattingUtils.getMediaFormat(format),
                                ),
                            );
                          },
                          onUnselected: (format) {
                            log('Unselect format: $format');
                            filter = filter.copyWith(
                              formatIn: (filter.formatIn ?? [])
                                ..remove(
                                  FormattingUtils.getMediaFormat(format),
                                ),
                            );
                          },
                        );
                      }).toList(),
                    ),
                    CustomChips(
                      title: 'Publishing Status',
                      chipList: mangaStatuses.map((s) {
                        final status = FormattingUtils.getMediaStatusString(
                          s,
                          anime: false,
                        );
                        return CustomChoiceChip(
                          label: status,
                          value: status,
                          selected: (filter.statusIn ?? []).contains(
                            FormattingUtils.getMediaStatus(status),
                          ),
                          onSelected: (status) {
                            log('Select status: $status');
                            filter = filter.copyWith(
                              statusIn: (filter.statusIn ?? [])
                                ..add(
                                  FormattingUtils.getMediaStatus(status),
                                ),
                            );
                          },
                          onUnselected: (status) {
                            log('Unselect status: $status');
                            filter = filter.copyWith(
                              statusIn: (filter.statusIn ?? [])
                                ..remove(
                                  FormattingUtils.getMediaStatus(status),
                                ),
                            );
                          },
                        );
                      }).toList(),
                    ),
                    CustomDropdown(
                      title: 'Country of Origin',
                      dropdownItems: FilterConstants.countries,
                      initialValue:
                          FormattingUtils.getCountry(filter.countryOfOrigin),
                      onChange: (country) {
                        log('Select country: $country');
                        filter = filter.copyWith(
                          countryOfOrigin:
                              FormattingUtils.getCountryCode(country),
                        );
                      },
                    ),
                    const SizedBox(height: 140),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: const Alignment(0, -1),
                        end: const Alignment(0, 1),
                        colors: [
                          AppColors.raisinBlack.withValues(alpha:0.4),
                          AppColors.raisinBlack,
                        ],
                      ),
                    ),
                    child: BlocBuilder<MediaListBloc, MediaListState>(
                      bloc: widget.listBloc,
                      builder: (context, state) {
                        if (state is MediaListLoading) {
                          return const Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: 10,
                            ),
                            child: Center(child: CircularProgressIndicator()),
                          );
                        } else {
                          return Column(
                            children: [
                              const SizedBox(height: 10),
                              if (widget.listBloc.filterApplied)
                                Padding(
                                  padding: const EdgeInsets.only(
                                    bottom: 15,
                                  ),
                                  child: PrimaryButton(
                                    onTap: () {
                                      widget.listBloc.add(RemoveFilters());
                                      context.pop();
                                    },
                                    label: 'Remove All',
                                    color: AppColors.silver,
                                  ),
                                ),
                              PrimaryButton(
                                onTap: () {
                                  widget.listBloc.add(
                                    ApplyFilter(
                                      lists: selectedLists,
                                      mediaFilter: filter,
                                    ),
                                  );
                                  context.pop();
                                },
                                label: 'Apply Filters',
                              ),
                              const SizedBox(height: 15),
                            ],
                          );
                        }
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
