import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:otaku_world/generated/assets.dart';
import 'package:otaku_world/graphql/__generated/graphql/schema.graphql.dart';
import 'package:otaku_world/theme/colors.dart';

class ReorderList extends StatefulWidget {
  const ReorderList({
    super.key,
    required this.list,
    required this.type,
    required this.onChange,
  });

  final List<String?> list;
  final Enum$MediaType type;
  final void Function(List<String?> list) onChange;

  @override
  State<ReorderList> createState() => _ReorderListState();
}

class _ReorderListState extends State<ReorderList> {
  late List<String?> list;

  @override
  void initState() {
    list = widget.list;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              '${widget.type == Enum$MediaType.ANIME ? 'Anime' : 'Manga'} Lists Order',
              style: Theme.of(context).textTheme.displayMedium!.copyWith(
                    fontFamily: 'Poppins-Medium',
                  ),
            ),
            const SizedBox(width: 10),
            const Tooltip(
              triggerMode: TooltipTriggerMode.tap,
              message: 'Press and hold to reorder',
              showDuration: Duration(seconds: 5),
              child: Icon(
                Icons.info,
                color: AppColors.white,
                size: 20,
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        list.isEmpty
            ? const SizedBox()
            : ReorderableListView(
                key: UniqueKey(),
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                proxyDecorator: (child, index, animation) => SizedBox(
                  child: child,
                ),
                onReorder: (oldIndex, newIndex) {
                  setState(() {
                    if (oldIndex < newIndex) {
                      newIndex -= 1;
                    }
                    final item = list.removeAt(oldIndex);
                    list.insert(newIndex, item);
                    widget.onChange(list);
                  });
                },
                children: List.generate(
                  list.length,
                  (index) => _buildList(
                    context,
                    name: list[index],
                  ),
                ),
              ),
      ],
    );
  }

  Widget _buildList(BuildContext context, {required String? name}) {
    if (name == null) return const SizedBox();
    return Container(
      key: ValueKey<String>(name),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.jet,
      ),
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            name,
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  fontFamily: 'Poppins',
                ),
          ),
          SvgPicture.asset(Assets.iconsDrag),
        ],
      ),
    );
  }
}
