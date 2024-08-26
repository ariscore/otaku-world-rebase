import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:otaku_world/bloc/media_detail/media_detail_bloc.dart';
import 'package:otaku_world/constants/string_constants.dart';
import 'package:otaku_world/features/media_detail/tabs/overview/widgets/info_tile.dart';
import 'package:otaku_world/graphql/__generated/graphql/fragments.graphql.dart';
import 'package:otaku_world/graphql/__generated/graphql/schema.graphql.dart';
import 'package:otaku_world/utils/extensions.dart';

import '../../../../../theme/colors.dart';

class OverallInfo extends StatelessWidget {
  const OverallInfo({super.key});

  static const Widget tenHeightSizedBox = SizedBox(
    height: 10,
  );

  @override
  Widget build(BuildContext context) {
    final media =
        (BlocProvider.of<MediaDetailBloc>(context).state as MediaDetailLoaded)
            .media;
    return Container(
      padding: const EdgeInsets.only(
        top: 14,
        bottom: 7,
        left: 11,
        right: 13,
      ),
      decoration: ShapeDecoration(
        gradient: const LinearGradient(
          begin: Alignment(0.00, -1.00),
          end: Alignment(0, 1),
          colors: [Color(0xFF263749), Color(0xFF404040)],
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        shadows: const [
          BoxShadow(
            color: Color(0x3F000000),
            blurRadius: 4,
            offset: Offset(0, 4),
            spreadRadius: 0,
          )
        ],
      ),
      child: Column(
        children: [
          InfoTile(
            title: "Romaji",
            data: media.title!.romaji.toString().checkIfNull(),
          ),
          tenHeightSizedBox,
          InfoTile(
            title: "English",
            data: media.title!.english.toString().checkIfNull(),
          ),
          tenHeightSizedBox,
          InfoTile(
            title: "Native",
            data: media.title!.native.toString().checkIfNull(),
          ),
          tenHeightSizedBox,
          InfoTile(
            title: 'Synonyms',
            data: media.synonyms!.isEmpty
                ? StringConstants.nullStringConstant
                : media.synonyms!.join("\n"),
          ),
          tenHeightSizedBox,
          Container(
            color: AppColors.white.withOpacity(0.5),
            height: 1,
          ),
          tenHeightSizedBox,
          InfoTile(
            title: 'Format',
            data: toJson$Enum$MediaFormat(
                media.format ?? Enum$MediaFormat.$unknown)
                .toString()
                .capitalize(),
          ),
          if (media.type == Enum$MediaType.ANIME) ...[
            tenHeightSizedBox,
            InfoTile(
              title: 'Episodes',
              data: media.episodes.toString().checkIfNull(),
            ),
            tenHeightSizedBox,
            InfoTile(
              title: 'Episodes Duration',
              data: media.duration.toString() == "null"
                  ? StringConstants.nullStringConstant
                  : "${media.duration} mins",
            ),
          ],
          if (media.type == Enum$MediaType.MANGA) ...[
            tenHeightSizedBox,
            InfoTile(
              title: 'Chapters',
              data: media.chapters.toString().checkIfNull(),
            ),
            tenHeightSizedBox,
            InfoTile(
              title: 'Volumes',
              data: media.volumes.toString().checkIfNull(),
            ),
          ],
          tenHeightSizedBox,
          InfoTile(
            title: 'Source',
            data: toJson$Enum$MediaSource(
              media.source ?? Enum$MediaSource.$unknown,
            ).toString().capitalize(),
          ),
          tenHeightSizedBox,
          InfoTile(
            title: 'Status',
            data: toJson$Enum$MediaStatus(
              media.status ?? Enum$MediaStatus.$unknown,
            ).toString().capitalize(),
          ),
          tenHeightSizedBox,
          InfoTile(
            title: 'Start Date',
            data: media.startDate == null
                ? StringConstants.nullStringConstant
                : media.startDate!.toDateString(),
          ),
          tenHeightSizedBox,
          InfoTile(
            title: 'End Date',
            data: media.endDate != null
                ? media.endDate!.toDateString()
                : StringConstants.nullStringConstant,
          ),
          if (media.type == Enum$MediaType.ANIME) ...[
            tenHeightSizedBox,
            InfoTile(
              title: 'Season',
              data: "${toJson$Enum$MediaSeason(
                media.season ?? Enum$MediaSeason.$unknown,
              ).capitalize()} ${media.seasonYear.toString() == 'null' ? '' : media.seasonYear.toString()}",
            ),
            tenHeightSizedBox,
            if (media.studios?.edges != null) ...[
              Container(
                color: AppColors.white.withOpacity(0.5),
                height: 1,
              ),
              tenHeightSizedBox,
              InfoTile(
                title: "Studios",
                data: getStudios(media.studios!.edges!).isEmpty
                    ? StringConstants.nullStringConstant
                    : getStudios(media.studios!.edges!),
              ),
              tenHeightSizedBox,
              InfoTile(
                title: 'Producers',
                data: getProducers(media.studios!.edges!).isEmpty
                    ? StringConstants.nullStringConstant
                    : getProducers(media.studios!.edges!),
              ),
            ]
          ],
        ],
      ),
    );
  }

  String getStudios(List<Fragment$MediaDetailed$studios$edges?>? edges) {
    String studios = "";

    if (edges == null) {
      return studios;
    }

    for (Fragment$MediaDetailed$studios$edges? edge in edges) {
      if (edge != null && edge.isMain) {
        studios += "$studios${edge.node!.name}";
      }
    }
    return studios;
  }

  String getProducers(List<Fragment$MediaDetailed$studios$edges?>? edges) {
    String producers = "";
    if (edges == null) {
      return producers;
    }
    for (Fragment$MediaDetailed$studios$edges? edge in edges) {
      if (edge != null && !edge.isMain) {
        producers = "$producers${edge.node!.name}\n";
      }
    }
    return producers;
  }
}
