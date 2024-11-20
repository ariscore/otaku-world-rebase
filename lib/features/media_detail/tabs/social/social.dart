import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:otaku_world/bloc/media_detail/social/social_bloc.dart';
import 'package:otaku_world/features/media_detail/tabs/social/widgets/social_card.dart';

import '../../../../bloc/graphql_client/graphql_client_cubit.dart';
import '../../../../bloc/paginated_data/paginated_data_bloc.dart';
import '../../../../theme/colors.dart';
import '../../widgets/simple_loading.dart';

class Social extends StatelessWidget {
  const Social({super.key});

  @override
  Widget build(BuildContext context) {
    final client =
        (context.read<GraphqlClientCubit>().state as GraphqlClientInitialized)
            .client;

    return BlocListener<SocialBloc, PaginatedDataState>(
      listenWhen: (previous, current) =>
          current is PaginatedDataLoaded &&
          previous is PaginatedDataLoaded &&
          previous.showProgress != current.showProgress,
      listener: (context, state) {
        if (state is PaginatedDataLoaded && state.showProgress) {
          showDialog(
            context: context,
            barrierDismissible: false,
            useRootNavigator: true,
            builder: (context) {
              return WillPopScope(
                onWillPop: () async => false,
                child: const Center(
                  child: CircularProgressIndicator(),
                ),
              );
            },
          );
        } else {
          context.pop();
        }
      },
      child: Column(
        children: [
          const SwitchWidget(),
          Expanded(
            child: BlocBuilder<SocialBloc, PaginatedDataState>(
              builder: (context, state) {
                if (state is PaginatedDataInitial) {
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
                        final hasNextPage = (context.read<SocialBloc>().state
                                as PaginatedDataLoaded)
                            .hasNextPage;
                        if (hasNextPage) {
                          context.read<SocialBloc>().add(LoadData(client));
                        }
                      }
                      return false;
                    },
                    child: CustomScrollView(
                      slivers: [
                        SliverPadding(
                          padding: const EdgeInsets.all(10),
                          sliver: SliverList.separated(
                            itemCount: activities.length,
                            separatorBuilder: (context, index) =>
                                const SizedBox(height: 10),
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
            ),
          ),
        ],
      ),
    );
  }
}

class SwitchWidget extends StatelessWidget {
  const SwitchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final socialBloc = context.read<SocialBloc>();
    final client =
        (context.read<GraphqlClientCubit>().state as GraphqlClientInitialized)
            .client;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: BlocBuilder<SocialBloc, PaginatedDataState>(
        builder: (context, state) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Show Friend's List",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                ),
              ),
              Switch(
                activeColor: AppColors.sunsetOrange,
                value: socialBloc.isFollowing,
                onChanged: (value) {
                  socialBloc.toggleIsFollowing(value, client);
                },
              ),
            ],
          );
        },
      ),
    );
  }
}
