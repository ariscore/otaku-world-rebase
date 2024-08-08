import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:otaku_world/bloc/filter/filter_anime/filter_anime_bloc.dart';
import 'package:otaku_world/bloc/graphql_client/graphql_client_cubit.dart';
import 'package:otaku_world/constants/filter_constants.dart';
import 'package:otaku_world/core/ui/appbars/simple_app_bar.dart';
import 'package:otaku_world/core/ui/filters/custom_dropdown.dart';
import 'package:otaku_world/core/ui/filters/custom_range_slider.dart';
import 'package:otaku_world/core/ui/filters/widgets/anime_airing_status_chips.dart';
import 'package:otaku_world/core/ui/filters/widgets/anime_check_box_options.dart';
import 'package:otaku_world/core/ui/filters/widgets/anime_format_chips.dart';
import 'package:otaku_world/core/ui/filters/widgets/media_tags_chips.dart';
import 'package:otaku_world/core/ui/filters/widgets/genres_chips.dart';
import 'package:otaku_world/core/ui/filters/widgets/source_material_chips.dart';
import 'package:otaku_world/core/ui/filters/widgets/streaming_on_chips.dart';
import 'package:otaku_world/core/ui/media_section/scroll_to_top_button.dart';
import 'package:otaku_world/theme/colors.dart';
import 'package:otaku_world/utils/formatting_utils.dart';

import '../../../../core/ui/buttons/primary_button.dart';

class AnimeFilters extends HookWidget {
  const AnimeFilters({super.key});

