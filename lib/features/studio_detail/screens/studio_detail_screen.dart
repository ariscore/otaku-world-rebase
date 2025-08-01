import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:otaku_world/bloc/studio_detail/studio_detail_bloc.dart';
import 'package:otaku_world/core/ui/media_section/media_grid_list.dart';
import 'package:otaku_world/core/ui/shimmers/detail_screens/screens/studio_detail_shimmer.dart';
import 'package:otaku_world/features/studio_detail/widgets/studio_app_bar.dart';
import 'package:otaku_world/graphql/__generated/graphql/schema.graphql.dart';
import 'package:otaku_world/utils/navigation_helper.dart';

import '../../../bloc/graphql_client/graphql_client_cubit.dart';
import '../../../bloc/paginated_data/paginated_data_bloc.dart';
import '../../../bloc/studio_detail/studio_media/studio_media_bloc.dart';
import '../../../core/model/custom_error.dart';
import '../../../core/ui/media_section/scroll_to_top_button.dart';
import '../../../core/ui/placeholders/anime_character_placeholder.dart';
import '../../../core/ui/widgets/scaffold_wrapper_placeholder.dart';
import '../../../generated/assets.dart';

class StudioDetailScreen extends HookWidget {
  const StudioDetailScreen({
    super.key,
    required this.studioId,
  });

  final int studioId;
  static const Widget fifteenSpacing = SizedBox(
    height: 15,
  );

  static const Widget twentySpacing = SizedBox(
    height: 20,
  );

  @override
  Widget build(BuildContext context) {
    final scrollController = useScrollController();

    final bloc = context.read<StudioMediaBloc>();

    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, _) {
        if (didPop) return;
        NavigationHelper.onPopInvoked(context);
      },
      child: BlocBuilder<StudioDetailBloc, StudioDetailState>(
        builder: (context, state) {
          if (state is StudioDetailInitial || state is StudioDetailLoading) {
            return const StudioDetailShimmer();
          } else if (state is StudioDetailLoaded) {
            final studio = state.studio;
            return Scaffold(
              floatingActionButton: ScrollToTopFAB(
                controller: scrollController,
                tag: 'studio_fab',
              ),
              body: CustomScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                controller: scrollController,
                slivers: [
                  StudioAppBar(
                    studio: studio,
                    bloc: bloc,
                  ),
                  MediaGridList<StudioMediaBloc>(
                    mediaType: Enum$MediaType.ANIME,
                    isNeedToShowFormatAndYear: true,
                    onLastItemReached: () {
                      if (bloc.state is PaginatedDataLoaded) {
                        final hasNextPage =
                            (bloc.state as PaginatedDataLoaded).hasNextPage;
                        if (hasNextPage) {
                          final client = (context
                                  .read<GraphqlClientCubit>()
                                  .state as GraphqlClientInitialized)
                              .client;
                          bloc.add(LoadData(client));
                        }
                      }
                    },
                  ),
                ],
              ),
            );
          } else if (state is StudioDetailError) {
            return ScaffoldWrapperPlaceholder(
              child: AnimeCharacterPlaceholder(
                asset: Assets.charactersCigaretteGirl,
                error: state.error,
                onTryAgain: () {
                  context.read<StudioDetailBloc>().add(
                        LoadStudioDetail(
                          id: studioId,
                          client: (context.read<GraphqlClientCubit>().state
                                  as GraphqlClientInitialized)
                              .client,
                        ),
                      );
                },
                isError: true,
                isScrollable: true,
              ),
            );
          }
          return ScaffoldWrapperPlaceholder(
            child: AnimeCharacterPlaceholder(
              asset: Assets.charactersCigaretteGirl,
              error: CustomError.unexpectedError(),
              onTryAgain: () {
                context.read<StudioDetailBloc>().add(
                      LoadStudioDetail(
                        id: studioId,
                        client: (context.read<GraphqlClientCubit>().state
                                as GraphqlClientInitialized)
                            .client,
                      ),
                    );
              },
              isError: true,
              isScrollable: true,
            ),
          );
        },
      ),
    );
  }
}
