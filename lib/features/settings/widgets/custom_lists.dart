import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../../core/ui/buttons/primary_outlined_button.dart';
import '../../../core/ui/custom_text_field.dart';
import '../../../generated/assets.dart';
import '../../../graphql/__generated/graphql/schema.graphql.dart';
import '../../../theme/colors.dart';
import 'collection_chip.dart';

class CustomLists extends StatefulWidget {
  const CustomLists({
    super.key,
    required this.list,
    required this.type,
    required this.onChange,
  });

  final List<String?> list;
  final Enum$MediaType type;
  final void Function(List<String?> list) onChange;

  @override
  State<CustomLists> createState() => _CustomListsState();
}

class _CustomListsState extends State<CustomLists> {
  late List<String?> list;
  final scoringOptionController = TextEditingController();

  @override
  void initState() {
    log('Init list: ${widget.list}');
    list = List.from(widget.list);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    log('List: $list | Main: ${widget.list}');
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Custom ${widget.type == Enum$MediaType.ANIME ? 'Anime' : 'Manga'} Lists',
          style: Theme.of(context).textTheme.displayMedium!.copyWith(
                fontFamily: 'Poppins-Medium',
              ),
        ),
        const SizedBox(height: 10),
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
                        widget.onChange(list);
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
        _showBottomSheet(
          title: 'Add List',
          onSave: _saveScoringOption,
        );
      },
      child: SvgPicture.asset(Assets.iconsAdd, width: 35),
    );
  }

  void _showBottomSheet({required String title, required VoidCallback onSave}) {
    showModalBottomSheet(
      context: context,
      backgroundColor: AppColors.darkCharcoal,
      isScrollControlled: true,
      builder: (context) {
        return Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: Container(
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
                      style:
                          Theme.of(context).textTheme.headlineMedium?.copyWith(
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
          scoringOptionController.clear();
          widget.onChange(list);
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
              widget.onChange(list);
            });
          }
        } else {
          // show validation error
        }
      },
    );
  }
}
