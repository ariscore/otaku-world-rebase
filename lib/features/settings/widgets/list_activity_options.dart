import 'package:flutter/material.dart';
import 'package:otaku_world/core/ui/filters/custom_check_box.dart';

class ListActivityOptions extends StatelessWidget {
  const ListActivityOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'List Activity Creation',
          style: Theme.of(context).textTheme.displayMedium!.copyWith(
                fontFamily: 'Poppins-Medium',
              ),
        ),
        const SizedBox(height: 10),
        Text(
          'Create an entry on your activity feed when your list updates.',
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: Colors.white.withOpacity(0.8),
              ),
        ),
        const SizedBox(height: 10),
        CustomCheckBox(
          label: 'Watching/Reading Activity',
          onChanged: () {},
          initialValue: false,
        ),
        CustomCheckBox(
          label: 'Planning to watch/read Activity',
          onChanged: () {},
          initialValue: false,
        ),
        CustomCheckBox(
          label: 'Completed anime/manga Activity',
          onChanged: () {},
          initialValue: false,
        ),
        CustomCheckBox(
          label: 'Dropped anime/manga Activity',
          onChanged: () {},
          initialValue: false,
        ),
        CustomCheckBox(
          label: 'Paused watching/reading Activity',
          onChanged: () {},
          initialValue: false,
        ),
        CustomCheckBox(
          label: 'Repeating watching/reading Activity',
          onChanged: () {},
          initialValue: false,
        ),
      ],
    );
  }
}
