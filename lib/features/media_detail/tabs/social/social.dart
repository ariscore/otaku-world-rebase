import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:otaku_world/bloc/media_detail/social/social_bloc.dart';
import 'package:otaku_world/features/media_detail/tabs/social/widgets/social_card.dart';

import '../../../../bloc/graphql_client/graphql_client_cubit.dart';
import '../../../../bloc/paginated_data/paginated_data_bloc.dart';
import '../../widgets/simple_loading.dart';

class Social extends StatelessWidget {
  const Social({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SocialBloc, PaginatedDataState>(
      builder: (context, state) {
        if (state is PaginatedDataInitial) {
          final client = (context.read<GraphqlClientCubit>().state
                  as GraphqlClientInitialized)
              .client;
          context.read<SocialBloc>().add(LoadData(client));
          return const SimpleLoading();
        } else if (state is PaginatedDataLoading) {
          return const SimpleLoading();
        } else if (state is PaginatedDataLoaded) {
          final activities = state.list;
          return NotificationListener<ScrollNotification>(
            onNotification: (scrollInfo) {
              if (scrollInfo.metrics.pixels ==
                  scrollInfo.metrics.maxScrollExtent) {
                final socialBloc = context.read<SocialBloc>();
                final hasNextPage =
                    (socialBloc.state as PaginatedDataLoaded).hasNextPage;
                if (hasNextPage) {
                  final client = (context.read<GraphqlClientCubit>().state
                          as GraphqlClientInitialized)
                      .client;
                  socialBloc.add(LoadData(client));
                }
              }
              return false;
            },
            child: CustomScrollView(
              key: const PageStorageKey<String>('Characters'),
              slivers: [
                // if (false)
                //   SliverPadding(
                //     padding: const EdgeInsets.all(8.0),
                //     sliver: SliverToBoxAdapter(
                //       child: CustomDropdown(
                //         dropdownItems: availableLanguages,
                //         initialValue: selectedLanguage,
                //         onChange: (language) {
                //           setState(() {
                //             selectedLanguage = language;
                //           });
                //         },
                //       ),
                //     ),
                //   ),
                SliverPadding(
                  padding: const EdgeInsets.all(10),
                  sliver: SliverList.separated(
                    itemCount: activities.length,
                    separatorBuilder: (context, index) => const SizedBox(
                      height: 10,
                    ),
                    itemBuilder: (context, index) {
                      return SocialCard(
                        activity: activities[index]!,
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
}
