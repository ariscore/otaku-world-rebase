import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:otaku_world/bloc/media_detail/characters/characters_bloc.dart';
import 'package:otaku_world/bloc/paginated_data/paginated_data_bloc.dart';
import 'package:otaku_world/graphql/__generated/graphql/details/characters.graphql.dart';
import 'package:otaku_world/utils/extensions.dart';

import '../../../../bloc/graphql_client/graphql_client_cubit.dart';
import '../../../../graphql/__generated/graphql/schema.graphql.dart';
import '../../widgets/simple_loading.dart';
import 'character_card.dart';

class Characters extends StatelessWidget {
  const Characters({super.key});

  @override
  Widget build(BuildContext context) {
    // final characterScrollController = useScrollController();
    // useEffect(() {
    //   characterScrollController.addListener(() {
    //     final maxScroll = characterScrollController.position.maxScrollExtent;
    //     final currentScroll = characterScrollController.position.pixels;
    //
    //     if (currentScroll == maxScroll) {
    //       dev.log("Max Scrolled in Characters ", name: "Media Detail Screen");
    //       final characterBloc = context.read<CharactersBloc>();
    //
    //       final hasNextPage =
    //           (characterBloc.state as PaginatedDataLoaded).hasNextPage;
    //       if (hasNextPage) {
    //         final client = (context.read<GraphqlClientCubit>().state
    //                 as GraphqlClientInitialized)
    //             .client;
    //         characterBloc.add(LoadData(client));
    //       }
    //     }
    //   });
    //   return null;
    // });
    return BlocBuilder<CharactersBloc, PaginatedDataState>(
      builder: (context, state) {
        if (state is PaginatedDataInitial) {
          final client = (context.read<GraphqlClientCubit>().state
          as GraphqlClientInitialized)
              .client;
          context.read<CharactersBloc>().add(LoadData(client));
          return const SimpleLoading();
        } else if (state is PaginatedDataLoading) {
          return const SimpleLoading();
        } else if (state is PaginatedDataLoaded) {
          final List<Query$Characters$Media$characters$edges?> characters =
          state.list as List<Query$Characters$Media$characters$edges?>;
          return NotificationListener<ScrollNotification>(
            onNotification: (scrollInfo) {
              if (scrollInfo.metrics.pixels ==
                  scrollInfo.metrics.maxScrollExtent) {
                final characterBloc = context.read<CharactersBloc>();
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
                SliverPadding(
                  padding: const EdgeInsets.all(10),
                  sliver: SliverList.separated(
                    itemCount: characters.length,
                    separatorBuilder: (context, index) => const SizedBox(
                      height: 10,
                    ),
                    itemBuilder: (context, index) {
                      return CharacterCard(
                        animeCharacter: characters[index]!.node!,
                        characterRole: toJson$Enum$CharacterRole(
                          characters[index]?.role ??
                              Enum$CharacterRole.$unknown,
                        ).toString().capitalize(),
                        voiceActor: characters[index]!.voiceActorRoles!.isEmpty
                            ? null
                            : characters[index]!
                            .voiceActorRoles!
                            .first!
                            .voiceActor,
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

          // return ListView.separated(
          //   controller: characterScrollController,
          //   physics: ClampingScrollPhysics(),
          //   separatorBuilder: (context, index) => const SizedBox(
          //     height: 10,
          //   ),
          //   shrinkWrap: true,
          //   // physics: const ClampingScrollPhysics(),
          //   itemCount: state.list.length,
          //   itemBuilder: (context, index) {
          //     return CharacterCard(
          //       animeCharacter: characters[index]!.node!,
          //       characterRole: toJson$Enum$CharacterRole(
          //         characters[index]?.role ?? Enum$CharacterRole.$unknown,
          //       ).toString().capitalize(),
          //       voiceActor: characters[index]!.voiceActorRoles!.isEmpty
          //           ? null
          //           : characters[index]!.voiceActorRoles!.first!.voiceActor,
          //     );
          //   },
          // );
          // return Column(
          //   children: [
          //     SizedBox(height: 50),
          //     Expanded(
          //       child: ListView.separated(
          //         controller: characterScrollController,
          //         separatorBuilder: (context, index) => const SizedBox(
          //           height: 10,
          //         ),
          //         shrinkWrap: true,
          //         // physics: const ClampingScrollPhysics(),
          //         itemCount: state.list.length,
          //         itemBuilder: (context, index) {
          //           return CharacterCard(
          //             animeCharacter: characters[index]!.node!,
          //             characterRole: toJson$Enum$CharacterRole(
          //               characters[index]?.role ?? Enum$CharacterRole.$unknown,
          //             ).toString().capitalize(),
          //             voiceActor: characters[index]!.voiceActorRoles!.isEmpty
          //                 ? null
          //                 : characters[index]!.voiceActorRoles!.first!.voiceActor,
          //           );
          //         },
          //       ),
          //     ),
          //   ],
          // );
        }
        return const Text(
          'Unknown State',
          style: TextStyle(color: Colors.white),
        );
      },
    );
  }
}
