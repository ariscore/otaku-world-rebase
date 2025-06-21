import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:otaku_world/features/app_version_management/firebase_keys.dart';

class AppVersionModel {
  final String versionName;
  final String releaseNotes;
  final bool forceUpdate;
  final DateTime createdAt;

  AppVersionModel({
    required this.versionName,
    required this.releaseNotes,
    required this.forceUpdate,
    required this.createdAt,
  });

  Map<String, dynamic> toMap() {
    return {
      VersionManagementFirebaseKeys.keyVersionName: versionName,
      VersionManagementFirebaseKeys.keyReleaseNotes: releaseNotes,
      VersionManagementFirebaseKeys.keyForceUpdate: forceUpdate,
      VersionManagementFirebaseKeys.keyCreatedAt: createdAt,
    };
  }

  factory AppVersionModel.fromMap(Map<String, dynamic> map) {
    return AppVersionModel(
      versionName: map[VersionManagementFirebaseKeys.keyVersionName] as String,
      releaseNotes:
          map[VersionManagementFirebaseKeys.keyReleaseNotes] as String,
      forceUpdate: map[VersionManagementFirebaseKeys.keyForceUpdate] as bool,
      createdAt: (map[VersionManagementFirebaseKeys.keyCreatedAt] as Timestamp)
          .toDate(),
    );
  }
}
