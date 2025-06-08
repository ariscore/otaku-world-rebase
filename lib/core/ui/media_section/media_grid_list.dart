import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:otaku_world/bloc/staff_detail/media/staff_media_bloc.dart';
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
    this.isNeedToShowFormatAndYear = false,
    super.key,
  });

  final Enum$MediaType mediaType;
  final bool isNeedToShowFormatAndYear;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<B, PaginatedDataState>(
      builder: (context, state) {
        if (state is PaginatedDataInitial || state is PaginatedDataLoading) {
          return const MediaGridShimmer();
        } else if (state is PaginatedDataLoaded) {
          return Column(
            children: [
              GridView.builder(
                padding: const EdgeInsets.all(10),
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 150,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: isNeedToShowFormatAndYear ? 0.5 : 0.5556,
                ),
                itemCount: state.list.length,
                itemBuilder: (context, index) {
                  final media = state.list[index];
                  return _buildMediaCard(
                    context,
                    media,
                    MediaQuery.sizeOf(context),
                  );
                },
              ),
              if (state.hasNextPage)
                const Padding(
                  padding: EdgeInsets.all(10),
                  child: CircularProgressIndicator(),
                ),
            ],
          );
        }
        return AnimeCharacterPlaceholder(
          asset: Assets.charactersNoInternet,
          heading: 'Something went wrong!',
          subheading:
              'Please check your internet connection or try again later.',
          onTryAgain: () {
            context.read<StaffMediaBloc>().add(
                  LoadData((context.read<GraphqlClientCubit>().state
                          as GraphqlClientInitialized)
                      .client),
                );
          },
          isError: true,
          isScrollable: true,
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
        SizedBox(
          child: Text(
            media.title!.userPreferred!,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontFamily: 'Roboto-Condensed',
                ),
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
              )},${media.startDate?.year ?? ''}',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontFamily: 'Roboto-Condensed',
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
