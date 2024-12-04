import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:otaku_world/core/ui/buttons/primary_outlined_button.dart';
import 'package:otaku_world/core/ui/custom_text_field.dart';

import '../../../core/ui/filters/custom_check_box.dart';
import '../../../generated/assets.dart';
import '../../../theme/colors.dart';
import 'collection_chip.dart';

class AdvancedScoring extends StatefulWidget {
  const AdvancedScoring({
    super.key,
    required this.list,
    required this.isEnabled,
    required this.onChangeEnabled,
    required this.onChangeList,
  });

  final List<String?> list;
  final bool isEnabled;
  final void Function(bool value) onChangeEnabled;
  final void Function(List<String?> list) onChangeList;

  @override
  State<AdvancedScoring> createState() => _AdvancedScoringState();
}

class _AdvancedScoringState extends State<AdvancedScoring> {
  bool isEnabled = false;
  late List<String?> list;
  final scoringOptionController = TextEditingController();

  @override
  void initState() {
    list = List.from(widget.list);
    isEnabled = widget.isEnabled;
    super.initState();
  }

  @override
  void dispose() {
    scoringOptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Advanced Scoring',
          style: Theme.of(context).textTheme.displayMedium!.copyWith(
                fontFamily: 'Poppins-Medium',
              ),
        ),
        CustomCheckBox(
          label: 'Enabled',
          value: '',
          onChanged: () {
            setState(() {
              isEnabled = !isEnabled;
              widget.onChangeEnabled(isEnabled);
            });
          },
          initialValue: isEnabled,
        ),
        if (isEnabled)
          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: List.generate(
              list.length + 1,
              (index) {
                if (index == list.length) {
                  return _buildAddButton();
                } else {
                  final e = list[index];
                  if (e == null) return const SizedBox();
                  return GestureDetector(
                    onTap: () => _editScoringOption(index),
                    child: CollectionChip(
                      label: e,
                      onRemove: () {
                        setState(() {
                          log('Removing $e');
                          list.removeWhere((item) => item == e);
                          widget.onChangeList(list);
                        });
                      },
                    ),
                  );
                }
              },
            ),
          ),
      ],
    );
  }

  Widget _buildAddButton() {
    return InkWell(
      borderRadius: BorderRadius.circular(15),
      onTap: () {
        scoringOptionController.clear();
        _showBottomSheet(
          title: 'Add Scoring Option',
          onSave: _saveScoringOption,
        );
      },
      child: SvgPicture.asset(Assets.iconsAdd, width: 35),
    );
  }

  void _showBottomSheet({required String title, required VoidCallback onSave}) {
    showBottomSheet(
      context: context,
      backgroundColor: AppColors.darkCharcoal,
      builder: (context) {
        return Container(
          decoration: const BoxDecoration(
            color: AppColors.darkCharcoal,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 10,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 5,
                  width: 50,
                  decoration: ShapeDecoration(
                    color: AppColors.lightSilver,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    title,
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                          fontFamily: 'Poppins',
                        ),
                  ),
                ),
                const SizedBox(height: 10),
                CustomTextField(
                  controller: scoringOptionController,
                  maxLines: 1,
                ),
                const SizedBox(height: 20),
                PrimaryOutlinedButton(
                  onTap: () {
                    context.pop();
                    onSave();
                    // _saveScoringOption();
                  },
                  label: 'Save',
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void _saveScoringOption() {
    final text = scoringOptionController.text.trim();
    if (text.isNotEmpty) {
      if (!list.contains(text)) {
        setState(() {
          list.add(text);
          widget.onChangeList(list);
        });
      }
    } else {
      // show validation error
    }
  }

  void _editScoringOption(int index) {
    scoringOptionController.text = list[index]!;
    _showBottomSheet(
      title: 'Edit Scoring Option',
      onSave: () {
        final text = scoringOptionController.text.trim();
        if (text.isNotEmpty) {
          if (!list.contains(text)) {
            setState(() {
              list[index] = text;
              scoringOptionController.clear();
              widget.onChangeList(list);
            });
          }
        } else {
          // show validation error
        }
      },
    );
  }
}
