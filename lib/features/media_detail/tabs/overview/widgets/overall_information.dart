import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:otaku_world/bloc/media_detail/media_detail_bloc.dart';
import 'package:otaku_world/constants/string_constants.dart';
import 'package:otaku_world/core/ui/shimmers/detail_screens/shimmer_details.dart';
import 'package:otaku_world/features/media_detail/tabs/overview/widgets/info_tile.dart';
import 'package:otaku_world/graphql/__generated/graphql/fragments.graphql.dart';
import 'package:otaku_world/graphql/__generated/graphql/schema.graphql.dart';
import 'package:otaku_world/utils/extensions.dart';
import 'package:otaku_world/utils/formatting_utils.dart';

class OverallInfo extends StatelessWidget {
  const OverallInfo({super.key});

  @override
  Widget build(BuildContext context) {
    final media =
        (BlocProvider.of<MediaDetailBloc>(context).state as MediaDetailLoaded)
            .media;
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: UIUtils.getContainerDecoration(),
      child: Column(
        spacing: 10,
        children: [
          InfoTile(
            title: "Romaji",
            data: media.title!.romaji.toString().checkIfNull(),
          ),
          InfoTile(
            title: "English",
            data: media.title!.english.toString().checkIfNull(),
          ),
          InfoTile(
            title: "Native",
            data: media.title!.native.toString().checkIfNull(),
          ),
          InfoTile(
            title: 'Synonyms',
            data: media.synonyms!.isEmpty
                ? StringConstants.nullStringConstant
                : media.synonyms!.join("\n"),
          ),
          Container(
            color: AppColors.white.withValues(alpha: 0.5),
            height: 1,
          ),
          InfoTile(
              title: 'Format',
              data: FormattingUtils.getMediaFormatString(
                  media.format ?? Enum$MediaFormat.$unknown)),
          if (media.type == Enum$MediaType.ANIME) ...[
            InfoTile(
              title: 'Episodes',
              data: media.episodes.toString().checkIfNull(),
            ),
            InfoTile(
              title: 'Episodes Duration',
              data: media.duration.toString() == "null"
                  ? StringConstants.nullStringConstant
                  : "${media.duration} mins",
            ),
          ],
          if (media.type == Enum$MediaType.MANGA) ...[
            InfoTile(
              title: 'Chapters',
              data: media.chapters.toString().checkIfNull(),
            ),
            InfoTile(
              title: 'Volumes',
              data: media.volumes.toString().checkIfNull(),
            ),
          ],
          InfoTile(
            title: 'Source',
            data: FormattingUtils.getMediaSourceString(
              media.source ?? Enum$MediaSource.$unknown,
            ),
          ),
          InfoTile(
            title: 'Status',
            data: FormattingUtils.getMediaStatusString(
              media.status ?? Enum$MediaStatus.$unknown,
            ),
          ),
          InfoTile(
            title: 'Start Date',
            data: media.startDate == null
                ? StringConstants.nullStringConstant
                : media.startDate!.toDateString(),
          ),
          InfoTile(
            title: 'End Date',
            data: media.endDate != null
                ? media.endDate!.toDateString()
                : StringConstants.nullStringConstant,
          ),
          if (media.type == Enum$MediaType.ANIME) ...[
            InfoTile(
              title: 'Season',
              data: "${FormattingUtils.getSeasonString(
                media.season ?? Enum$MediaSeason.$unknown,
              )} ${media.seasonYear.toString() == 'null' ? '' : media.seasonYear.toString()}",
            ),
            if (media.studios?.edges != null) ...[
              Container(
                color: AppColors.white.withValues(alpha: 0.5),
                height: 1,
              ),
              InfoTile(
                title: "Studios",
                data: getStudios(media.studios!.edges!).isEmpty
                    ? StringConstants.nullStringConstant
                    : getStudios(media.studios!.edges!),
              ),
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
