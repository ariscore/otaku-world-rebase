import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:otaku_world/bloc/charcter_detail/media/character_media_bloc.dart';
import 'package:otaku_world/core/ui/media_section/media_grid_list.dart';
import 'package:otaku_world/features/character_detail/screens/widgets/character_app_bar.dart';
import 'package:otaku_world/features/character_detail/screens/widgets/name_widget.dart';
import 'package:otaku_world/features/media_detail/tabs/overview/widgets/description.dart';
import 'package:otaku_world/features/media_detail/widgets/simple_loading.dart';
import 'package:otaku_world/graphql/__generated/graphql/schema.graphql.dart';
import 'package:otaku_world/utils/navigation_helper.dart';

import '../../../bloc/charcter_detail/character_detail_bloc.dart';
import '../../../theme/colors.dart';
import '../../../utils/app_texts.dart';

class CharacterDetailScreen extends StatelessWidget {
  const CharacterDetailScreen({
    super.key,
    required this.characterId,
  });

  final int characterId;
  static const Widget fifteenSpacing = SizedBox(
    height: 15,
  );

  static const Widget twentySpacing = SizedBox(
    height: 20,
  );

  @override
  Widget build(BuildContext context) {
    return PopScope(
      onPopInvokedWithResult: (didPop, result) {
        if (didPop) {
          return;
        }
        NavigationHelper.onPopInvoked(context);
      },
      child: Scaffold(
        body: BlocBuilder<CharacterDetailBloc, CharacterDetailState>(
          builder: (context, state) {
            if (state is CharacterDetailInitial ||
                state is CharacterDetailLoading) {
              return const SimpleLoading();
            } else if (state is CharacterDetailLoaded) {
              final character = state.character;
              return CustomScrollView(
                slivers: [
                  CharacterAppBar(
                    character: character,
                  ),
                  SliverFillRemaining(
                    child: Column(
                      children: [
                        if (character.name != null) ...[
                          twentySpacing,
                          NameWidget(
                            name: character.name!,
                          ),
                          if (character.description != null) ...[
                            twentySpacing,
                            const Text(
                              'Description',
                              style: AppTextStyles.titleSectionStyle,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Description(
                              description: character.description,
                            ),
                          ]
                        ],
                        fifteenSpacing,
                        const Text(
                          'Media',
                          style: AppTextStyles.titleSectionStyle,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const MediaGridList<CharacterMediaBloc>(
                          mediaType: Enum$MediaType.ANIME,
                          crossAxisCount: 3,
                        ),
                      ],
                    ),
                  ),
                ],
              );
            }

            return const Center(
              child: Text(
                'Unknown State',
                style: TextStyle(
                  color: AppColors.white,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
