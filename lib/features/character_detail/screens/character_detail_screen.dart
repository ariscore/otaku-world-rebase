import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:otaku_world/bloc/charcter_detail/media/character_media_bloc.dart';
import 'package:otaku_world/config/router/router_constants.dart';
import 'package:otaku_world/core/ui/appbars/simple_app_bar.dart';
import 'package:otaku_world/core/ui/shimmers/detail_screens/screens/character_detail_shimmer.dart';
import 'package:otaku_world/features/character_detail/widgets/character_media_short_list.dart';
import 'package:otaku_world/features/media_detail/tabs/overview/widgets/description.dart';
import 'package:otaku_world/utils/navigation_helper.dart';

import '../../../bloc/charcter_detail/character_detail_bloc.dart';
import '../../../bloc/graphql_client/graphql_client_cubit.dart';
import '../../../bloc/paginated_data/paginated_data_bloc.dart';
import '../../../core/ui/placeholders/anime_character_placeholder.dart';
import '../../../generated/assets.dart';
import '../../../utils/app_texts.dart';
import '../widgets/character_app_bar.dart';
import '../widgets/name_widget.dart';

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
    return PopScope(onPopInvokedWithResult: (didPop, result) {
      if (didPop) {
        return;
      }
      NavigationHelper.onPopInvoked(context);
    }, child: Scaffold(
      body: BlocBuilder<CharacterDetailBloc, CharacterDetailState>(
        builder: (context, state) {
          if (state is CharacterDetailInitial ||
              state is CharacterDetailLoading) {
            return const CharacterDetailShimmer();
          } else if (state is CharacterDetailLoaded) {
            final character = state.character;
            return CustomScrollView(
              slivers: [
                CharacterAppBar(
                  character: character,
                ),
                SliverPadding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  sliver: SliverToBoxAdapter(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (character.name != null) ...[
                          // twentySpacing,
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text(
                              'Media',
                              style: AppTextStyles.titleSectionStyle,
                            ),
                            BlocSelector<CharacterMediaBloc, PaginatedDataState,
                                bool>(
                              selector: (state) =>
                                  (state is PaginatedDataLoaded)
                                      ? state.hasNextPage
                                      : false,
                              builder: (context, hasNextPage) {
                                if (hasNextPage) {
                                  final bloc =
                                      context.read<CharacterMediaBloc>();
                                  return IconButton(
                                    onPressed: () {
                                      context.push(
                                        RouteConstants.characterMediaViewList,
                                        extra: bloc,
                                      );
                                    },
                                    icon: Padding(
                                      padding: const EdgeInsets.only(
                                        left: 12,
                                        right: 12,
                                      ),
                                      child: SvgPicture.asset(
                                        Assets.iconsArrowRight,
                                      ),
                                    ),
                                  );
                                }
                                return const SizedBox.shrink();
                              },
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                  ),
                ),
                const SliverPadding(
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 20),
                  sliver: CharacterMediaShortList(),
                )
              ],
            );
          }

          return Scaffold(
            appBar: const SimpleAppBar(),
            body: Center(
              child: AnimeCharacterPlaceholder(
                asset: Assets.charactersNoInternet,
                height: 300,
                heading: 'Something went wrong!',
                subheading:
                    'Please check your internet connection or try again later.',
                onTryAgain: () {
                  final client = (context.read<GraphqlClientCubit>().state
                          as GraphqlClientInitialized)
                      .client;
                  context.read<CharacterDetailBloc>().add(
                        LoadCharacterDetail(
                          id: characterId,
                          client: client,
                        ),
                      );
                  context.read<CharacterMediaBloc>().add(
                        LoadData(client),
                      );
                },
                isError: true,
                isScrollable: true,
              ),
            ),
          );
        },
      ),
    ));
  }
}
