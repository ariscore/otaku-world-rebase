import 'dart:developer';

import 'package:in_app_review/in_app_review.dart';
import 'package:otaku_world/config/app_config.dart';

import '../../utils/shared_preference_utils.dart';

class AppReviewManager {
  static const int _minAppOpensForReview = 10;
  static const int _daysBetweenPrompts = 30;
  static const int _daysBetweenPromptsAfterDismiss = 14;
  static const int _maxPromptAttempts = 3;

  static Future<void> requestReviewIfAppropriate() async {
    log('Current review state: ${getReviewState()}');
    // Check if user permanently declined reviews
    if (SharedPreferenceUtils.getReviewDeclined()) return;

    // Check if we've reached maximum prompt attempts
    final int promptCount = SharedPreferenceUtils.getReviewPromptCount();
    if (promptCount >= _maxPromptAttempts) return;

    // Increment app open count
    final int appOpenCount = SharedPreferenceUtils.getAppOpenCount();
    await SharedPreferenceUtils.setAppOpenCount(appOpenCount + 1);

    // Check if enough app opens have occurred
    if (appOpenCount < _minAppOpensForReview) return;

    // Check if enough time has passed since last prompt
    final int lastPrompt = SharedPreferenceUtils.getLastReviewPrompt();
    if (lastPrompt != 0) {
      final last = DateTime.fromMillisecondsSinceEpoch(lastPrompt);
      final daysSinceLastPrompt = DateTime.now().difference(last).inDays;

      // Use shorter interval if user just dismissed (didn't actively decline)
      final bool reviewRequested = SharedPreferenceUtils.getReviewRequested();
      final int requiredDays = reviewRequested
          ? _daysBetweenPromptsAfterDismiss
          : _daysBetweenPrompts;

      if (daysSinceLastPrompt < requiredDays) return;
    }

    // All conditions met, request review
    await _requestReview();
    await SharedPreferenceUtils.setLastReviewPrompt(
      DateTime.now().millisecondsSinceEpoch,
    );
    await SharedPreferenceUtils.setReviewPromptCount(promptCount + 1);
    await SharedPreferenceUtils.setReviewRequested(true);
  }

  static Future<void> _requestReview() async {
    final InAppReview inAppReview = InAppReview.instance;

    if (await inAppReview.isAvailable()) {
      await inAppReview.requestReview();
    } else {
      // Fallback: Open store listing
      await inAppReview.openStoreListing();
    }
  }

  static Future<void> openStoreListing() async {
    final InAppReview inAppReview = InAppReview.instance;
    await inAppReview.openStoreListing(
      appStoreId: AppConfig.appStoreId,
    );
  }

  static Future<void> markReviewAsCompleted() async {
    await SharedPreferenceUtils.setReviewRequested(true);
    await SharedPreferenceUtils.setReviewDeclined(true);
  }

  static Future<void> markReviewAsDeclined() async {
    await SharedPreferenceUtils.setReviewDeclined(true);
  }

  static Future<void> markReviewAsDismissed() async {
    await SharedPreferenceUtils.setReviewRequested(true);
  }

  static Future<void> resetReviewState() async {
    await SharedPreferenceUtils.clearReviewData();
  }

  // Get current review state for debugging
  static Map<String, dynamic> getReviewState() {
    return {
      'reviewRequested': SharedPreferenceUtils.getReviewRequested(),
      'reviewDeclined': SharedPreferenceUtils.getReviewDeclined(),
      'appOpenCount': SharedPreferenceUtils.getAppOpenCount(),
      'lastReviewPrompt': SharedPreferenceUtils.getLastReviewPrompt(),
      'promptCount': SharedPreferenceUtils.getReviewPromptCount(),
    };
  }
}
