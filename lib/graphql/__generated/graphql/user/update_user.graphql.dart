// GENERATED FILE
// DO NOT MODIFY
// ignore_for_file: type=lint
import '../fragments.graphql.dart';
import '../schema.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Mutation$UpdateUser {
  factory Variables$Mutation$UpdateUser({
    String? about,
    Enum$UserTitleLanguage? titleLanguage,
    Enum$UserStaffNameLanguage? staffNameLanguage,
    bool? airingNotifications,
    bool? displayAdultContent,
    Enum$ScoreFormat? scoreFormat,
    String? rowOrder,
    String? profileColor,
    String? donatorBadge,
    List<Input$NotificationOptionInput?>? notificationOptions,
    Input$MediaListOptionsInput? animeListOptions,
    Input$MediaListOptionsInput? mangaListOptions,
    String? timezone,
    int? activityMergeTime,
    bool? restrictMessagesToFollowing,
    List<Input$ListActivityOptionInput?>? disabledListActivity,
  }) =>
      Variables$Mutation$UpdateUser._({
        if (about != null) r'about': about,
        if (titleLanguage != null) r'titleLanguage': titleLanguage,
        if (staffNameLanguage != null) r'staffNameLanguage': staffNameLanguage,
        if (airingNotifications != null)
          r'airingNotifications': airingNotifications,
        if (displayAdultContent != null)
          r'displayAdultContent': displayAdultContent,
        if (scoreFormat != null) r'scoreFormat': scoreFormat,
        if (rowOrder != null) r'rowOrder': rowOrder,
        if (profileColor != null) r'profileColor': profileColor,
        if (donatorBadge != null) r'donatorBadge': donatorBadge,
        if (notificationOptions != null)
          r'notificationOptions': notificationOptions,
        if (animeListOptions != null) r'animeListOptions': animeListOptions,
        if (mangaListOptions != null) r'mangaListOptions': mangaListOptions,
        if (timezone != null) r'timezone': timezone,
        if (activityMergeTime != null) r'activityMergeTime': activityMergeTime,
        if (restrictMessagesToFollowing != null)
          r'restrictMessagesToFollowing': restrictMessagesToFollowing,
        if (disabledListActivity != null)
          r'disabledListActivity': disabledListActivity,
      });

  Variables$Mutation$UpdateUser._(this._$data);

  factory Variables$Mutation$UpdateUser.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('about')) {
      final l$about = data['about'];
      result$data['about'] = (l$about as String?);
    }
    if (data.containsKey('titleLanguage')) {
      final l$titleLanguage = data['titleLanguage'];
      result$data['titleLanguage'] = l$titleLanguage == null
          ? null
          : fromJson$Enum$UserTitleLanguage((l$titleLanguage as String));
    }
    if (data.containsKey('staffNameLanguage')) {
      final l$staffNameLanguage = data['staffNameLanguage'];
      result$data['staffNameLanguage'] = l$staffNameLanguage == null
          ? null
          : fromJson$Enum$UserStaffNameLanguage(
              (l$staffNameLanguage as String));
    }
    if (data.containsKey('airingNotifications')) {
      final l$airingNotifications = data['airingNotifications'];
      result$data['airingNotifications'] = (l$airingNotifications as bool?);
    }
    if (data.containsKey('displayAdultContent')) {
      final l$displayAdultContent = data['displayAdultContent'];
      result$data['displayAdultContent'] = (l$displayAdultContent as bool?);
    }
    if (data.containsKey('scoreFormat')) {
      final l$scoreFormat = data['scoreFormat'];
      result$data['scoreFormat'] = l$scoreFormat == null
          ? null
          : fromJson$Enum$ScoreFormat((l$scoreFormat as String));
    }
    if (data.containsKey('rowOrder')) {
      final l$rowOrder = data['rowOrder'];
      result$data['rowOrder'] = (l$rowOrder as String?);
    }
    if (data.containsKey('profileColor')) {
      final l$profileColor = data['profileColor'];
      result$data['profileColor'] = (l$profileColor as String?);
    }
    if (data.containsKey('donatorBadge')) {
      final l$donatorBadge = data['donatorBadge'];
      result$data['donatorBadge'] = (l$donatorBadge as String?);
    }
    if (data.containsKey('notificationOptions')) {
      final l$notificationOptions = data['notificationOptions'];
      result$data['notificationOptions'] =
          (l$notificationOptions as List<dynamic>?)
              ?.map((e) => e == null
                  ? null
                  : Input$NotificationOptionInput.fromJson(
                      (e as Map<String, dynamic>)))
              .toList();
    }
    if (data.containsKey('animeListOptions')) {
      final l$animeListOptions = data['animeListOptions'];
      result$data['animeListOptions'] = l$animeListOptions == null
          ? null
          : Input$MediaListOptionsInput.fromJson(
              (l$animeListOptions as Map<String, dynamic>));
    }
    if (data.containsKey('mangaListOptions')) {
      final l$mangaListOptions = data['mangaListOptions'];
      result$data['mangaListOptions'] = l$mangaListOptions == null
          ? null
          : Input$MediaListOptionsInput.fromJson(
              (l$mangaListOptions as Map<String, dynamic>));
    }
    if (data.containsKey('timezone')) {
      final l$timezone = data['timezone'];
      result$data['timezone'] = (l$timezone as String?);
    }
    if (data.containsKey('activityMergeTime')) {
      final l$activityMergeTime = data['activityMergeTime'];
      result$data['activityMergeTime'] = (l$activityMergeTime as int?);
    }
    if (data.containsKey('restrictMessagesToFollowing')) {
      final l$restrictMessagesToFollowing = data['restrictMessagesToFollowing'];
      result$data['restrictMessagesToFollowing'] =
          (l$restrictMessagesToFollowing as bool?);
    }
    if (data.containsKey('disabledListActivity')) {
      final l$disabledListActivity = data['disabledListActivity'];
      result$data['disabledListActivity'] =
          (l$disabledListActivity as List<dynamic>?)
              ?.map((e) => e == null
                  ? null
                  : Input$ListActivityOptionInput.fromJson(
                      (e as Map<String, dynamic>)))
              .toList();
    }
    return Variables$Mutation$UpdateUser._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get about => (_$data['about'] as String?);

  Enum$UserTitleLanguage? get titleLanguage =>
      (_$data['titleLanguage'] as Enum$UserTitleLanguage?);

  Enum$UserStaffNameLanguage? get staffNameLanguage =>
      (_$data['staffNameLanguage'] as Enum$UserStaffNameLanguage?);

  bool? get airingNotifications => (_$data['airingNotifications'] as bool?);

  bool? get displayAdultContent => (_$data['displayAdultContent'] as bool?);

  Enum$ScoreFormat? get scoreFormat =>
      (_$data['scoreFormat'] as Enum$ScoreFormat?);

  String? get rowOrder => (_$data['rowOrder'] as String?);

  String? get profileColor => (_$data['profileColor'] as String?);

  String? get donatorBadge => (_$data['donatorBadge'] as String?);

  List<Input$NotificationOptionInput?>? get notificationOptions =>
      (_$data['notificationOptions'] as List<Input$NotificationOptionInput?>?);

  Input$MediaListOptionsInput? get animeListOptions =>
      (_$data['animeListOptions'] as Input$MediaListOptionsInput?);

  Input$MediaListOptionsInput? get mangaListOptions =>
      (_$data['mangaListOptions'] as Input$MediaListOptionsInput?);

  String? get timezone => (_$data['timezone'] as String?);

  int? get activityMergeTime => (_$data['activityMergeTime'] as int?);

  bool? get restrictMessagesToFollowing =>
      (_$data['restrictMessagesToFollowing'] as bool?);

  List<Input$ListActivityOptionInput?>? get disabledListActivity =>
      (_$data['disabledListActivity'] as List<Input$ListActivityOptionInput?>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('about')) {
      final l$about = about;
      result$data['about'] = l$about;
    }
    if (_$data.containsKey('titleLanguage')) {
      final l$titleLanguage = titleLanguage;
      result$data['titleLanguage'] = l$titleLanguage == null
          ? null
          : toJson$Enum$UserTitleLanguage(l$titleLanguage);
    }
    if (_$data.containsKey('staffNameLanguage')) {
      final l$staffNameLanguage = staffNameLanguage;
      result$data['staffNameLanguage'] = l$staffNameLanguage == null
          ? null
          : toJson$Enum$UserStaffNameLanguage(l$staffNameLanguage);
    }
    if (_$data.containsKey('airingNotifications')) {
      final l$airingNotifications = airingNotifications;
      result$data['airingNotifications'] = l$airingNotifications;
    }
    if (_$data.containsKey('displayAdultContent')) {
      final l$displayAdultContent = displayAdultContent;
      result$data['displayAdultContent'] = l$displayAdultContent;
    }
    if (_$data.containsKey('scoreFormat')) {
      final l$scoreFormat = scoreFormat;
      result$data['scoreFormat'] =
          l$scoreFormat == null ? null : toJson$Enum$ScoreFormat(l$scoreFormat);
    }
    if (_$data.containsKey('rowOrder')) {
      final l$rowOrder = rowOrder;
      result$data['rowOrder'] = l$rowOrder;
    }
    if (_$data.containsKey('profileColor')) {
      final l$profileColor = profileColor;
      result$data['profileColor'] = l$profileColor;
    }
    if (_$data.containsKey('donatorBadge')) {
      final l$donatorBadge = donatorBadge;
      result$data['donatorBadge'] = l$donatorBadge;
    }
    if (_$data.containsKey('notificationOptions')) {
      final l$notificationOptions = notificationOptions;
      result$data['notificationOptions'] =
          l$notificationOptions?.map((e) => e?.toJson()).toList();
    }
    if (_$data.containsKey('animeListOptions')) {
      final l$animeListOptions = animeListOptions;
      result$data['animeListOptions'] = l$animeListOptions?.toJson();
    }
    if (_$data.containsKey('mangaListOptions')) {
      final l$mangaListOptions = mangaListOptions;
      result$data['mangaListOptions'] = l$mangaListOptions?.toJson();
    }
    if (_$data.containsKey('timezone')) {
      final l$timezone = timezone;
      result$data['timezone'] = l$timezone;
    }
    if (_$data.containsKey('activityMergeTime')) {
      final l$activityMergeTime = activityMergeTime;
      result$data['activityMergeTime'] = l$activityMergeTime;
    }
    if (_$data.containsKey('restrictMessagesToFollowing')) {
      final l$restrictMessagesToFollowing = restrictMessagesToFollowing;
      result$data['restrictMessagesToFollowing'] =
          l$restrictMessagesToFollowing;
    }
    if (_$data.containsKey('disabledListActivity')) {
      final l$disabledListActivity = disabledListActivity;
      result$data['disabledListActivity'] =
          l$disabledListActivity?.map((e) => e?.toJson()).toList();
    }
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateUser<Variables$Mutation$UpdateUser>
      get copyWith => CopyWith$Variables$Mutation$UpdateUser(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$UpdateUser ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$about = about;
    final lOther$about = other.about;
    if (_$data.containsKey('about') != other._$data.containsKey('about')) {
      return false;
    }
    if (l$about != lOther$about) {
      return false;
    }
    final l$titleLanguage = titleLanguage;
    final lOther$titleLanguage = other.titleLanguage;
    if (_$data.containsKey('titleLanguage') !=
        other._$data.containsKey('titleLanguage')) {
      return false;
    }
    if (l$titleLanguage != lOther$titleLanguage) {
      return false;
    }
    final l$staffNameLanguage = staffNameLanguage;
    final lOther$staffNameLanguage = other.staffNameLanguage;
    if (_$data.containsKey('staffNameLanguage') !=
        other._$data.containsKey('staffNameLanguage')) {
      return false;
    }
    if (l$staffNameLanguage != lOther$staffNameLanguage) {
      return false;
    }
    final l$airingNotifications = airingNotifications;
    final lOther$airingNotifications = other.airingNotifications;
    if (_$data.containsKey('airingNotifications') !=
        other._$data.containsKey('airingNotifications')) {
      return false;
    }
    if (l$airingNotifications != lOther$airingNotifications) {
      return false;
    }
    final l$displayAdultContent = displayAdultContent;
    final lOther$displayAdultContent = other.displayAdultContent;
    if (_$data.containsKey('displayAdultContent') !=
        other._$data.containsKey('displayAdultContent')) {
      return false;
    }
    if (l$displayAdultContent != lOther$displayAdultContent) {
      return false;
    }
    final l$scoreFormat = scoreFormat;
    final lOther$scoreFormat = other.scoreFormat;
    if (_$data.containsKey('scoreFormat') !=
        other._$data.containsKey('scoreFormat')) {
      return false;
    }
    if (l$scoreFormat != lOther$scoreFormat) {
      return false;
    }
    final l$rowOrder = rowOrder;
    final lOther$rowOrder = other.rowOrder;
    if (_$data.containsKey('rowOrder') !=
        other._$data.containsKey('rowOrder')) {
      return false;
    }
    if (l$rowOrder != lOther$rowOrder) {
      return false;
    }
    final l$profileColor = profileColor;
    final lOther$profileColor = other.profileColor;
    if (_$data.containsKey('profileColor') !=
        other._$data.containsKey('profileColor')) {
      return false;
    }
    if (l$profileColor != lOther$profileColor) {
      return false;
    }
    final l$donatorBadge = donatorBadge;
    final lOther$donatorBadge = other.donatorBadge;
    if (_$data.containsKey('donatorBadge') !=
        other._$data.containsKey('donatorBadge')) {
      return false;
    }
    if (l$donatorBadge != lOther$donatorBadge) {
      return false;
    }
    final l$notificationOptions = notificationOptions;
    final lOther$notificationOptions = other.notificationOptions;
    if (_$data.containsKey('notificationOptions') !=
        other._$data.containsKey('notificationOptions')) {
      return false;
    }
    if (l$notificationOptions != null && lOther$notificationOptions != null) {
      if (l$notificationOptions.length != lOther$notificationOptions.length) {
        return false;
      }
      for (int i = 0; i < l$notificationOptions.length; i++) {
        final l$notificationOptions$entry = l$notificationOptions[i];
        final lOther$notificationOptions$entry = lOther$notificationOptions[i];
        if (l$notificationOptions$entry != lOther$notificationOptions$entry) {
          return false;
        }
      }
    } else if (l$notificationOptions != lOther$notificationOptions) {
      return false;
    }
    final l$animeListOptions = animeListOptions;
    final lOther$animeListOptions = other.animeListOptions;
    if (_$data.containsKey('animeListOptions') !=
        other._$data.containsKey('animeListOptions')) {
      return false;
    }
    if (l$animeListOptions != lOther$animeListOptions) {
      return false;
    }
    final l$mangaListOptions = mangaListOptions;
    final lOther$mangaListOptions = other.mangaListOptions;
    if (_$data.containsKey('mangaListOptions') !=
        other._$data.containsKey('mangaListOptions')) {
      return false;
    }
    if (l$mangaListOptions != lOther$mangaListOptions) {
      return false;
    }
    final l$timezone = timezone;
    final lOther$timezone = other.timezone;
    if (_$data.containsKey('timezone') !=
        other._$data.containsKey('timezone')) {
      return false;
    }
    if (l$timezone != lOther$timezone) {
      return false;
    }
    final l$activityMergeTime = activityMergeTime;
    final lOther$activityMergeTime = other.activityMergeTime;
    if (_$data.containsKey('activityMergeTime') !=
        other._$data.containsKey('activityMergeTime')) {
      return false;
    }
    if (l$activityMergeTime != lOther$activityMergeTime) {
      return false;
    }
    final l$restrictMessagesToFollowing = restrictMessagesToFollowing;
    final lOther$restrictMessagesToFollowing =
        other.restrictMessagesToFollowing;
    if (_$data.containsKey('restrictMessagesToFollowing') !=
        other._$data.containsKey('restrictMessagesToFollowing')) {
      return false;
    }
    if (l$restrictMessagesToFollowing != lOther$restrictMessagesToFollowing) {
      return false;
    }
    final l$disabledListActivity = disabledListActivity;
    final lOther$disabledListActivity = other.disabledListActivity;
    if (_$data.containsKey('disabledListActivity') !=
        other._$data.containsKey('disabledListActivity')) {
      return false;
    }
    if (l$disabledListActivity != null && lOther$disabledListActivity != null) {
      if (l$disabledListActivity.length != lOther$disabledListActivity.length) {
        return false;
      }
      for (int i = 0; i < l$disabledListActivity.length; i++) {
        final l$disabledListActivity$entry = l$disabledListActivity[i];
        final lOther$disabledListActivity$entry =
            lOther$disabledListActivity[i];
        if (l$disabledListActivity$entry != lOther$disabledListActivity$entry) {
          return false;
        }
      }
    } else if (l$disabledListActivity != lOther$disabledListActivity) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$about = about;
    final l$titleLanguage = titleLanguage;
    final l$staffNameLanguage = staffNameLanguage;
    final l$airingNotifications = airingNotifications;
    final l$displayAdultContent = displayAdultContent;
    final l$scoreFormat = scoreFormat;
    final l$rowOrder = rowOrder;
    final l$profileColor = profileColor;
    final l$donatorBadge = donatorBadge;
    final l$notificationOptions = notificationOptions;
    final l$animeListOptions = animeListOptions;
    final l$mangaListOptions = mangaListOptions;
    final l$timezone = timezone;
    final l$activityMergeTime = activityMergeTime;
    final l$restrictMessagesToFollowing = restrictMessagesToFollowing;
    final l$disabledListActivity = disabledListActivity;
    return Object.hashAll([
      _$data.containsKey('about') ? l$about : const {},
      _$data.containsKey('titleLanguage') ? l$titleLanguage : const {},
      _$data.containsKey('staffNameLanguage') ? l$staffNameLanguage : const {},
      _$data.containsKey('airingNotifications')
          ? l$airingNotifications
          : const {},
      _$data.containsKey('displayAdultContent')
          ? l$displayAdultContent
          : const {},
      _$data.containsKey('scoreFormat') ? l$scoreFormat : const {},
      _$data.containsKey('rowOrder') ? l$rowOrder : const {},
      _$data.containsKey('profileColor') ? l$profileColor : const {},
      _$data.containsKey('donatorBadge') ? l$donatorBadge : const {},
      _$data.containsKey('notificationOptions')
          ? l$notificationOptions == null
              ? null
              : Object.hashAll(l$notificationOptions.map((v) => v))
          : const {},
      _$data.containsKey('animeListOptions') ? l$animeListOptions : const {},
      _$data.containsKey('mangaListOptions') ? l$mangaListOptions : const {},
      _$data.containsKey('timezone') ? l$timezone : const {},
      _$data.containsKey('activityMergeTime') ? l$activityMergeTime : const {},
      _$data.containsKey('restrictMessagesToFollowing')
          ? l$restrictMessagesToFollowing
          : const {},
      _$data.containsKey('disabledListActivity')
          ? l$disabledListActivity == null
              ? null
              : Object.hashAll(l$disabledListActivity.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$UpdateUser<TRes> {
  factory CopyWith$Variables$Mutation$UpdateUser(
    Variables$Mutation$UpdateUser instance,
    TRes Function(Variables$Mutation$UpdateUser) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateUser;

  factory CopyWith$Variables$Mutation$UpdateUser.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateUser;

  TRes call({
    String? about,
    Enum$UserTitleLanguage? titleLanguage,
    Enum$UserStaffNameLanguage? staffNameLanguage,
    bool? airingNotifications,
    bool? displayAdultContent,
    Enum$ScoreFormat? scoreFormat,
    String? rowOrder,
    String? profileColor,
    String? donatorBadge,
    List<Input$NotificationOptionInput?>? notificationOptions,
    Input$MediaListOptionsInput? animeListOptions,
    Input$MediaListOptionsInput? mangaListOptions,
    String? timezone,
    int? activityMergeTime,
    bool? restrictMessagesToFollowing,
    List<Input$ListActivityOptionInput?>? disabledListActivity,
  });
}

class _CopyWithImpl$Variables$Mutation$UpdateUser<TRes>
    implements CopyWith$Variables$Mutation$UpdateUser<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateUser(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdateUser _instance;

  final TRes Function(Variables$Mutation$UpdateUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? about = _undefined,
    Object? titleLanguage = _undefined,
    Object? staffNameLanguage = _undefined,
    Object? airingNotifications = _undefined,
    Object? displayAdultContent = _undefined,
    Object? scoreFormat = _undefined,
    Object? rowOrder = _undefined,
    Object? profileColor = _undefined,
    Object? donatorBadge = _undefined,
    Object? notificationOptions = _undefined,
    Object? animeListOptions = _undefined,
    Object? mangaListOptions = _undefined,
    Object? timezone = _undefined,
    Object? activityMergeTime = _undefined,
    Object? restrictMessagesToFollowing = _undefined,
    Object? disabledListActivity = _undefined,
  }) =>
      _then(Variables$Mutation$UpdateUser._({
        ..._instance._$data,
        if (about != _undefined) 'about': (about as String?),
        if (titleLanguage != _undefined)
          'titleLanguage': (titleLanguage as Enum$UserTitleLanguage?),
        if (staffNameLanguage != _undefined)
          'staffNameLanguage':
              (staffNameLanguage as Enum$UserStaffNameLanguage?),
        if (airingNotifications != _undefined)
          'airingNotifications': (airingNotifications as bool?),
        if (displayAdultContent != _undefined)
          'displayAdultContent': (displayAdultContent as bool?),
        if (scoreFormat != _undefined)
          'scoreFormat': (scoreFormat as Enum$ScoreFormat?),
        if (rowOrder != _undefined) 'rowOrder': (rowOrder as String?),
        if (profileColor != _undefined)
          'profileColor': (profileColor as String?),
        if (donatorBadge != _undefined)
          'donatorBadge': (donatorBadge as String?),
        if (notificationOptions != _undefined)
          'notificationOptions':
              (notificationOptions as List<Input$NotificationOptionInput?>?),
        if (animeListOptions != _undefined)
          'animeListOptions':
              (animeListOptions as Input$MediaListOptionsInput?),
        if (mangaListOptions != _undefined)
          'mangaListOptions':
              (mangaListOptions as Input$MediaListOptionsInput?),
        if (timezone != _undefined) 'timezone': (timezone as String?),
        if (activityMergeTime != _undefined)
          'activityMergeTime': (activityMergeTime as int?),
        if (restrictMessagesToFollowing != _undefined)
          'restrictMessagesToFollowing': (restrictMessagesToFollowing as bool?),
        if (disabledListActivity != _undefined)
          'disabledListActivity':
              (disabledListActivity as List<Input$ListActivityOptionInput?>?),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UpdateUser<TRes>
    implements CopyWith$Variables$Mutation$UpdateUser<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateUser(this._res);

  TRes _res;

  call({
    String? about,
    Enum$UserTitleLanguage? titleLanguage,
    Enum$UserStaffNameLanguage? staffNameLanguage,
    bool? airingNotifications,
    bool? displayAdultContent,
    Enum$ScoreFormat? scoreFormat,
    String? rowOrder,
    String? profileColor,
    String? donatorBadge,
    List<Input$NotificationOptionInput?>? notificationOptions,
    Input$MediaListOptionsInput? animeListOptions,
    Input$MediaListOptionsInput? mangaListOptions,
    String? timezone,
    int? activityMergeTime,
    bool? restrictMessagesToFollowing,
    List<Input$ListActivityOptionInput?>? disabledListActivity,
  }) =>
      _res;
}

class Mutation$UpdateUser {
  Mutation$UpdateUser({
    this.UpdateUser,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UpdateUser.fromJson(Map<String, dynamic> json) {
    final l$UpdateUser = json['UpdateUser'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateUser(
      UpdateUser: l$UpdateUser == null
          ? null
          : Fragment$Settings.fromJson((l$UpdateUser as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$Settings? UpdateUser;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$UpdateUser = UpdateUser;
    _resultData['UpdateUser'] = l$UpdateUser?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$UpdateUser = UpdateUser;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$UpdateUser,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UpdateUser || runtimeType != other.runtimeType) {
      return false;
    }
    final l$UpdateUser = UpdateUser;
    final lOther$UpdateUser = other.UpdateUser;
    if (l$UpdateUser != lOther$UpdateUser) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$UpdateUser on Mutation$UpdateUser {
  CopyWith$Mutation$UpdateUser<Mutation$UpdateUser> get copyWith =>
      CopyWith$Mutation$UpdateUser(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UpdateUser<TRes> {
  factory CopyWith$Mutation$UpdateUser(
    Mutation$UpdateUser instance,
    TRes Function(Mutation$UpdateUser) then,
  ) = _CopyWithImpl$Mutation$UpdateUser;

  factory CopyWith$Mutation$UpdateUser.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateUser;

  TRes call({
    Fragment$Settings? UpdateUser,
    String? $__typename,
  });
  CopyWith$Fragment$Settings<TRes> get UpdateUser;
}

class _CopyWithImpl$Mutation$UpdateUser<TRes>
    implements CopyWith$Mutation$UpdateUser<TRes> {
  _CopyWithImpl$Mutation$UpdateUser(
    this._instance,
    this._then,
  );

  final Mutation$UpdateUser _instance;

  final TRes Function(Mutation$UpdateUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? UpdateUser = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateUser(
        UpdateUser: UpdateUser == _undefined
            ? _instance.UpdateUser
            : (UpdateUser as Fragment$Settings?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$Settings<TRes> get UpdateUser {
    final local$UpdateUser = _instance.UpdateUser;
    return local$UpdateUser == null
        ? CopyWith$Fragment$Settings.stub(_then(_instance))
        : CopyWith$Fragment$Settings(
            local$UpdateUser, (e) => call(UpdateUser: e));
  }
}

class _CopyWithStubImpl$Mutation$UpdateUser<TRes>
    implements CopyWith$Mutation$UpdateUser<TRes> {
  _CopyWithStubImpl$Mutation$UpdateUser(this._res);

  TRes _res;

  call({
    Fragment$Settings? UpdateUser,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$Settings<TRes> get UpdateUser =>
      CopyWith$Fragment$Settings.stub(_res);
}

const documentNodeMutationUpdateUser = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UpdateUser'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'about')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'titleLanguage')),
        type: NamedTypeNode(
          name: NameNode(value: 'UserTitleLanguage'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'staffNameLanguage')),
        type: NamedTypeNode(
          name: NameNode(value: 'UserStaffNameLanguage'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'airingNotifications')),
        type: NamedTypeNode(
          name: NameNode(value: 'Boolean'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'displayAdultContent')),
        type: NamedTypeNode(
          name: NameNode(value: 'Boolean'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'scoreFormat')),
        type: NamedTypeNode(
          name: NameNode(value: 'ScoreFormat'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'rowOrder')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'profileColor')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'donatorBadge')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'notificationOptions')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'NotificationOptionInput'),
            isNonNull: false,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'animeListOptions')),
        type: NamedTypeNode(
          name: NameNode(value: 'MediaListOptionsInput'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'mangaListOptions')),
        type: NamedTypeNode(
          name: NameNode(value: 'MediaListOptionsInput'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'timezone')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'activityMergeTime')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable:
            VariableNode(name: NameNode(value: 'restrictMessagesToFollowing')),
        type: NamedTypeNode(
          name: NameNode(value: 'Boolean'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'disabledListActivity')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'ListActivityOptionInput'),
            isNonNull: false,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'UpdateUser'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'about'),
            value: VariableNode(name: NameNode(value: 'about')),
          ),
          ArgumentNode(
            name: NameNode(value: 'titleLanguage'),
            value: VariableNode(name: NameNode(value: 'titleLanguage')),
          ),
          ArgumentNode(
            name: NameNode(value: 'staffNameLanguage'),
            value: VariableNode(name: NameNode(value: 'staffNameLanguage')),
          ),
          ArgumentNode(
            name: NameNode(value: 'airingNotifications'),
            value: VariableNode(name: NameNode(value: 'airingNotifications')),
          ),
          ArgumentNode(
            name: NameNode(value: 'displayAdultContent'),
            value: VariableNode(name: NameNode(value: 'displayAdultContent')),
          ),
          ArgumentNode(
            name: NameNode(value: 'scoreFormat'),
            value: VariableNode(name: NameNode(value: 'scoreFormat')),
          ),
          ArgumentNode(
            name: NameNode(value: 'rowOrder'),
            value: VariableNode(name: NameNode(value: 'rowOrder')),
          ),
          ArgumentNode(
            name: NameNode(value: 'profileColor'),
            value: VariableNode(name: NameNode(value: 'profileColor')),
          ),
          ArgumentNode(
            name: NameNode(value: 'donatorBadge'),
            value: VariableNode(name: NameNode(value: 'donatorBadge')),
          ),
          ArgumentNode(
            name: NameNode(value: 'notificationOptions'),
            value: VariableNode(name: NameNode(value: 'notificationOptions')),
          ),
          ArgumentNode(
            name: NameNode(value: 'animeListOptions'),
            value: VariableNode(name: NameNode(value: 'animeListOptions')),
          ),
          ArgumentNode(
            name: NameNode(value: 'mangaListOptions'),
            value: VariableNode(name: NameNode(value: 'mangaListOptions')),
          ),
          ArgumentNode(
            name: NameNode(value: 'timezone'),
            value: VariableNode(name: NameNode(value: 'timezone')),
          ),
          ArgumentNode(
            name: NameNode(value: 'activityMergeTime'),
            value: VariableNode(name: NameNode(value: 'activityMergeTime')),
          ),
          ArgumentNode(
            name: NameNode(value: 'restrictMessagesToFollowing'),
            value: VariableNode(
                name: NameNode(value: 'restrictMessagesToFollowing')),
          ),
          ArgumentNode(
            name: NameNode(value: 'disabledListActivity'),
            value: VariableNode(name: NameNode(value: 'disabledListActivity')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'Settings'),
            directives: [],
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
  fragmentDefinitionSettings,
  fragmentDefinitionMediaListOptions,
]);
Mutation$UpdateUser _parserFn$Mutation$UpdateUser(Map<String, dynamic> data) =>
    Mutation$UpdateUser.fromJson(data);
typedef OnMutationCompleted$Mutation$UpdateUser = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$UpdateUser?,
);

class Options$Mutation$UpdateUser
    extends graphql.MutationOptions<Mutation$UpdateUser> {
  Options$Mutation$UpdateUser({
    String? operationName,
    Variables$Mutation$UpdateUser? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateUser? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateUser? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateUser>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null ? null : _parserFn$Mutation$UpdateUser(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateUser,
          parserFn: _parserFn$Mutation$UpdateUser,
        );

  final OnMutationCompleted$Mutation$UpdateUser? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$UpdateUser
    extends graphql.WatchQueryOptions<Mutation$UpdateUser> {
  WatchOptions$Mutation$UpdateUser({
    String? operationName,
    Variables$Mutation$UpdateUser? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateUser? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeMutationUpdateUser,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$UpdateUser,
        );
}

extension ClientExtension$Mutation$UpdateUser on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$UpdateUser>> mutate$UpdateUser(
          [Options$Mutation$UpdateUser? options]) async =>
      await this.mutate(options ?? Options$Mutation$UpdateUser());
  graphql.ObservableQuery<Mutation$UpdateUser> watchMutation$UpdateUser(
          [WatchOptions$Mutation$UpdateUser? options]) =>
      this.watchMutation(options ?? WatchOptions$Mutation$UpdateUser());
}

class Mutation$UpdateUser$HookResult {
  Mutation$UpdateUser$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$UpdateUser runMutation;

  final graphql.QueryResult<Mutation$UpdateUser> result;
}

Mutation$UpdateUser$HookResult useMutation$UpdateUser(
    [WidgetOptions$Mutation$UpdateUser? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$UpdateUser());
  return Mutation$UpdateUser$HookResult(
    ({variables, optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables?.toJson() ?? const {},
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$UpdateUser> useWatchMutation$UpdateUser(
        [WatchOptions$Mutation$UpdateUser? options]) =>
    graphql_flutter
        .useWatchMutation(options ?? WatchOptions$Mutation$UpdateUser());

class WidgetOptions$Mutation$UpdateUser
    extends graphql.MutationOptions<Mutation$UpdateUser> {
  WidgetOptions$Mutation$UpdateUser({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateUser? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateUser? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateUser>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null ? null : _parserFn$Mutation$UpdateUser(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateUser,
          parserFn: _parserFn$Mutation$UpdateUser,
        );

  final OnMutationCompleted$Mutation$UpdateUser? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$UpdateUser
    = graphql.MultiSourceResult<Mutation$UpdateUser> Function({
  Variables$Mutation$UpdateUser? variables,
  Object? optimisticResult,
  Mutation$UpdateUser? typedOptimisticResult,
});
typedef Builder$Mutation$UpdateUser = widgets.Widget Function(
  RunMutation$Mutation$UpdateUser,
  graphql.QueryResult<Mutation$UpdateUser>?,
);

class Mutation$UpdateUser$Widget
    extends graphql_flutter.Mutation<Mutation$UpdateUser> {
  Mutation$UpdateUser$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$UpdateUser? options,
    required Builder$Mutation$UpdateUser builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$UpdateUser(),
          builder: (
            run,
            result,
          ) =>
              builder(
            ({
              variables,
              optimisticResult,
              typedOptimisticResult,
            }) =>
                run(
              variables?.toJson() ?? const {},
              optimisticResult:
                  optimisticResult ?? typedOptimisticResult?.toJson(),
            ),
            result,
          ),
        );
}
