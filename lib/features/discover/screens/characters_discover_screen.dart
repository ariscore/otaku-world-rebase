import 'package:flutter/material.dart';
import 'package:otaku_world/core/ui/custom_search_bar.dart';

import '../../../core/ui/appbars/simple_app_bar.dart';
import '../../../core/ui/discover_header.dart';

class CharactersDiscoverScreen extends StatelessWidget {
  const CharactersDiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const SimpleAppBar(title: "Characters"),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: DiscoverHeader(
                title: "Unlock the Realm of \nCharacters",
                subtitle: "Immerse Yourself in a Colorful Mosaic of "
                    "Unique Personalities and Memorable Icons",
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            CustomSearchBar(
              clearSearch: () {},
              onSubmitted: (value) {},
              onChanged: (p0) {

              },
            ),
            const SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
