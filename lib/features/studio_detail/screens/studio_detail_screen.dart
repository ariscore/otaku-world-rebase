import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:otaku_world/bloc/studio_detail/studio_detail_bloc.dart';
import 'package:otaku_world/core/ui/appbars/simple_app_bar.dart';
import 'package:otaku_world/core/ui/media_section/media_grid_list.dart';
import 'package:otaku_world/features/media_detail/widgets/simple_loading.dart';
import 'package:otaku_world/graphql/__generated/graphql/schema.graphql.dart';
import 'package:otaku_world/utils/extensions.dart';
import 'package:otaku_world/utils/navigation_helper.dart';

import '../../../bloc/graphql_client/graphql_client_cubit.dart';
import '../../../bloc/paginated_data/paginated_data_bloc.dart';
import '../../../bloc/studio_detail/studio_media/studio_media_bloc.dart';
import '../../../generated/assets.dart';
import '../../../theme/colors.dart';
import '../../../utils/app_texts.dart';
import '../../media_detail/widgets/info_data.dart';

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

    useEffect(() {
      scrollController.addListener(() {
        final maxScroll = scrollController.position.maxScrollExtent;
        final currentScroll = scrollController.position.pixels;

        if (currentScroll == maxScroll) {
          final bloc = context.read<StudioMediaBloc>();
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
    return PopScope(
      onPopInvokedWithResult: (didPop, result) {
        if (didPop) {
          return;
        }
        NavigationHelper.onPopInvoked(context);
      },
      child: Scaffold(
        appBar: SimpleAppBar(
          title: '',
          bgColor: AppColors.raisinBlack,
          actions: [
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                Assets.iconsMoreVertical,
              ),
            ),
          ],
        ),
        body: BlocBuilder<StudioDetailBloc, StudioDetailState>(
          builder: (context, state) {
            if (state is StudioDetailInitial || state is StudioDetailLoading) {
              return const SimpleLoading();
            } else if (state is StudioDetailLoaded) {
              final studio = state.studio;
              return SingleChildScrollView(
                controller: scrollController,
                padding: const EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        fifteenSpacing,
                        Text(
                          studio.name.checkIfNull(),
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        fifteenSpacing,
                        InfoData(
                          iconName: Assets.iconsFavourite,
                          separateWidth: 3,
                          info: studio.favourites.toString(),
                          mainAxisAlignment: MainAxisAlignment.center,
                        ),
                      ],
                    ),
                    fifteenSpacing,
                    const Text(
                      'Media',
                      style: AppTextStyles.titleSectionStyle,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const MediaGridList<StudioMediaBloc>(
                      crossAxisCount: 3,
                      mediaType: Enum$MediaType.ANIME,
                      isNeedToShowFormatAndYear: true,
                    ),
                  ],
                ),
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
