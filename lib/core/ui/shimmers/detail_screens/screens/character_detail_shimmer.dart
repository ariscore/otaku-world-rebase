import 'package:otaku_world/core/ui/shimmers/detail_screens/widgets/character_app_bar_shimmer.dart';
import 'package:otaku_world/core/ui/shimmers/detail_screens/widgets/info_section_character_shimmer.dart';
import 'package:otaku_world/utils/extensions.dart';

import '../shimmer_details.dart';

class CharacterDetailShimmer extends StatelessWidget {
  const CharacterDetailShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const CharacterAppBarShimmer(),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            sliver: SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  20.height,
                  const SectionTitleShimmer(),
                  5.height,
                  const InfoSectionCharacterShimmer(),
                  20.height,
                  const SectionTitleShimmer(),
                  5.height,
                  const DescriptionShimmer(),
                  20.height,
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
