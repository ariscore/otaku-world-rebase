import 'package:flutter/material.dart';
import 'package:otaku_world/features/discover/widgets/entity_card.dart';

import '../../../graphql/__generated/graphql/fragments.graphql.dart';

class EntityGrid<E> extends StatelessWidget {
  const EntityGrid({super.key, required this.list, required this.hasNextPage, this.title = 'Results',});

  final List<E?> list;
  final bool hasNextPage;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.displaySmall?.copyWith(
                fontFamily: 'Roboto-Condensed',
              ),
        ),
        const SizedBox(height: 10),
        CustomScrollView(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          slivers: [
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 0),
              sliver: SliverGrid(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 100 / 185,
                  crossAxisSpacing: 10,
                ),
                delegate: SliverChildBuilderDelegate(
                  childCount: list.length,
                  (context, index) {
                    if (list[index] == null) return const SizedBox();

                    if (E == Fragment$SearchResultCharacter) {
                      final character =
                          list[index] as Fragment$SearchResultCharacter;
                      return EntityCard(
                        title: character.name?.userPreferred ?? ' - - ',
                        imageUrl: character.image?.large,
                        favorites: character.favourites,
                      );
                    } else if (E == Fragment$SearchResultStaff) {
                      final staff = list[index] as Fragment$SearchResultStaff;
                      return EntityCard(
                        title: staff.name?.userPreferred ?? ' - - ',
                        imageUrl: staff.image?.large,
                        favorites: staff.favourites,
                      );
                    } else if (E == Fragment$SearchResultStudio) {
                      final studio = list[index] as Fragment$SearchResultStudio;
                      final media = studio.media?.nodes?[0];
                      String poster = '';
                      if (media != null) {
                        poster = (media.isAdult ?? true) ? '' : (media.coverImage?.large ?? '');
                      }

                      return EntityCard(
                        title: studio.name,
                        imageUrl: poster,
                        favorites: studio.favourites,
                      );
                    } else {
                      return const SizedBox();
                    }
                  },
                ),
              ),
            ),
            if (hasNextPage)
              const SliverToBoxAdapter(
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.all(5.0),
                    child: CircularProgressIndicator(),
                  ),
                ),
              ),
          ],
        ),
      ],
    );
  }
}
