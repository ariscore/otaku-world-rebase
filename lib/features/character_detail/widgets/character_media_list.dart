import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:otaku_world/bloc/charcter_detail/media/character_media_bloc.dart';
import 'package:otaku_world/bloc/paginated_data/paginated_data_bloc.dart';
import 'package:otaku_world/core/ui/filters/custom_dropdown.dart';
import 'package:otaku_world/features/character_detail/widgets/character_media_card.dart';

import '../../../../bloc/graphql_client/graphql_client_cubit.dart';
import '../../../core/ui/shimmers/detail_screens/list/character_list_shimmer.dart';
import '../../../graphql/__generated/graphql/character-detail/character_media.graphql.dart';

class CharacterMediaList extends StatefulWidget {
  const CharacterMediaList({super.key});

  @override
  State<CharacterMediaList> createState() => _CharacterMediaListState();
}

class _CharacterMediaListState extends State<CharacterMediaList> {
  List<String> availableLanguages = [];

  String selectedLanguage = "Japanese";

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CharacterMediaBloc, PaginatedDataState>(
      builder: (context, state) {
        if (state is PaginatedDataInitial || state is PaginatedDataLoading) {
          return const CharacterListShimmer();
        } else if (state is PaginatedDataLoaded) {
          List<Query$getCharacterMedia$Character$media$edges?> characters =
              state.list
                  as List<Query$getCharacterMedia$Character$media$edges?>;
          loadLanguages(characters);
          return NotificationListener<ScrollNotification>(
            onNotification: (scrollInfo) {
              if (scrollInfo.metrics.pixels ==
                  scrollInfo.metrics.maxScrollExtent) {
                final characterBloc = context.read<CharacterMediaBloc>();
                final hasNextPage =
                    (characterBloc.state as PaginatedDataLoaded).hasNextPage;
                if (hasNextPage) {
                  final client = (context.read<GraphqlClientCubit>().state
                          as GraphqlClientInitialized)
                      .client;
                  characterBloc.add(LoadData(client));
                }
              }
              return false;
            },
            child: CustomScrollView(
              slivers: [
                if (availableLanguages.isNotEmpty)
                  SliverPadding(
                    padding: const EdgeInsets.all(8.0),
                    sliver: SliverToBoxAdapter(
                      child: CustomDropdown(
                        dropdownItems: availableLanguages,
                        initialValue: selectedLanguage,

                        onChange: (language) {
                          setState(
                            () {
                              selectedLanguage = language;
                            },
                          );
                        },
                      ),
                    ),
                  ),
                SliverPadding(
                  padding: const EdgeInsets.all(10),
                  sliver: SliverList.separated(
                    itemCount: characters.length,
                    separatorBuilder: (context, index) => const SizedBox(
                      height: 10,
                    ),
                    itemBuilder: (context, index) {
                      final media = characters[index]!.node!;
                      final voiceActor = characters[index]!
                          .voiceActorRoles!
                          .where((voiceActorRole) =>
                              voiceActorRole!.voiceActor!.languageV2 ==
                              selectedLanguage)
                          .toList();

                      return CharacterMediaCard(
                        media: media,
                        voiceActor: voiceActor.isNotEmpty
                            ? voiceActor.first?.voiceActor
                            : null,
                      );
                    },
                  ),
                ),
                if (state.hasNextPage)
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
          );
        }
        return const Text(
          'Unknown State',
          style: TextStyle(color: Colors.white),
        );
      },
    );
  }

  void loadLanguages(
      List<Query$getCharacterMedia$Character$media$edges?> characters) {
    for (var character in characters) {
      character?.voiceActorRoles?.forEach(
            (voiceActorRole) {
          var language = voiceActorRole!.voiceActor!.languageV2!;
          if (!availableLanguages.contains(language)) {
            availableLanguages.add(language);
          }
        },
      );
    }

    availableLanguages.sort();
  }
}
