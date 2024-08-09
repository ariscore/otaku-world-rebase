import 'package:flutter/material.dart';

import '../../../bloc/filter/search/search_media_cubit.dart';
import '../../../core/ui/appbars/simple_app_bar.dart';
import '../../../core/ui/custom_search_bar.dart';
import '../../../core/ui/discover_header.dart';

class StudiosDiscoverScreen extends StatelessWidget {
  const StudiosDiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const SimpleAppBar(title: "Studios"),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: DiscoverHeader(
                title: "Unveiling the World of Anime \nStudios",
                subtitle:
                    "Explore the Creative Powerhouses Behind Your Favorite Shows",
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
              searchCubit: SearchMediaCubit(),
              hint: "HINT",
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
