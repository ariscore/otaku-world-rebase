import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:otaku_world/bloc/graphql_client/graphql_client_cubit.dart';
import 'package:otaku_world/bloc/media_list/save_list_entry/save_list_entry_bloc.dart';
import 'package:otaku_world/constants/filter_constants.dart';
import 'package:otaku_world/constants/string_constants.dart';
import 'package:otaku_world/core/ui/appbars/simple_app_bar.dart';
import 'package:otaku_world/core/ui/custom_text_field.dart';
import 'package:otaku_world/core/ui/filters/custom_check_box.dart';
import 'package:otaku_world/core/ui/filters/custom_dropdown.dart';
import 'package:otaku_world/core/ui/formatters/comma_blocking_formatter.dart';
import 'package:otaku_world/features/my_list/model/save_entry_model.dart';
import 'package:otaku_world/generated/assets.dart';
import 'package:otaku_world/graphql/__generated/graphql/fragments.graphql.dart';
import 'package:otaku_world/graphql/__generated/graphql/schema.graphql.dart';
import 'package:otaku_world/theme/colors.dart';
import 'package:otaku_world/utils/formatting_utils.dart';
import 'package:otaku_world/utils/ui_utils.dart';

import '../../../core/ui/dialogs/alert_dialog.dart';

class EditListEntryScreen extends StatefulWidget {
  const EditListEntryScreen({
    super.key,
    required this.media,
    required this.listOptions,
    required this.mediaListEntry,
    required this.onEdited,
    required this.onDeleted,
  });

  final Fragment$ListEntryMedia? media;
  final Fragment$MediaListOptions listOptions;
  final Fragment$MediaListEntry? mediaListEntry;
  final void Function(Fragment$MediaListEntry entry) onEdited;
  final void Function(int id) onDeleted;

  @override
  State<EditListEntryScreen> createState() => _EditListEntryScreenState();
}

class _EditListEntryScreenState extends State<EditListEntryScreen> {
  late final bool isAnime;

  double score = 0;
  late final TextEditingController scoreController;
  late final TextEditingController progressController;
  late final TextEditingController progressVolumesController;
  late final TextEditingController reWatchController;
  late final TextEditingController notesController;
  late final List<_AdvanceScoreInput> _advanceScoreInputs;
  DateTime? startDate, endDate;
  late final List<_CustomListInput> _customLists;
  late String status;
  bool private = false;
  bool hideFromStatus = false;

