import 'package:otaku_world/graphql/__generated/graphql/schema.graphql.dart';

class SettingsConstants {
  static const titleLanguages = [
    'Romaji (Kimetsu no Yaiba)',
    'English (Demon Slayer)',
    'Native (鬼滅の刃)',
  ];

  static const staffLanguages = [
    'Romaji, Western Order (Tite Kubo)',
    'Romaji (Kubo Tite)',
    'Native (久保帯人)',
  ];

  static const activityMergeTimes = [
    'Never',
    '30 Minutes',
    '1 Hour',
    '2 Hours',
    '3 Hours',
    '6 Hours',
    '12 Hours',
    '1 Day',
    '2 Days',
    '3 Days',
    '1 Week',
    '2 Weeks',
    'Always',
  ];

  static const scoringSystems = [
    '100 Point (55/100)',
    '10 Point Decimal (5.5/10)',
    '10 Point (5/10)',
    '5 Star (3/5)',
    '3 Point Smiley :)',
  ];

  static const listOrders = [
    'Score',
    'Title',
    'Last Updated',
    'Last Added',
  ];

  static String getListOrder(String order) {
    switch(order) {
      case 'Score':
        return 'score';
      case 'Title':
        return 'title';
      case 'Last Updated':
        return 'updatedAt';
      case 'Last Added':
        return 'id';
      default:
        return 'score';
    }
  }

  static String getListOrderString(String order) {
    switch(order) {
      case 'score':
        return 'Score';
      case 'title':
        return 'Title';
      case 'updatedAt':
        return 'Last Updated';
      case 'id':
        return 'Last Added';
      default:
        return 'Score';
    }
  }

  static Enum$ScoreFormat getScoringSystem(String system) {
    switch(system) {
      case '100 Point (55/100)':
        return Enum$ScoreFormat.POINT_100;
      case '10 Point Decimal (5.5/10)':
        return Enum$ScoreFormat.POINT_10_DECIMAL;
      case '10 Point (5/10)':
        return Enum$ScoreFormat.POINT_10;
      case '5 Star (3/5)':
        return Enum$ScoreFormat.POINT_5;
      case '3 Point Smiley :)':
        return Enum$ScoreFormat.POINT_3;
      default:
        return Enum$ScoreFormat.POINT_10;
    }
  }

  static String getScoringSystemString(Enum$ScoreFormat format) {
    switch(format) {
      case Enum$ScoreFormat.POINT_100:
        return scoringSystems[0];
      case Enum$ScoreFormat.POINT_10_DECIMAL:
        return scoringSystems[1];
      case Enum$ScoreFormat.POINT_10:
        return scoringSystems[2];
      case Enum$ScoreFormat.POINT_5:
        return scoringSystems[3];
      case Enum$ScoreFormat.POINT_3:
        return scoringSystems[4];
      default:
        return scoringSystems[2];
    }
  }

  static int getMinutesFromMergeTime(String time) {
    switch(time) {
      case 'Never':
        return 0;
      case '30 Minutes':
        return const Duration(minutes: 30).inMinutes;
      case '1 Hour':
        return const Duration(hours: 1).inMinutes;
      case '2 Hours':
        return const Duration(hours: 2).inMinutes;
      case '3 Hours':
        return const Duration(hours: 3).inMinutes;
      case '6 Hours':
        return const Duration(hours: 6).inMinutes;
      case '12 Hours':
        return const Duration(hours: 12).inMinutes;
      case '1 Day':
        return const Duration(days: 1).inMinutes;
      case '2 Days':
        return const Duration(days: 2).inMinutes;
      case '3 Days':
        return const Duration(days: 3).inMinutes;
      case '1 Week':
        return const Duration(days: 1 * 7).inMinutes;
      case '2 Weeks':
        return const Duration(days: 2 * 7).inMinutes;
      case 'Always':
        return 29160;
      default:
        return 0;
    }
  }

  static String getTitleLanguageString(Enum$UserTitleLanguage language) {
    switch (language) {
      case Enum$UserTitleLanguage.ROMAJI:
        return titleLanguages[0];
      case Enum$UserTitleLanguage.ENGLISH:
        return titleLanguages[1];
      case Enum$UserTitleLanguage.NATIVE:
        return titleLanguages[2];
      default:
        return titleLanguages[1];
    }
  }

  static Enum$UserTitleLanguage getTitleLanguage(String language) {
    switch (language) {
      case 'Romaji (Kimetsu no Yaiba)':
        return Enum$UserTitleLanguage.ROMAJI;
      case 'English (Demon Slayer)':
        return Enum$UserTitleLanguage.ENGLISH;
      case 'Native (鬼滅の刃)':
        return Enum$UserTitleLanguage.NATIVE;
      default:
        return Enum$UserTitleLanguage.ENGLISH;
    }
  }

  static String getStaffLanguageString(Enum$UserStaffNameLanguage language) {
    switch (language) {
      case Enum$UserStaffNameLanguage.ROMAJI_WESTERN:
        return staffLanguages[0];
      case Enum$UserStaffNameLanguage.ROMAJI:
        return staffLanguages[1];
      case Enum$UserStaffNameLanguage.NATIVE:
        return staffLanguages[2];
      default:
        return staffLanguages[0];
    }
  }

  static Enum$UserStaffNameLanguage getStaffLanguage(String language) {
    switch (language) {
      case 'Romaji, Western Order (Tite Kubo)':
        return Enum$UserStaffNameLanguage.ROMAJI_WESTERN;
      case 'Romaji (Kubo Tite)':
        return Enum$UserStaffNameLanguage.ROMAJI;
      case 'Native (久保帯人)':
        return Enum$UserStaffNameLanguage.NATIVE;
      default:
        return Enum$UserStaffNameLanguage.ROMAJI_WESTERN;
    }
  }
}