  @override
  Widget build(BuildContext context) {
    final client =
        (context.read<GraphqlClientCubit>().state as GraphqlClientInitialized)
            .client;
    final bloc = context.read<FilterAnimeBloc>();
    final scrollController = useScrollController();

    final filterOptions = [
      CustomDropdown(
        title: 'Sort',
        dropdownItems: FilterConstants.mediaSortOptions,
        initialValue: FormattingUtils.getMediaSortString(
          bloc.appliedFilter.sort.first,
        ),
        onChange: (option) {
          bloc.add(SelectAnimeSort(option));
        },
      ),
      CustomDropdown(
        title: 'Season',
        dropdownItems: FilterConstants.seasons,
        initialValue: FormattingUtils.getSeasonString(
          bloc.appliedFilter.season,
        ),
        onChange: (season) {
          bloc.add(SelectAnimeSeason(season));
        },
      ),
      CustomDropdown(
        title: 'Year',
        dropdownItems: [
          'All',
          ...List<String>.generate(
            (FilterConstants.mediaYearMaximum.toInt() -
                    FilterConstants.mediaYearMinimum.toInt()) +
                1,
            (index) =>
                (FilterConstants.mediaYearMaximum.toInt() - index).toString(),
          ),
        ],
        initialValue: (bloc.appliedFilter.seasonYear ?? 'All').toString(),
        onChange: (year) {
          bloc.add(SelectAnimeSeasonYear(year));
        },
      ),
      GenresChips(
        selectedGenres: bloc.appliedFilter.genres ?? const [],
        onSelected: (genre) {
          bloc.add(SelectAnimeGenre(genre));
        },
        onUnselected: (genre) {
          bloc.add(UnselectAnimeGenre(genre));
        },
      ),
      AnimeFormatChips(
        selectedFormats: bloc.appliedFilter.formatIn
                ?.map((f) => FormattingUtils.getMediaFormatString(f))
                .toList() ??
            const [],
      ),
      AnimeAiringStatusChips(
        selectedStatuses: bloc.appliedFilter.statusIn
                ?.map((s) => FormattingUtils.getMediaStatusString(s))
                .toList() ??
            const [],
      ),
      CustomRangeSlider(
        title: 'Year',
        initialStartValue: bloc.appliedFilter.startDateGreater != null
            ? int.parse(bloc.appliedFilter.startDateGreater!)
            : null,
        initialEndValue: bloc.appliedFilter.startDateLesser != null
            ? int.parse(bloc.appliedFilter.startDateLesser!)
            : null,
        minRange: FilterConstants.mediaYearMinimum,
        maxRange: FilterConstants.mediaYearMaximum,
        onChangeEnd: (values) {
          bloc.add(SetYearRange(
            start: values.start,
            end: values.end,
          ));
        },
      ),
      CustomRangeSlider(
        title: 'Episodes',
        initialStartValue: bloc.appliedFilter.episodesGreater,
        initialEndValue: bloc.appliedFilter.episodesLesser,
        minRange: FilterConstants.minEpisode,
        maxRange: FilterConstants.maxEpisode,
        onChangeEnd: (values) {
          bloc.add(SetEpisodesRange(
            start: values.start,
            end: values.end,
          ));
        },
      ),
      CustomRangeSlider(
        title: 'Duration',
        initialStartValue: bloc.appliedFilter.durationGreater,
        initialEndValue: bloc.appliedFilter.durationLesser,
        minRange: FilterConstants.minDuration,
        maxRange: FilterConstants.maxDuration,
        onChangeEnd: (values) {
          bloc.add(SetDurationRange(
            start: values.start,
            end: values.end,
          ));
        },
      ),
      const AnimeCheckBoxOptions(),
      SourceMaterialChips(
        selectedSources: bloc.appliedFilter.sourceIn
                ?.map((s) => FormattingUtils.getMediaSourceString(s))
                .toList() ??
            const [],
        onSelected: (source) {
          bloc.add(SelectSource(source));
        },
        onUnselected: (source) {
          bloc.add(UnselectSource(source));
        },
      ),
      CustomDropdown(
        title: 'Country of Origin',
        dropdownItems: FilterConstants.countries,
        initialValue: FormattingUtils.getCountry(
          bloc.appliedFilter.countryOfOrigin,
        ),
        onChange: (country) {
          bloc.add(SelectCountry(country));
        },
      ),
      AnimePlatformsChips(
        selectedPlatforms: bloc.appliedFilter.licensedByIn ?? const [],
      ),
      MediaTagsChips(
        selectedTags: bloc.appliedFilter.tagIn ?? const [],
        minTagRank: bloc.appliedFilter.minTagRank,
        onTagRankSet: (value) {
          bloc.add(SetTagRank(value.toInt()));
        },
        onTagSelected: (tag) {
          bloc.add(SelectAnimeTag(tag));
        },
        onTagUnselected: (tag) {
          bloc.add(UnselectAnimeTag(tag));
        },
      ),
      const SizedBox(height: 140),
    ];

    return Scaffold(
      appBar: const SimpleAppBar(title: "Filters"),
      body: BlocListener<FilterAnimeBloc, FilterAnimeState>(
        listener: (context, state) {
          if (state is ResultsLoaded || state is FilterAnimeInitial) {
            context.pop();
          }
        },
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
              ),
              child: ListView.builder(
                controller: scrollController,
                itemCount: filterOptions.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(
                      bottom: 15,
                    ),
                    child: filterOptions[index],
                  );
                },
              ),
            ),
            Positioned(
              left: 0,
              right: 10,
              bottom: 0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  ScrollToTopFAB(
                    controller: scrollController,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: const Alignment(0, -1),
                        end: const Alignment(0, 1),
                        colors: [
                          AppColors.raisinBlack.withOpacity(0.4),
                          AppColors.raisinBlack,
                        ],
                      ),
                    ),
                    child: BlocBuilder<FilterAnimeBloc, FilterAnimeState>(
                      builder: (context, state) {
                        if (state is ResultsLoading) {
                          return const Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: 10,
                            ),
                            child: Center(child: CircularProgressIndicator()),
                          );
                        } else {
                          return Column(
                            children: [
                              const SizedBox(
                                height: 10,
                              ),
                              if (bloc.filterApplied)
                                PrimaryButton(
                                  onTap: () {
                                    bloc.add(RemoveAllFilters());
                                  },
                                  label: 'Remove All',
                                  color: AppColors.silver,
                                ),
                              if (bloc.filterApplied)
                                const SizedBox(
                                  height: 15,
                                ),
                              PrimaryButton(
                                onTap: () {
                                  bloc.add(ApplyFilter(client));
                                },
                                label: "Apply Filters",
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
            )
          ],
        ),
      ),
    );
  }
}
