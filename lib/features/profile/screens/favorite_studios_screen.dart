import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:otaku_world/bloc/paginated_data/paginated_data_bloc.dart';
import 'package:otaku_world/bloc/profile/favorite_studios/favorite_studios_bloc.dart';
import 'package:otaku_world/core/ui/appbars/simple_app_bar.dart';
import 'package:otaku_world/core/ui/error_text.dart';
import 'package:otaku_world/features/discover/widgets/entity_grid.dart';
import 'package:otaku_world/graphql/__generated/graphql/fragments.graphql.dart';

class FavoriteStudiosScreen extends StatelessWidget {
  const FavoriteStudiosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const SimpleAppBar(title: 'Favorite Studios'),
      body: BlocBuilder<FavoriteStudiosBloc, PaginatedDataState>(
        builder: (context, state) {
          if (state is PaginatedDataLoading || state is PaginatedDataInitial) {
            return const CircularProgressIndicator();
          } else if (state is PaginatedDataLoaded) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: EntityGrid<Fragment$SearchResultStudio>(
                showTitle: false,
                list: state.list as List<Fragment$SearchResultStudio?>,
                hasNextPage: state.hasNextPage,
              ),
            );
          } else if (state is PaginatedDataError) {
            return ErrorText(
              message: state.message,
              onTryAgain: () {},
            );
          } else {
            return const Text('Unknown State');
          }
        },
      ),
    );
  }
}
