import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../bloc/graphql_client/graphql_client_cubit.dart';
import '../../../bloc/paginated_data/paginated_data_bloc.dart';
import '../../../core/ui/error_text.dart';
import '../../../core/ui/shimmers/grid_shimmer.dart';
import '../../../generated/assets.dart';
import '../../../graphql/__generated/graphql/schema.graphql.dart';
import '../../../theme/colors.dart';
import '../../../utils/navigation_helper.dart';
import '../images/cover_image.dart';
import '../placeholders/poster_placeholder.dart';

class MediaGridList<B extends PaginatedDataBloc> extends HookWidget {
  const MediaGridList({
    required this.mediaType,
    required this.crossAxisCount,
    super.key,
  });

  final int crossAxisCount;
  final Enum$MediaType mediaType;

  @override
  Widget build(BuildContext context) {
    final scrollController = useScrollController();

    useEffect(() {
      scrollController.addListener(() {
        final maxScroll = scrollController.position.maxScrollExtent;
        final currentScroll = scrollController.position.pixels;

        if (currentScroll == maxScroll) {
          final bloc = context.read<B>();
          final hasNextPage = (bloc.state as PaginatedDataLoaded).hasNextPage;
          if (hasNextPage) {
            final client = (context.read<GraphqlClientCubit>().state
                    as GraphqlClientInitialized)
                .client;
            bloc.add(LoadData(client));
          }
        }
      });
      return null;
    }, const []);

    return BlocBuilder<B, PaginatedDataState>(
      builder: (context, state) {
        if (state is PaginatedDataInitial || state is PaginatedDataLoading) {
          return GridShimmer(mediaType: mediaType);
        } else if (state is PaginatedDataLoaded) {
          return Column(
            children: [
              GridView.builder(
                controller: scrollController,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 150,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 0.5556,
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
                  padding: EdgeInsets.all(8.0),
                  child: CircularProgressIndicator(),
                ),
            ],
          );
        } else if (state is PaginatedDataError) {
          return Center(
            child: ErrorText(
              message: state.message,
              onTryAgain: () {
                final client = (context.read<GraphqlClientCubit>().state
                        as GraphqlClientInitialized)
                    .client;
                context.read<B>().add(LoadData(client));
              },
            ),
          );
        }
        return const SizedBox.shrink();
      },
    );
  }

  Widget _buildMediaCard(
    BuildContext context,
    dynamic media,
    Size size,
  ) {
    if (media == null) return const SizedBox();

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AspectRatio(
          aspectRatio: 0.70005,
          child: ClipRRect(
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
                    media?.type ?? Enum$MediaType.$unknown,
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
        ),
        const SizedBox(
          height: 5,
        ),
        // Manga title
        SizedBox(
          child: Text(
            media.title.userPreferred,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontFamily: 'Roboto-Condensed',
                ),
          ),
        ),
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
