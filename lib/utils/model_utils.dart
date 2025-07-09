import 'package:otaku_world/graphql/__generated/graphql/fragments.graphql.dart';

class ModelUtils {
  static Fragment$MediaShort? getMediaShort(
    Fragment$MediaShort? media, {
    bool removeListEntry = false,
  }) {
    return media == null
        ? null
        : Fragment$MediaShort(
            id: media.id,
            title: media.title,
            coverImage: media.coverImage,
            type: media.type,
            format: media.format,
            status: media.status,
            startDate: media.startDate,
            endDate: media.endDate,
            season: media.season,
            seasonYear: media.seasonYear,
            episodes: media.episodes,
            chapters: media.chapters,
            volumes: media.volumes,
            countryOfOrigin: media.countryOfOrigin,
            averageScore: media.averageScore,
            popularity: media.popularity,
            airingSchedule: media.airingSchedule,
            favourites: media.favourites,
            genres: media.genres,
            meanScore: media.meanScore,
            mediaListEntry: removeListEntry ? null : media.mediaListEntry,
          );
  }
}
