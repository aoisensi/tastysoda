import 'package:freezed_annotation/freezed_annotation.dart';

part 'bluesky_session.freezed.dart';
part 'bluesky_session.g.dart';

@freezed
abstract class BlueskySession with _$BlueskySession {
  const factory BlueskySession({
    required String handle,
    required String did,
    required String accessJwt,
    required String refreshJwt,
  }) = _BlueskySession;

  factory BlueskySession.fromJson(Map<String, dynamic> json) =>
      _$BlueskySessionFromJson(json);
}
