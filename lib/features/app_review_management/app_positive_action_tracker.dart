import 'package:otaku_world/features/app_review_management/app_review_manager.dart';

import '../../utils/shared_preference_utils.dart';

class PositiveActionTracker {
  static const int _actionsThreshold = 10;

  static Future<void> trackPositiveAction() async {
    final int count = SharedPreferenceUtils.getPositiveActionsCount();
    SharedPreferenceUtils.setPositiveActionsCount(count + 1);
    if (count + 1 >= _actionsThreshold) {
      await AppReviewManager.requestReviewIfAppropriate();
    }
  }
}