  @override
  void initState() {
    isAnime = (widget.mediaListEntry?.media ?? widget.media)?.type ==
        Enum$MediaType.ANIME;

    status = FormattingUtils.getMediaListStatusString(
      widget.mediaListEntry?.status ?? Enum$MediaListStatus.CURRENT,
      isAnime: isAnime,
    );
    scoreController = TextEditingController(
      text: (widget.mediaListEntry?.score ?? 0).toString(),
    )..addListener(
        () {
          log('Setting score: ${scoreController.text}');
          score = double.parse(scoreController.text);
        },
      );
    score = widget.mediaListEntry?.score ?? 0;
    progressController = TextEditingController(
      text: (widget.mediaListEntry?.progress ?? 0).toString(),
    );
    if (!isAnime) {
      progressVolumesController = TextEditingController(
        text: (widget.mediaListEntry?.progressVolumes ?? 0).toString(),
      );
    }
    reWatchController = TextEditingController(
      text: (widget.mediaListEntry?.repeat ?? 0).toString(),
    );
    notesController = TextEditingController(
      text: widget.mediaListEntry?.notes,
    );

    final isAdvancedScoring = (isAnime &&
            (widget.listOptions.animeList?.advancedScoringEnabled ?? false)) ||
        (!isAnime &&
            (widget.listOptions.mangaList?.advancedScoringEnabled ?? false));

    if (isAdvancedScoring) {
      if (widget.mediaListEntry != null) {
        final scoreMap = jsonDecode(widget.mediaListEntry!.advancedScores!)
            as Map<String, dynamic>;
        final scoreNameList = scoreMap.keys.toList();
        _advanceScoreInputs = List.generate(
          scoreMap.length,
          (index) => _AdvanceScoreInput(
            scoreController: TextEditingController(
              text: (scoreMap[scoreNameList[index]] ?? 0).toString(),
            ),
            name: scoreNameList[index],
          ),
        );
      } else {
        final list = (isAnime
                    ? widget.listOptions.animeList?.advancedScoring
                    : widget.listOptions.mangaList?.advancedScoring)
                ?.where((e) => e != null)
                .toList() ??
            [];
        _advanceScoreInputs = List.generate(
          list.length,
          (index) => _AdvanceScoreInput(
            scoreController: TextEditingController(text: '0'),
            name: list[index]!,
          ),
        );
      }
    } else {
      _advanceScoreInputs = [];
    }

    final startedAt = widget.mediaListEntry?.startedAt;
    final completedAt = widget.mediaListEntry?.completedAt;
    if (startedAt != null && startedAt.year != null) {
      startDate = DateTime(
        startedAt.year ?? DateTime.now().year,
        startedAt.month ?? 1,
        startedAt.day ?? 1,
      );
    }
    if (completedAt != null && completedAt.year != null) {
      endDate = DateTime(
        completedAt.year ?? DateTime.now().year,
        completedAt.month ?? 1,
        completedAt.day ?? 1,
      );
    }

    private = widget.mediaListEntry?.private ?? false;
    hideFromStatus = widget.mediaListEntry?.hiddenFromStatusLists ?? false;

    log('Custom lists: ${widget.mediaListEntry?.customLists}');
    if (widget.mediaListEntry?.customLists != null) {
      if (widget.mediaListEntry?.customLists == 'null') {
        _customLists = [];
      } else {
        final customListsMap = jsonDecode(widget.mediaListEntry!.customLists!)
            as Map<String, dynamic>;
        final customListsNames = customListsMap.keys.toList();
        _customLists = List.generate(
          customListsMap.length,
          (index) => _CustomListInput(
            name: customListsNames[index],
            contains: customListsMap[customListsNames[index]] ?? false,
          ),
        );
      }
    } else {
      _customLists = ((isAnime
                  ? widget.listOptions.animeList?.customLists
                  : widget.listOptions.mangaList?.customLists) ??
              [])
          .where((e) => e != null)
          .map(
            (e) => _CustomListInput(
              name: e!,
              contains: false,
            ),
          )
          .toList();
    }

    super.initState();
  }

