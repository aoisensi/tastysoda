// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bluesky_profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BlueskyProfile _$BlueskyProfileFromJson(Map<String, dynamic> json) =>
    _BlueskyProfile(
      did: json['did'] as String,
      handle: json['handle'] as String,
      displayName: json['displayName'] as String?,
      description: json['description'] as String?,
      avatar: json['avatar'] as String?,
      createdAt: json['createdAt'] as String?,
    );

Map<String, dynamic> _$BlueskyProfileToJson(_BlueskyProfile instance) =>
    <String, dynamic>{
      'did': instance.did,
      'handle': instance.handle,
      'displayName': instance.displayName,
      'description': instance.description,
      'avatar': instance.avatar,
      'createdAt': instance.createdAt,
    };
