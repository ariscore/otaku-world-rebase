import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:otaku_world/constants/string_constants.dart';
import 'package:otaku_world/core/model/custom_error.dart';
import 'package:otaku_world/graphql/__generated/graphql/fragments.graphql.dart';

import '../../../bloc/graphql_client/graphql_client_cubit.dart';
import '../../../bloc/paginated_data/paginated_data_bloc.dart';
import '../../../generated/assets.dart';
import '../../../graphql/__generated/graphql/schema.graphql.dart';
import '../../../theme/colors.dart';
import '../../../utils/formatting_utils.dart';
import '../../../utils/navigation_helper.dart';
import '../images/cover_image.dart';
import '../placeholders/anime_character_placeholder.dart';
import '../placeholders/poster_placeholder.dart';
import '../shimmers/detail_screens/widgets/media_grid_shimmer.dart';

class MediaGridList<B extends PaginatedDataBloc> extends StatelessWidget {
  const MediaGridList({
    required this.mediaType,
    required this.onLastItemReached,
    this.isNeedToShowFormatAndYear = false,
    super.key,
  });

  final Enum$MediaType mediaType;
  final bool isNeedToShowFormatAndYear;
  final VoidCallback onLastItemReached;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<B, PaginatedDataState>(
      builder: (context, state) {
        if (state is PaginatedDataInitial || state is PaginatedDataLoading) {
          return const MediaGridShimmer(
            isSliver: true,
          );
        } else if (state is PaginatedDataLoaded) {
          if (state.list.isEmpty) {
            return const SliverToBoxAdapter(
              child: Center(
                child: AnimeCharacterPlaceholder(
                  asset: Assets.charactersErenYeager,
                  heading: 'No Anime/Manga found',
                  subheading: 'There is no Anime/Manga to display!',
                  isScrollable: true,
                ),
              ),
            );
          }
          return SliverPadding(
            padding: const EdgeInsets.all(10),
            sliver: SliverGrid.builder(
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 150,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: isNeedToShowFormatAndYear ? 0.5 : 0.5556,
              ),
              itemCount: state.list.length + (state.hasNextPage ? 3 : 0),
              itemBuilder: (context, index) {
                if (index == state.list.length - 1) {
                  // Last item reached, trigger the callback
                  onLastItemReached();
                }
                if (index >= state.list.length) {
                  if (state.hasNextPage) {
                    return const ShimmerGridCard();
                  } else {
                    // No more items to load
                    return const SliverToBoxAdapter(child: SizedBox.shrink());
                  }
                }

                final media = state.list[index];
                return _buildMediaCard(
                  context,
                  media,
                  MediaQuery.sizeOf(context),
                );
              },
            ),
          );
        } else if (state is PaginatedDataError) {
          return SliverToBoxAdapter(
            child: AnimeCharacterPlaceholder(
              asset: Assets.charactersCigaretteGirl,
              error: state.error,
              onTryAgain: () {
                context.read<B>().add(
                      LoadData((context.read<GraphqlClientCubit>().state
                              as GraphqlClientInitialized)
                          .client),
                    );
              },
              isError: true,
              isScrollable: true,
            ),
          );
        }
        return SliverToBoxAdapter(
          child: AnimeCharacterPlaceholder(
            asset: Assets.charactersCigaretteGirl,
            error: CustomError.unexpectedError(),
            onTryAgain: () {
              context.read<B>().add(
                    LoadData((context.read<GraphqlClientCubit>().state
                            as GraphqlClientInitialized)
                        .client),
                  );
            },
            isError: true,
            isScrollable: true,
          ),
        );
      },
    );
  }

  Widget _buildMediaCard(
    BuildContext context,
    Fragment$MediaShort? media,
    Size size,
  ) {
    if (media == null) return const SizedBox();

    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: (mediaType == Enum$MediaType.ANIME)
              ? BorderRadius.circular(15)
              : BorderRadius.circular(5),
          child: Stack(
            children: [
              GestureDetector(
                onTap: () => NavigationHelper.goToMediaDetailScreen(
                  context: context,
                  mediaId: media.id,
                ),
                child: _buildMediaPoster(
                  media.coverImage?.large,
                  media.type ?? Enum$MediaType.$unknown,
                  size,
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: _buildMeanScore(
                  context,
                  media.meanScore,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        // Manga title
        Text(
          media.title?.userPreferred ?? StringConstants.noTitle,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontFamily: 'Roboto-Condensed',
              ),
        ),

        if (isNeedToShowFormatAndYear) ...[
          const SizedBox(
            height: 5,
          ),
          // Manga title
          SizedBox(
            child: Text(
              '${FormattingUtils.getMediaFormatString(
                media.format,
                forList: true,
              )}, ${media.startDate?.year ?? ''}',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontFamily: 'Roboto-Condensed',
                    color: AppColors.white.withValues(alpha: 0.8),
                  ),
            ),
          ),
        ],
      ],
    );
  }

  Widget _buildMeanScore(BuildContext context, int? meanScore) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 4,
        vertical: 3,
      ),
      decoration: ShapeDecoration(
        color: AppColors.raisinBlack.withValues(alpha: 0.6),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(5),
          ),
        ),
      ),
      child: Row(
        children: [
          SvgPicture.asset(Assets.iconsStar),
          const SizedBox(
            width: 1,
          ),
          Text(
            (meanScore == null) ? '0' : meanScore.toString(),
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontFamily: 'Roboto-Condensed',
                ),
          ),
        ],
      ),
    );
  }

  Widget _buildMediaPoster(String? imageUrl, Enum$MediaType type, Size size) {
    return (imageUrl != null)
        ? AspectRatio(
            aspectRatio: 0.70005,
            child: CoverImage(
              imageUrl: imageUrl,
              type: type,
            ),
          )
        : _buildPlaceholderImage110x162(type);
  }

  Widget _buildPlaceholderImage110x162(Enum$MediaType type) {
    return ClipRRect(
      borderRadius: (type == Enum$MediaType.ANIME)
          ? BorderRadius.circular(15)
          : BorderRadius.circular(5),
      child: const PosterPlaceholder(),
    );
  }
}
