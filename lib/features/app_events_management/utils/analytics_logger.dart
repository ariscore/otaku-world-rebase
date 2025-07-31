import '../services/analytic_service.dart';

class AnalyticsLogger {
  static final AnalyticsService _service = AnalyticsService();

  static Future<void> init() => _service.init();

  static Future<void> setUser({
    required String userId,
    String? username,
  }) async {
    return _service.setUser(userId: userId, username: username);
  }

  static Future<void> clearUser() => _service.clearUser();

  static Future<void> log(
    String eventName, {
    Map<String, Object>? params,
  }) async {
    return _service.logEvent(
      eventName,
      params: params,
    );
  }

  static Future<void>  logScreenView({
    required String screenName,
    String? screenClass,
  }) async {
    await _service.logScreenView(
      screenName: screenName,
      screenClass: screenClass,
    );
  }
}
