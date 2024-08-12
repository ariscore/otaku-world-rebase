import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:otaku_world/core/ui/images/cover_image.dart';
import 'package:otaku_world/graphql/__generated/graphql/fragments.graphql.dart';
import 'package:otaku_world/graphql/__generated/graphql/schema.graphql.dart';
import 'package:otaku_world/utils/extensions.dart';

import '../../../../bloc/media_detail/media_detail_bloc.dart';
import '../../../../theme/colors.dart';

class Relations extends StatelessWidget {
  const Relations({super.key});

  @override
  Widget build(BuildContext context) {
    final relation =
        (context.read<MediaDetailBloc>().state as MediaDetailLoaded)
            .media
            .relations!
            .edges;
    return ListView.separated(
      clipBehavior: Clip.none,
      shrinkWrap: true,
      physics: const ClampingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      separatorBuilder: (context, index) => const SizedBox(
        width: 10,
      ),
      itemBuilder: (context, index) {
        return Relation(
          relation: relation[index]!,
        );
      },
      itemCount: relation!.length,
    );
  }
}

class Relation extends StatelessWidget {
  const Relation({super.key, required this.relation});

  final Fragment$MediaDetailed$relations$edges relation;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () => context.push('/media-detail?id=${relation.node!.id}'),
      child: Container(
        height: 150,
        width: size.width - 45,
        padding: const EdgeInsets.only(top: 8, left: 9, bottom: 8),
        clipBehavior: Clip.antiAlias,
        decoration: ShapeDecoration(
          gradient: const LinearGradient(
            begin: Alignment(0.00, -1.00),
            end: Alignment(0, 1),
            colors: [Color(0xFF263749), Color(0xFF303030)],
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 0.692307,
              child: CoverImage(
                imageUrl: relation.node!.coverImage!.large.toString(),
                type: Enum$MediaType.ANIME,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  toJson$Enum$MediaRelation(
                    relation.relationType ?? Enum$MediaRelation.$unknown,
                  ).toString().capitalize(),
                  style: const TextStyle(
                    fontSize: 12,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w500,
                    color: AppColors.sunsetOrange,
                  ),
                ),
                SizedBox(
                  width: (size.width) - 160,
                  child: Text(
                    relation.node!.title!.userPreferred.toString(),
                    style: const TextStyle(
                      fontSize: 14,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.bold,
                      color: AppColors.white,
                    ),
                  ),
                ),
                const Spacer(),
                Text(
                  "${toJson$Enum$MediaFormat(
                    relation.node?.format ?? Enum$MediaFormat.$unknown,
                  ).toString().capitalize()}, ${toJson$Enum$MediaStatus(
                    relation.node?.status ?? Enum$MediaStatus.$unknown,
                  ).toString().capitalize()}",
                  style: const TextStyle(
                    fontSize: 12,
                    fontFamily: 'Roboto',
                    color: AppColors.white,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
