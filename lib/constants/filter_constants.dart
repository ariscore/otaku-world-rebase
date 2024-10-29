import 'dart:core';

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
}