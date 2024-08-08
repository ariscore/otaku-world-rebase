import 'package:flutter/material.dart';

import '../../../core/ui/appbars/simple_app_bar.dart';
import '../../../core/ui/custom_search_bar.dart';
import '../../../core/ui/discover_header.dart';

class StaffDiscoverScreen extends StatelessWidget {
  const StaffDiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const SimpleAppBar(title: "Staff"),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: DiscoverHeader(
                title: "Discover the Creative Forces \nbehind Anime and Manga",
                subtitle:
                    "Unveiling the Talented Staff Bringing Stories to Life",
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
