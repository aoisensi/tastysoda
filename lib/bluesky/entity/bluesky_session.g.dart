// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bluesky_session.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BlueskySession _$BlueskySessionFromJson(Map<String, dynamic> json) =>
    _BlueskySession(
      handle: json['handle'] as String,
      did: json['did'] as String,
      accessJwt: json['accessJwt'] as String,
      refreshJwt: json['refreshJwt'] as String,
    );

Map<String, dynamic> _$BlueskySessionToJson(_BlueskySession instance) =>
    <String, dynamic>{
      'handle': instance.handle,
      'did': instance.did,
      'accessJwt': instance.accessJwt,
      'refreshJwt': instance.refreshJwt,
    };