  @override
  void dispose() {
    scoreController.dispose();
    progressController.dispose();
    reWatchController.dispose();
    notesController.dispose();
    for (_AdvanceScoreInput e in _advanceScoreInputs) {
      e.scoreController.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final client = context.read<GraphqlClientCubit>().getClient();

    return BlocProvider(
      create: (providerContext) => SaveListEntryBloc(client!),
      child: BlocListener<SaveListEntryBloc, SaveListEntryState>(
        listener: _listEntryBlocListener,
        child: Builder(builder: (context) {
          return Scaffold(
            appBar: SimpleAppBar(
              title: 'Edit ${isAnime ? 'Anime' : 'Manga'} List',
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: IconButton(
                    onPressed: () => _save(context),
                    icon: SvgPicture.asset(
                      Assets.iconsSaveTick,
                    ),
                  ),
                ),
              ],
            ),
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                child: Column(
                  spacing: 20,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildTitle(),
                    _buildStatusInput(),
                    if (isAnime) _buildEpisodeProgressInput(),
                    if (!isAnime) _buildChapterProgressInput(),
                    if (!isAnime) _buildVolumeProgressInput(),
                    if (widget.listOptions.scoreFormat ==
                        Enum$ScoreFormat.POINT_5)
                      _buildStarRating(),
                    if (widget.listOptions.scoreFormat ==
                        Enum$ScoreFormat.POINT_3)
                      _buildSmileyRating(),
                    if (![Enum$ScoreFormat.POINT_5, Enum$ScoreFormat.POINT_3]
                        .contains(widget.listOptions.scoreFormat))
                      _buildScoreRating(
                        context,
                        type: widget.listOptions.scoreFormat ??
                            Enum$ScoreFormat.POINT_10,
                      ),
                    if (isAnime &&
                        (widget.listOptions.animeList?.advancedScoringEnabled ??
                            false))
                      _buildAdvanceScoring(),
                    if (!isAnime &&
                        (widget.listOptions.mangaList?.advancedScoringEnabled ??
                            false))
                      _buildAdvanceScoring(),
                    _buildDateInputSection(),
                    _buildReWatchInput(),
                    _buildNotesInput(),
                    _buildCheckOptions(),
                    if (_customLists.isNotEmpty) _buildCustomLists(),
                    if (widget.mediaListEntry != null)
                      TextButton(
                        onPressed: () => _delete(context),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          spacing: 5,
                          children: [
                            SvgPicture.asset(
                              Assets.iconsDelete,
                              width: 25,
                            ),
                            Text(
                              'Remove From List',
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineMedium
                                  ?.copyWith(
                                    fontFamily: 'Poppins-Medium',
                                    color: AppColors.maxRed,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          );
        }),
      ),
    );
  }

  void _listEntryBlocListener(BuildContext context, SaveListEntryState state) {
    if (state is DeletedEntry) {
      UIUtils.hideProgressDialog(context);
      widget.onDeleted(widget.mediaListEntry!.id);
      context.pop();
    } else if (state is DeleteListEntryError) {
      UIUtils.hideProgressDialog(context);
      UIUtils.showSnackBar(
        context,
        state.message,
      );
    } else if (state is DeletingListEntry || state is SavingMediaListEntry) {
      UIUtils.showProgressDialog(context);
    } else if (state is SaveMediaListEntryError) {
      UIUtils.hideProgressDialog(context);
      UIUtils.showSnackBar(
        context,
        state.message,
      );
    } else if (state is SavedMediaListEntry) {
      UIUtils.hideProgressDialog(context);
      widget.onEdited(state.entry);
      context.pop();
    }
  }

  void _save(BuildContext context) {
    SaveEntryModel? saveEntryModel;
    log('Custom lists: ${_customLists.where((e) => e.contains)}');
    if (isAnime) {
      saveEntryModel = SaveEntryModel(
        id: widget.mediaListEntry?.id,
        mediaId: widget.mediaListEntry?.mediaId ?? widget.media!.id,
        status: FormattingUtils.getMediaListStatus(status),
        score: score,
        progress: int.parse(progressController.text),
        advancedScores:
            widget.listOptions.animeList?.advancedScoringEnabled ?? false
                ? _advanceScoreInputs.map((e) {
                    final score = double.parse(e.scoreController.text);
                    if (score > 100) return 100.0;
                    return score;
                  }).toList()
                : null,
        customLists:
            _customLists.where((e) => e.contains).map((e) => e.name).toList(),
        hiddenFromStatusLists: hideFromStatus,
        private: private,
        notes: notesController.text,
        repeat: int.parse(reWatchController.text),
        startedAt: startDate,
        completedAt: endDate,
      );
    } else {
      final progress = int.parse(progressController.text);
      final progressVolumes = int.parse(progressVolumesController.text);
      final maxProgress = widget.mediaListEntry?.media?.chapters ??
          widget.media?.chapters ??
          double.maxFinite.toInt();
      final maxProgressVolumes = widget.mediaListEntry?.media?.volumes ??
          widget.media?.volumes ??
          double.maxFinite.toInt();

      saveEntryModel = SaveEntryModel(
        id: widget.mediaListEntry?.id,
        mediaId: widget.mediaListEntry?.mediaId ?? widget.media!.id,
        status: FormattingUtils.getMediaListStatus(status),
        score: score,
        progress: progress > maxProgress ? maxProgress : progress,
        progressVolumes: isAnime
            ? null
            : (progressVolumes > maxProgressVolumes
                ? maxProgressVolumes
                : progressVolumes),
        advancedScores:
            widget.listOptions.animeList?.advancedScoringEnabled ?? false
                ? _advanceScoreInputs.map((e) {
                    final score = double.parse(e.scoreController.text);
                    if (score > 100) return 100.0;
                    return score;
                  }).toList()
                : null,
        customLists:
            _customLists.where((e) => e.contains).map((e) => e.name).toList(),
        hiddenFromStatusLists: hideFromStatus,
        private: private,
        notes:
            notesController.text.trim().isEmpty ? null : notesController.text,
        repeat: int.parse(reWatchController.text),
        startedAt: startDate,
        completedAt: endDate,
      );
    }

    log('Save list entry: $saveEntryModel');
    context
        .read<SaveListEntryBloc>()
        .add(SaveMediaListEntry(entry: saveEntryModel));
  }

  void _delete(BuildContext context) {
    showDialog(
      context: context,
      builder: (dialogContext) {
        return CustomAlertDialog(
          title: StringConstants.deleteListEntryHeading,
          body: StringConstants.deleteListEntryWarning,
          confirmText: 'Delete',
          onConfirm: () {
            dialogContext.pop();
            context.read<SaveListEntryBloc>().add(
                  DeletedListEntry(
                    id: widget.mediaListEntry!.id,
                  ),
                );
          },
          onCancel: dialogContext.pop,
        );
      },
    );
  }

  Widget _buildCustomLists() {
    return Column(
      spacing: 10,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Custom Lists',
          style: _getLabelStyle(),
        ),
        Wrap(
          spacing: 10,
          children: List.generate(
            _customLists.length,
            (index) {
              final customList = _customLists[index];
              return CustomCheckBox(
                label: customList.name,
                onChanged: () {
                  final index = _customLists.indexOf(customList);
                  _customLists[index].contains = !customList.contains;
                  log('Change custom lists: $_customLists');
                },
                initialValue: customList.contains,
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildCheckOptions() {
    return Row(
      spacing: 10,
      children: [
        CustomCheckBox(
          label: 'Make Private',
          onChanged: () {
            private = !private;
          },
          initialValue: private,
        ),
        CustomCheckBox(
          label: 'Hide From Status Lists',
          onChanged: () {
            hideFromStatus = !hideFromStatus;
          },
          initialValue: hideFromStatus,
        ),
      ],
    );
  }

  Widget _buildNotesInput() {
    return Column(
      spacing: 10,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Notes',
          style: _getLabelStyle(),
        ),
        CustomTextField(
          controller: notesController,
          maxLines: 5,
        ),
      ],
    );
  }

  Widget _buildReWatchInput() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Total Re-${isAnime ? 'watches' : 'reads'}',
          style: _getLabelStyle(),
        ),
        Row(
          spacing: 10,
          children: [
            _buildProgressInputButton(
              asset: Assets.iconsRemove2,
              onTap: () {
                int reWatch = num.parse(reWatchController.text).toInt();
                if (reWatch <= 0) return;
                reWatch--;
                reWatchController.text = reWatch.toString();
              },
            ),
            _buildProgressInputField(
              context,
              controller: reWatchController,
              maxLength: 15,
            ),
            _buildProgressInputButton(
              asset: Assets.iconsAdd2,
              onTap: () {
                int reWatch = num.parse(reWatchController.text).toInt();
                reWatch++;
                reWatchController.text = reWatch.toString();
              },
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildDateInputSection() {
    return Column(
      spacing: 10,
      children: [
        _buildDateInput(
          context,
          title: 'Start Date',
          date: startDate,
          onTap: () {
            _showDatePicker((date) {
              startDate = date;
            });
          },
        ),
        _buildDateInput(
          context,
          title: 'Finish Date',
          date: endDate,
          onTap: () {
            _showDatePicker((date) {
              endDate = date;
            });
          },
        ),
      ],
    );
  }

  void _showDatePicker(Function(DateTime date) onSelect) {
    showDatePicker(
      context: context,
      firstDate: DateTime(
        FilterConstants.mediaYearMinimum.toInt(),
      ),
      lastDate: DateTime(
        DateTime.now().year + 10,
      ),
    ).then(
      (value) {
        if (value != null) {
          setState(() {
            onSelect(value);
          });
        }
      },
    );
  }

  Widget _buildDateInput(
    BuildContext context, {
    required String title,
    required DateTime? date,
    required VoidCallback onTap,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: _getLabelStyle()?.copyWith(
            fontWeight: FontWeight.w400,
          ),
        ),
        GestureDetector(
          onTap: onTap,
          child: _decoratedContainer(
            Text(
              date != null ? DateFormat('dd MMM, yyyy').format(date) : ' -- ',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildAdvanceScoring() {
    return Column(
      spacing: 10,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Advanced Scores',
          style: _getLabelStyle(),
        ),
        ...List.generate(
          _advanceScoreInputs.length,
          (index) {
            final input = _advanceScoreInputs[index];
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  input.name,
                  style: _getLabelStyle()?.copyWith(
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Row(
                  spacing: 10,
                  children: [
                    _buildProgressInputButton(
                      asset: Assets.iconsRemove2,
                      onTap: () {
                        int score =
                            num.parse(input.scoreController.text).toInt();
                        if (score <= 0) return;
                        score--;
                        input.scoreController.text = score.toString();
                      },
                    ),
                    _buildProgressInputField(
                      context,
                      controller: input.scoreController,
                      maxLength: 3,
                    ),
                    Text(
                      '/ 100',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    _buildProgressInputButton(
                      asset: Assets.iconsAdd2,
                      onTap: () {
                        int score =
                            num.parse(input.scoreController.text).toInt();
                        if (score >= 100) return;
                        score++;
                        input.scoreController.text = score.toString();
                      },
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      ],
    );
  }

  Widget _buildScoreRating(
    BuildContext context, {
    required Enum$ScoreFormat type,
  }) {
    final maxScore = type == Enum$ScoreFormat.POINT_10 ||
            type == Enum$ScoreFormat.POINT_10_DECIMAL
        ? 10
        : 100;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Score',
          style: _getLabelStyle(),
        ),
        Row(
          spacing: 10,
          children: [
            _buildProgressInputButton(
              asset: Assets.iconsRemove2,
              onTap: () {
                num score = num.parse(scoreController.text);
                if (score <= 0) return;
                score -= type == Enum$ScoreFormat.POINT_10_DECIMAL ? 0.5 : 1;
                if (type == Enum$ScoreFormat.POINT_10_DECIMAL) {
                  scoreController.text = score == score.toInt()
                      ? score.toInt().toString()
                      : score.toString();
                } else {
                  scoreController.text = score.toInt().toString();
                }
              },
            ),
            _buildProgressInputField(
              context,
              controller: scoreController,
              maxLength: type == Enum$ScoreFormat.POINT_10 ? 2 : 3,
              inputFormatters: type == Enum$ScoreFormat.POINT_10_DECIMAL
                  ? [CommaBlockingFormatter()]
                  : null,
            ),
            Text(
              '/ $maxScore',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            _buildProgressInputButton(
              asset: Assets.iconsAdd2,
              onTap: () {
                num score = num.parse(scoreController.text);
                if ((type == Enum$ScoreFormat.POINT_10_DECIMAL ||
                        type == Enum$ScoreFormat.POINT_10) &&
                    score >= 10) {
                  return;
                }
                if (type == Enum$ScoreFormat.POINT_100 && score >= 100) return;
                score += type == Enum$ScoreFormat.POINT_10_DECIMAL ? 0.5 : 1;
                if (type == Enum$ScoreFormat.POINT_10_DECIMAL) {
                  scoreController.text = score == score.toInt()
                      ? score.toInt().toString()
                      : score.toString();
                } else {
                  scoreController.text = score.toInt().toString();
                }
              },
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildSmileyRating() {
    final filledEmojis = [
      Assets.smileySadFilled,
      Assets.smileyNormalFilled,
      Assets.smileyHappyFilled,
    ];
    final unfilledEmojis = [
      Assets.smileySad,
      Assets.smileyNormal,
      Assets.smileyHappy,
    ];

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Score',
          style: _getLabelStyle(),
        ),
        Row(
          spacing: 10,
          children: List.generate(
            3,
            (index) {
              final selected = score > 0 ? score == index + 1 : false;
              return GestureDetector(
                onTap: () {
                  setState(() {
                    score = index + 1;
                  });
                },
                child: SvgPicture.asset(
                  selected ? filledEmojis[index] : unfilledEmojis[index],
                  width: 35,
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildStarRating() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Score',
          style: _getLabelStyle(),
        ),
        RatingBar.builder(
          initialRating: score.toDouble(),
          itemCount: 5,
          itemBuilder: (context, _) => SizedBox(
            width: 15,
            child: SvgPicture.asset(
              Assets.iconsStar,
            ),
          ),
          unratedColor: Colors.white,
          onRatingUpdate: (rating) {
            log(rating.toString());
            score = rating;
          },
        ),
      ],
    );
  }

  Widget _buildTitle() {
    return Column(
      spacing: 5,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.mediaListEntry?.media?.title?.userPreferred ??
              widget.media?.title?.userPreferred ??
              'Unknown',
          style: Theme.of(context).textTheme.displayMedium,
        ),
        Text(
          FormattingUtils.getMediaStatusString(
            widget.mediaListEntry?.media?.status ?? widget.media?.status,
            anime: isAnime,
          ),
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: AppColors.white.withValues(alpha:0.8),
              ),
        ),
      ],
    );
  }

  Widget _buildStatusInput() {
    return Row(
      spacing: MediaQuery.of(context).size.width * 0.2,
      children: [
        Text(
          'Status',
          style: _getLabelStyle(),
        ),
        Expanded(
          child: CustomDropdown(
            dropdownItems: Enum$MediaListStatus.values
                .where((e) => e != Enum$MediaListStatus.$unknown)
                .map((e) => FormattingUtils.getMediaListStatusString(
                      e,
                      isAnime: isAnime,
                    ))
                .toList(),
            initialValue: status,
            onChange: (s) {
              status = s;
            },
          ),
        ),
      ],
    );
  }

  TextStyle? _getLabelStyle() {
    return Theme.of(context).textTheme.headlineMedium?.copyWith(
          fontFamily: 'Poppins-Medium',
          fontWeight: FontWeight.w500,
        );
  }

  Widget _buildEpisodeProgressInput() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Episode Progress',
          style: _getLabelStyle(),
        ),
        Row(
          spacing: 10,
          children: [
            _buildProgressInputButton(
              asset: Assets.iconsRemove2,
              onTap: () {
                int progress = num.parse(progressController.text).toInt();
                if (progress <= 0) return;
                progress--;
                progressController.text = progress.toString();
              },
            ),
            _buildProgressInputField(
              context,
              controller: progressController,
              maxLength: 15,
            ),
            _buildProgressInputButton(
              asset: Assets.iconsAdd2,
              onTap: () {
                int progress = num.parse(progressController.text).toInt();
                if (progress >=
                    (widget.mediaListEntry?.media?.episodes ??
                        double.maxFinite)) {
                  return;
                }
                progress++;
                progressController.text = progress.toString();
              },
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildChapterProgressInput() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Chapter Progress',
          style: _getLabelStyle(),
        ),
        Row(
          spacing: 10,
          children: [
            _buildProgressInputButton(
              asset: Assets.iconsRemove2,
              onTap: () {
                int progress = num.parse(progressController.text).toInt();
                if (progress <= 0) return;
                progress--;
                progressController.text = progress.toString();
              },
            ),
            _buildProgressInputField(
              context,
              controller: progressController,
              maxLength: 15,
            ),
            _buildProgressInputButton(
              asset: Assets.iconsAdd2,
              onTap: () {
                int progress = num.parse(progressController.text).toInt();
                if (progress >=
                    (widget.mediaListEntry?.media?.chapters ??
                        double.maxFinite)) {
                  return;
                }
                progress++;
                progressController.text = progress.toString();
              },
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildVolumeProgressInput() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Volume Progress',
          style: _getLabelStyle(),
        ),
        Row(
          spacing: 10,
          children: [
            _buildProgressInputButton(
              asset: Assets.iconsRemove2,
              onTap: () {
                int progress =
                    num.parse(progressVolumesController.text).toInt();
                if (progress <= 0) return;
                progress--;
                progressVolumesController.text = progress.toString();
              },
            ),
            _buildProgressInputField(
              context,
              controller: progressVolumesController,
              maxLength: 15,
            ),
            _buildProgressInputButton(
              asset: Assets.iconsAdd2,
              onTap: () {
                int progress =
                    num.parse(progressVolumesController.text).toInt();
                if (progress >=
                    (widget.mediaListEntry?.media?.volumes ??
                        double.maxFinite)) {
                  return;
                }
                progress++;
                progressVolumesController.text = progress.toString();
              },
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildProgressInputField(
    BuildContext context, {
    required int maxLength,
    required TextEditingController controller,
    List<TextInputFormatter>? inputFormatters,
  }) {
    final border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(
        color: AppColors.sunsetOrange,
        width: 2,
      ),
    );

    return SizedBox(
      width: 70,
      height: 50,
      child: TextField(
        controller: controller,
        textAlign: TextAlign.center,
        maxLength: maxLength,
        inputFormatters:
            inputFormatters ?? [FilteringTextInputFormatter.digitsOnly],
        buildCounter: (context,
                {required currentLength,
                required isFocused,
                required maxLength}) =>
            null,
        decoration: InputDecoration(
          enabledBorder: border,
          focusedBorder: border,
          contentPadding: EdgeInsets.zero,
        ),
        keyboardType: TextInputType.number,
        style: Theme.of(context).textTheme.displaySmall?.copyWith(
              fontWeight: FontWeight.w600,
            ),
      ),
    );
  }

  Widget _buildProgressInputButton({
    required String asset,
    required VoidCallback onTap,
  }) {
    return InkWell(
      borderRadius: BorderRadius.circular(10),
      onTap: () {
        FocusScope.of(context).unfocus();
        onTap();
      },
      child: SvgPicture.asset(asset),
    );
  }

  Widget _decoratedContainer(Widget child, {double verticalPadding = 8}) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 12,
        vertical: verticalPadding,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: const Border.fromBorderSide(
          BorderSide(
            color: AppColors.sunsetOrange,
            width: 1.5,
          ),
        ),
      ),
      child: Center(child: child),
    );
  }
}

class _AdvanceScoreInput {
  const _AdvanceScoreInput({
    required this.scoreController,
    required this.name,
  });

  final TextEditingController scoreController;
  final String name;
}

class _CustomListInput {
  _CustomListInput({required this.name, required this.contains});

  String name;
  bool contains;

  @override
  String toString() {
    return 'CustomListInput { name: $name, contains: $contains }';
  }
}
