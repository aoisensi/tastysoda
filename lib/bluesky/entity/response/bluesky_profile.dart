import 'package:freezed_annotation/freezed_annotation.dart';

part 'bluesky_profile.freezed.dart';
part 'bluesky_profile.g.dart';

@freezed
abstract class BlueskyProfile with _$BlueskyProfile {
  const factory BlueskyProfile({
    required String did,
    required String handle,
    required String? displayName,
    required String? description,
    required String? avatar,
    required String? createdAt,
  }) = _BlueskyProfile;

  factory BlueskyProfile.fromJson(Map<String, dynamic> json) =>
      _$BlueskyProfileFromJson(json);
}
