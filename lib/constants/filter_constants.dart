import 'dart:core';

import 'package:otaku_world/graphql/__generated/graphql/schema.graphql.dart';

class FilterConstants {
  static const List<String> mediaSortOptions = [
    'Popularity',
    'Title',
    'Average Score',
    'Trending',
    'Favourites',
    'Date Added',
    'Release Date',
  ];

  static const List<String> seasons = [
    'All',
    'Winter',
    'Spring',
    'Summer',
    'Fall',
  ];

  static const List<String> countries = [
    'All',
    'Japan',
    'South Korea',
    'China',
    'Taiwan',
  ];

  static const double mediaYearMinimum = 1970;
  static double mediaYearMaximum = DateTime.now().year + 1;

  static const double minEpisode = 1;
  static const double maxEpisode = 150;

  static const double minDuration = 1;
  static const double maxDuration = 170;

  static const double minChapters = 1;
  static const double maxChapters = 500;

  static const double minVolumes = 1;
  static const double maxVolumes = 50;

  static const activitiesOptions = [
    'All',
    'Text',
    'Message',
    'List Progress',
  ];

  static const socialOptions = [
    'Following',
    'Followers',
  ];

  static const notificationOptions = [
    'All',
    'Airing',
    'Activity',
    'Follows',
    'Forum',
    'Media',
  ];

  static const releaseYearOptionsAnime = [
    'Titles Watched',
    'Hours Watched',
    'Mean Score',
  ];

  static const releaseYearOptionsManga = [
    'Titles Read',
    'Chapters Read',
    'Mean Score',
  ];

  static const scoreDistOptionsAnime = [
    'Titles Watched',
    'Hours Watched',
  ];

  static const scoreDistOptionsManga = [
    'Titles Read',
    'Chapters Read',
  ];

  static const lengthDistOptionsAnime = [
    'Titles Watched',
    'Hours Watched',
    'Mean Score',
  ];

  static const lengthDistOptionsManga = [
    'Titles Read',
    'Chapters Read',
    'Mean Score',
  ];

  static List<String> genreSortOptions(Enum$MediaType type) {
    return [
      type == Enum$MediaType.ANIME ? 'Titles Watched' : 'Titles Read',
      type == Enum$MediaType.ANIME ? 'Time Watched' : 'Chapters Read',
      'Mean Score',
    ];
  }

  static StatsOption statsOptionFromString(String value) {
    switch(value) {
      case 'Overview':
        return StatsOption.overview;
      case 'Genres':
        return StatsOption.genres;
      case 'Tags':
        return StatsOption.tags;
      case 'Voice Actors':
        return StatsOption.voiceActors;
      case 'Studios':
        return StatsOption.studios;
      case 'Staff':
        return StatsOption.staff;
      default:
        return StatsOption.overview;
    }
  }
}

enum StatsOption {
  overview,
  genres,
  tags,
  voiceActors,
  studios,
  staff,
}

extension StatOptionExtension on StatsOption {
  String get displayName {
    switch (this) {
      case StatsOption.overview:
        return 'Overview';
      case StatsOption.genres:
        return 'Genres';
      case StatsOption.tags:
        return 'Tags';
      case StatsOption.voiceActors:
        return 'Voice Actors';
      case StatsOption.studios:
        return 'Studios';
      case StatsOption.staff:
        return 'Staff';
      default:
        return '';
    }
  }
}

