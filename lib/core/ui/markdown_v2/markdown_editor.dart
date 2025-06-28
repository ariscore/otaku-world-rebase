import 'dart:developer';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:otaku_world/constants/string_constants.dart';
import 'package:otaku_world/core/ui/shimmers/detail_screens/shimmer_details.dart';

import '../buttons/primary_outlined_button.dart';
import '../custom_text_field.dart';

class MarkdownEditor extends StatefulWidget {
  const MarkdownEditor({
    super.key,
    required this.onShowPreview,
    required this.textController,
    this.minLength,
    this.showCounter = false,
  });

  final TextEditingController textController;
  final void Function(String content) onShowPreview;
  final int? minLength;
  final bool showCounter;

  @override
  State<MarkdownEditor> createState() => _MarkdownEditorState();
}

class _MarkdownEditorState extends State<MarkdownEditor> {
  final otherDataController = TextEditingController();
  final otherDataController2 = TextEditingController();
  final focusNode = FocusNode();

  @override
  void dispose() {
    otherDataController.dispose();
    otherDataController2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => focusNode.unfocus(),
      child: SafeArea(
        child: Scaffold(
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: Column(
            spacing: 10,
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: FloatingActionButton.extended(
                  backgroundColor: AppColors.sunsetOrange,
                  onPressed: () {
                    focusNode.unfocus();
                    widget.onShowPreview(widget.textController.text.trim());
                  },
                  label: Text(
                    'Preview',
                    style: Theme.of(context).textTheme.displaySmall?.copyWith(
                          fontFamily: 'Poppins',
                        ),
                  ),
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                color: AppColors.japaneseIndigo,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      _MarkdownOption(
                        asset: Assets.markdownBold,
                        onPressed: () {
                          replaceAround(getSelectedText(), "__", "__");
                          // focusNode.requestFocus();
                        },
                      ),
                      _MarkdownOption(
                        asset: Assets.markdownItalic,
                        onPressed: () {
                          replaceAround(getSelectedText(), "_", "_");
                          // focusNode.requestFocus();
                        },
                      ),
                      _MarkdownOption(
                        asset: Assets.markdownStrike,
                        onPressed: () {
                          replaceAround(getSelectedText(), "~~", "~~");
                          // focusNode.requestFocus();
                        },
                      ),
                      _MarkdownOption(
                        asset: Assets.markdownEyeSlash,
                        onPressed: () {
                          replaceAround(getSelectedText(), "~!", "!~");
                          // focusNode.requestFocus();
                        },
                      ),
                      _MarkdownOption(
                        asset: Assets.markdownLink,
                        onPressed: () {
                          _showBottomSheet(
                            title: 'Add Link',
                            hint1: 'Link URL here...',
                            hint2: 'Link label here...',
                            showOtherInput: true,
                            onSave: _insertLink,
                          );
                        },
                      ),
                      _MarkdownOption(
                        asset: Assets.markdownImage,
                        onPressed: () {
                          _showBottomSheet(
                            title: 'Add Image',
                            hint1: 'Image URL here...',
                            onSave: _insertImageLink,
                          );
                        },
                      ),
                      _MarkdownOption(
                        asset: Assets.markdownYoutube,
                        onPressed: () {
                          _showBottomSheet(
                            title: 'Add YouTube Video',
                            hint1: 'YouTube URL here...',
                            onSave: _insertYoutubeLink,
                          );
                        },
                      ),
                      _MarkdownOption(
                        asset: Assets.markdownVideo,
                        onPressed: () {
                          _showBottomSheet(
                            title: 'Add WebM Video',
                            hint1: 'WebM URL here...',
                            onSave: _insertWebmLink,
                          );
                        },
                      ),
                      _MarkdownOption(
                        asset: Assets.markdownBulletList,
                        onPressed: () {
                          _insertListItem(false);
                        },
                      ),
                      _MarkdownOption(
                        asset: Assets.markdownNumberList,
                        onPressed: () {
                          _insertListItem(true);
                        },
                      ),
                      _MarkdownOption(
                        asset: Assets.markdownHeader,
                        onPressed: () {
                          _insertHeader();
                        },
                      ),
                      _MarkdownOption(
                        asset: Assets.markdownCenter,
                        onPressed: () {
                          replaceAround(getSelectedText(), "~~~\n", "\n~~~");
                          // focusNode.requestFocus();
                        },
                      ),
                      _MarkdownOption(
                        asset: Assets.markdownQuote,
                        onPressed: () {
                          _insertQuote();
                        },
                      ),
                      _MarkdownOption(
                        asset: Assets.markdownCode,
                        onPressed: () {
                          replaceAround(getSelectedText(), "``\n", "\n``");
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, bottom: 45),
            child: CustomTextField(
              controller: widget.textController,
              focusNode: focusNode,
              minLength: widget.minLength,
              isShowingCounter: widget.showCounter,
            ),
          ),
        ),
      ),
    );
  }

  void _insertLink() {
    final linkUrl = otherDataController.text.trim();
    final linkText = otherDataController2.text.trim();
    if (linkUrl.isEmpty) return; // require a URL

    if (linkUrl.isEmpty ||
        !(linkUrl.startsWith('http://') || linkUrl.startsWith('https://'))) {
      UIUtils.showSnackBar(context, StringConstants.urlValidationError);
      return;
    }

    // Build the markdown link
    final display = linkText.isEmpty ? 'text' : linkText;
    final markdownLink = '[$display]($linkUrl)';

    final fullText = widget.textController.text;
    // Safely clamp the selection to [0 .. fullText.length]
    int selStart = widget.textController.selection.start;
    int selEnd = widget.textController.selection.end;
    if (selStart < 0 || selStart > fullText.length) selStart = fullText.length;
    if (selEnd < 0 || selEnd > fullText.length) selEnd = fullText.length;

    // Build the new text
    final newText = StringBuffer()
      ..write(fullText.substring(0, selStart))
      ..write(markdownLink)
      ..write(fullText.substring(selEnd));
    final result = newText.toString();

    // Update controller
    widget.textController
      ..text = result
      ..selection =
          TextSelection.collapsed(offset: selStart + markdownLink.length);
  }

  void _insertImageLink() {
    final url = otherDataController.text.trim();
    log('Image url: $url');

    if (url.isEmpty ||
        !(url.startsWith('http://') || url.startsWith('https://'))) {
      UIUtils.showSnackBar(context, StringConstants.imageUrlValidationError);
      return;
    }

    // build image syntax
    final imgSyntax = 'img220($url)';

    final fullText = widget.textController.text;
    int selStart = widget.textController.selection.start;
    int selEnd = widget.textController.selection.end;

    // clamp into valid range
    if (selStart < 0 || selStart > fullText.length) selStart = fullText.length;
    if (selEnd < 0 || selEnd > fullText.length) selEnd = fullText.length;

    // insert
    final newText = StringBuffer()
      ..write(fullText.substring(0, selStart))
      ..write(imgSyntax)
      ..write(fullText.substring(selEnd));
    widget.textController.text = newText.toString();

    // move cursor after the inserted syntax
    final newOffset = selStart + imgSyntax.length;
    widget.textController.selection = TextSelection.collapsed(offset: newOffset);
  }

  void _insertYoutubeLink() {
    final ytPattern = RegExp(
      r'^(?:https?:\/\/)?' +
          r'(?:www\.|m\.)?' +
          r'(?:(?:youtube\.com\/(?:watch\?v=|embed\/|shorts\/|v\/|live\/))|youtu\.be\/)' +
          r'([\w\-]{11})(?:\S*)$',
      caseSensitive: false,
    );

    final rawUrl = otherDataController.text.trim();
    // Normalize to full watch URL:
    final match = ytPattern.firstMatch(rawUrl)!;
    final vid = match.group(1)!;
    final url = 'https://www.youtube.com/watch?v=$vid';

    final syntax = 'youtube($url)';
    final fullText = widget.textController.text;
    int selStart = widget.textController.selection.start;
    int selEnd = widget.textController.selection.end;
    // Clamp
    if (selStart < 0 || selStart > fullText.length) selStart = fullText.length;
    if (selEnd < 0 || selEnd > fullText.length) selEnd = fullText.length;

    // Build new text
    final newText = StringBuffer()
      ..write(fullText.substring(0, selStart))
      ..write(syntax)
      ..write(fullText.substring(selEnd));
    widget.textController.text = newText.toString();

    // Move cursor just after the inserted syntax
    final newOffset = selStart + syntax.length;
    widget.textController.selection = TextSelection.collapsed(offset: newOffset);

    log('Inserted YouTube syntax: $syntax');
  }

  void _insertWebmLink() {
    final url = otherDataController.text.trim();
    log('Video url: $url');

    if (url.isEmpty ||
        !(url.startsWith('http://') || url.startsWith('https://'))) {
      UIUtils.showSnackBar(context, StringConstants.imageUrlValidationError);
      return;
    }

    // build image syntax
    final imgSyntax = 'webm($url)';

    final fullText = widget.textController.text;
    int selStart = widget.textController.selection.start;
    int selEnd = widget.textController.selection.end;

    // clamp into valid range
    if (selStart < 0 || selStart > fullText.length) selStart = fullText.length;
    if (selEnd < 0 || selEnd > fullText.length) selEnd = fullText.length;

    // insert
    final newText = StringBuffer()
      ..write(fullText.substring(0, selStart))
      ..write(imgSyntax)
      ..write(fullText.substring(selEnd));
    widget.textController.text = newText.toString();

    // move cursor after the inserted syntax
    final newOffset = selStart + imgSyntax.length;
    widget.textController.selection = TextSelection.collapsed(offset: newOffset);
  }

  void _insertListItem(bool isNumbered) {
    final fullText = widget.textController.text;
    // Clamp selection to valid range
    int start = widget.textController.selection.start.clamp(0, fullText.length);
    int end = widget.textController.selection.end.clamp(0, fullText.length);

    final prefix = isNumbered ? '1. ' : '- ';

    if (start == end) {
      // No selection → just insert at cursor
      final newText =
          fullText.substring(0, start) + prefix + fullText.substring(start);
      widget.textController.text = newText;
      // Move caret to after the inserted prefix
      widget.textController.selection =
          TextSelection.collapsed(offset: start + prefix.length);
    } else {
      // Has selection → insert prefix before the selected block
      final before = fullText.substring(0, start);
      final selected = fullText.substring(start, end);
      final after = fullText.substring(end);

      final newText = before + prefix + selected + after;
      widget.textController.text = newText;
      // Keep the selection spanning the original text (now shifted by prefix.length)
      widget.textController.selection = TextSelection(
        baseOffset: start,
        extentOffset: end + prefix.length,
      );
    }
  }

  void _insertHeader() {
    final fullText = widget.textController.text;
    // Clamp selection indices into [0 .. fullText.length]
    int start = widget.textController.selection.start.clamp(0, fullText.length);
    int end = widget.textController.selection.end.clamp(0, fullText.length);

    const prefix = '# ';

    if (start == end) {
      // No selection → insert "# " at the cursor
      final newText =
          fullText.substring(0, start) + prefix + fullText.substring(start);
      widget.textController.text = newText;
      // Move cursor right after the inserted "# "
      widget.textController.selection =
          TextSelection.collapsed(offset: start + prefix.length);
    } else {
      // Has selection → prefix the selected block with "# "
      final before = fullText.substring(0, start);
      final selected = fullText.substring(start, end);
      final after = fullText.substring(end);

      final newText = before + prefix + selected + after;
      widget.textController.text = newText;
      // Update selection to cover the original text (now shifted by prefix.length)
      widget.textController.selection = TextSelection(
        baseOffset: start,
        extentOffset: end + prefix.length,
      );
    }
  }

  void _insertQuote() {
    final fullText = widget.textController.text;
    // Clamp selection indices into [0 .. fullText.length]
    int start = widget.textController.selection.start.clamp(0, fullText.length);
    int end = widget.textController.selection.end.clamp(0, fullText.length);

    const prefix = '> ';

    if (start == end) {
      // No selection → insert "> " at the cursor
      final newText =
          fullText.substring(0, start) + prefix + fullText.substring(start);
      widget.textController.text = newText;
      // Move cursor right after the inserted "> "
      widget.textController.selection =
          TextSelection.collapsed(offset: start + prefix.length);
    } else {
      // Has selection → prefix the selected block with "> "
      final before = fullText.substring(0, start);
      final selected = fullText.substring(start, end);
      final after = fullText.substring(end);

      final newText = before + prefix + selected + after;
      widget.textController.text = newText;
      // Update selection to cover the original text (now shifted by prefix.length)
      widget.textController.selection = TextSelection(
        baseOffset: start,
        extentOffset: end + prefix.length,
      );
    }
  }

  (int start, int end) getSelectedText() {
    // print(_editingController.selection.extentOffset);
    int start = widget.textController.selection.baseOffset <
            widget.textController.selection.extentOffset
        ? widget.textController.selection.baseOffset
        : widget.textController.selection.extentOffset;

    var end = widget.textController.selection.baseOffset >
            widget.textController.selection.extentOffset
        ? widget.textController.selection.baseOffset
        : widget.textController.selection.extentOffset;

    return (
      start == -1 ? 0 : start,
      end == -1 ? 0 : end,
    );
  }

  void replaceAround(
      (int start, int end) range, String startStr, String endStr) {
    var text = widget.textController.text.substring(range.$1, range.$2);
    widget.textController.text = widget.textController.text
        .replaceRange(range.$1, range.$2, '$startStr$text$endStr');

    if (text.isEmpty) {
      widget.textController.selection = TextSelection.fromPosition(
          TextPosition(offset: range.$1 + startStr.length));
    }
  }

  void _showBottomSheet({
    required String title,
    required VoidCallback onSave,
    bool showOtherInput = false,
    required String hint1,
    String? hint2,
  }) {
    otherDataController.clear();
    otherDataController2.clear();
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
                    controller: otherDataController,
                    hintText: hint1,
                    maxLines: 1,
                    textCapitalization: TextCapitalization.none,
                  ),
                  if (showOtherInput)
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: CustomTextField(
                        controller: otherDataController2,
                        hintText: hint2 ?? '',
                        maxLines: 1,
                        textCapitalization: TextCapitalization.none,
                      ),
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
}

class _MarkdownOption extends StatelessWidget {
  const _MarkdownOption({required this.asset, required this.onPressed});

  final String asset;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: SvgPicture.asset(
        asset,
        width: 20,
      ),
    );
  }
}
