class StringConstants {
  static const String nullStringConstant = ' - - ';

  static const socialHeading = 'Connect, Share, and \nDiscover';
  static const socialSubheading =
      'Stay Updated with Global Anime Activities and'
      ' \nInteractions';

  static const noInternetError = 'Please check your internet connection!';
  static const somethingWentWrongError = 'Something went wrong!';
  static const validationError = 'Please enter valid text!';
  static const statsNotAvailable = 'Statistics not available!';
  static const messageConfirmation = 'Are you sure you want to send this message?';
}

class LoginConstants {
  static const String loginToAniListHeading = 'Login to Your AniList Account';
  static const String loginToAniListSubHeading =
      "You’ll be redirected to AniList website for login/register. Make sure that url is anilist.co before entering your email and password.";
  static const String registerText =
      'New here? Register on the AniList website and then log in to our app using your new account!';
}

class OnBoardingConstants {
  static const String page1Heading =
      'Explore a World of Anime and Manga Delights!';
  static const String page1Subheading =
      'Browse through an extensive collection of anime series, manga titles, characters, staff members, and studios.';

  static const String page2Heading =
      'Keep Track of Your Anime and Manga Watchlist!';
  static const String page2Subheading =
      "Add the anime series and manga titles you're currently watching, plan to watch, or want to revisit.";

  static const String page3Heading = 'Your Personal Anime and Manga Profile';
  static const String page3Subheading =
      'Access a wealth of information, stats, and customization options to express your unique preferences and fandom.';

  static const String page4Heading =
      'Connect with Anime & Manga Enthusiasts Worldwide!';
  static const String page4Subheading =
      'Stay up-to-date with the latest activities and updates from your friends, followers and global users';
}

class CategorySelectionConstants {
  static const String chooseInterest =
      "Choose your interest and get the best anime recommendations. Don't worry, you can always change it later.";

  static const String leastSelection = '(Choose at least 3)';
}

class HomeConstants {
  static const String discover = 'Discover what interests you...';

  static const String reviewsHeading = 'Reviews';
  static const String reviewsSubheading =
      'Discover what fans are saying, Get insights from fellow anime lovers and Share your thoughts and reviews';

  static const String calendarHeading = 'Calendar';
  static const String calendarSubheading =
      'Stay updated with upcoming episodes and plan your anime viewing schedule';
}

class CalendarConstants {
  static const dayNames = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'];

  static const months = [
    'Jan',
    'Feb',
    'Mar',
    'Apr',
    'May',
    'Jun',
    'Jul',
    'Aug',
    'Sep',
    'Oct',
    'Nov',
    'Dec',
  ];
}

class DiscoverConstants {
  static const animeDiscoverHeading = 'Uncover the wonders of \nAnime';
  static const animeDiscoverSubheading =
      'Explore a Universe of Endless Possibilities, '
      'Unveiling Hidden Gems and Beloved Classics';

  static const mangaDiscoverHeading = 'Unravel the World of \nManga';
  static const mangaDiscoverSubheading = 'Dive into a Universe of Captivating'
      'Narratives and Artistry';
}

class ActivityConstants {
  static const notFound = 'Oops! It looks like this activity is no longer available. It may have been removed or deleted.';
  static const clientError = 'Something went wrong, Please restart the app!';
  static const somethingWrong = 'Something went wrong!';

  static String subscriptionSuccess(bool subscribed) {
    return '${subscribed ? 'Subscribed' : 'Unsubscribed'} the activity!';
  }

  static const alreadyInProgress = 'Action already in progress. Please wait!';
}

class UiConstants {
  static const noImageUrl = '';
  static const noName = '';
}
