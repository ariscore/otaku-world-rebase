import 'dart:ui';

import 'package:intl/intl.dart';
import 'package:otaku_world/constants/string_constants.dart';
import 'package:otaku_world/graphql/__generated/graphql/schema.graphql.dart';

import '../graphql/__generated/graphql/fragments.graphql.dart';
import '../theme/colors.dart';

extension StringExtension on String {
  String toCapitalized() =>
      length > 0 ? '${this[0].toUpperCase()}${substring(1)}' : '';

  String capitalize() {
    return replaceAll('_', " ")
        .replaceAll('\$', '')
        .split(' ')
        .map(
          (element) => toBeginningOfSentenceCase(element.toLowerCase()),
        )
        .join(' ');
  }

  String checkIfNull() {
    return this == 'null' ? StringConstants.nullStringConstant : this;
  }

  String? checkIfEmpty() {
    final currentString = trim();
    return currentString.isEmpty ? null : currentString;
  }

  String checkIfNullReturnsEmpty() {
    return this == 'null' ? "" : this;
  }

  String toTitleCase() =>
      split(' ').map((str) => str.toCapitalized()).join(' ');
}

extension FuzzyToDate on Fragment$FuzzyDate {
  DateTime? toDate() {
    if (year == null) return null;

    return DateTime(year!, month ?? 1, day ?? 1);
  }

  String toDateString() {
    if (day == null && month == null && year == null) {
      return StringConstants.nullStringConstant;
    }
    if (day == null || month == null || year == null) {
      return StringConstants.nullStringConstant;
    }

    DateTime dateTime = DateTime(year!, month!, day!);
    String formattedDate = DateFormat('dd MMM yyyy').format(dateTime);

    return formattedDate;
  }
}

extension MediaFormatExtension on Enum$MediaFormat {
  Color get toColor {
    switch (this) {
      case Enum$MediaFormat.TV:
        return AppColors.toolBox;
      case Enum$MediaFormat.TV_SHORT:
        return AppColors.americanGreen;
      case Enum$MediaFormat.MOVIE:
        return AppColors.pantonePink;
      case Enum$MediaFormat.SPECIAL:
        return AppColors.deepLemon;
      case Enum$MediaFormat.OVA:
        return AppColors.quickSilver;
      case Enum$MediaFormat.ONA:
        return AppColors.mangoTango;
      case Enum$MediaFormat.MANGA:
        return AppColors.toolBox;
      case Enum$MediaFormat.NOVEL:
        return AppColors.americanGreen;
      case Enum$MediaFormat.MUSIC:
        return AppColors.darkMagenta;
      case Enum$MediaFormat.ONE_SHOT:
        return AppColors.pantonePink;
      default:
        return AppColors.white;
    }
  }
}

extension MediaStatsExtension on Enum$MediaListStatus {
  String displayTitle(Enum$MediaType type) {
    switch (this) {
      case Enum$MediaListStatus.CURRENT:
        return (type == Enum$MediaType.MANGA) ? 'Reading' : 'Watching';
      case Enum$MediaListStatus.COMPLETED:
        return 'Completed';
      case Enum$MediaListStatus.REPEATING:
        return type == Enum$MediaType.MANGA ? 'Re-reading' : 'Re-watching';
      case Enum$MediaListStatus.PAUSED:
        return 'On Hold';
      case Enum$MediaListStatus.PLANNING:
        return type == Enum$MediaType.MANGA ? 'Plan to read ' : 'Plan to Watch';
      case Enum$MediaListStatus.DROPPED:
        return 'Dropped';
      default:
        return 'Unknown';
    }
  }

  Color get toColor {
    switch (this) {
      case Enum$MediaListStatus.CURRENT:
        return AppColors.toolBox;
      case Enum$MediaListStatus.COMPLETED:
        return AppColors.americanGreen;
      case Enum$MediaListStatus.REPEATING:
        return AppColors.pantonePink;
      case Enum$MediaListStatus.PAUSED:
        return AppColors.deepLemon;
      case Enum$MediaListStatus.PLANNING:
        return AppColors.quickSilver;
      case Enum$MediaListStatus.DROPPED:
        return AppColors.mangoTango;
      default:
        return AppColors.white;
    }
  }
}

extension ReviewSort on Enum$ReviewSort {
  String displayTitle() {
    switch (this) {
      case Enum$ReviewSort.CREATED_AT:
        return "Oldest";
      case Enum$ReviewSort.CREATED_AT_DESC:
        return "Newest";
      case Enum$ReviewSort.ID:
        return "Id";
      case Enum$ReviewSort.ID_DESC:
        return "Id Descending";
      case Enum$ReviewSort.RATING:
        return "Few Upvote";
      case Enum$ReviewSort.RATING_DESC:
        return "Most Upvote";
      case Enum$ReviewSort.SCORE:
        return "Lowest Rating";
      case Enum$ReviewSort.SCORE_DESC:
        return "Highest Rating";
      case Enum$ReviewSort.UPDATED_AT:
        return "Modified";
      case Enum$ReviewSort.UPDATED_AT_DESC:
        return "Latest Modified";
      case Enum$ReviewSort.$unknown:
      default:
        return "Unknown";
    }
  }
}

extension MediaType on Enum$MediaType {
  String displayTitle() {
    switch (this) {
      case Enum$MediaType.ANIME:
        return 'Anime';
      case Enum$MediaType.MANGA:
        return 'Manga';
      case Enum$MediaType.$unknown:
      default:
        return 'Unknown';
    }
  }
}
