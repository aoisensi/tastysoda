import 'package:freezed_annotation/freezed_annotation.dart';

part 'bluesky_password_credentials.freezed.dart';
part 'bluesky_password_credentials.g.dart';

@freezed
abstract class BlueskyPasswordCredentials with _$BlueskyPasswordCredentials {
  const factory BlueskyPasswordCredentials({
    required String identifier,
    required String password,
  }) = _BlueskyPasswordCredentials;

  factory BlueskyPasswordCredentials.fromJson(Map<String, dynamic> json) =>
      _$BlueskyPasswordCredentialsFromJson(json);
}
