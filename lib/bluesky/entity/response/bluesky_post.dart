import 'package:freezed_annotation/freezed_annotation.dart';

part 'bluesky_post.freezed.dart';

@Freezed(toJson: false, fromJson: false)
abstract class BlueskyPost with _$BlueskyPost {
  const factory BlueskyPost({
    required String uri,
    required String authorDid,
    required String text,
    required DateTime createdAt,
    required int likeCount,
    required int quoteCount,
    required int replyCount,
    required int repostCount,
    required DateTime indexedAt,
  }) = _BlueskyPost;

  factory BlueskyPost.fromJson(Map<String, dynamic> json) {
    final author = json['author'] as Map<String, dynamic>;
    final record = json['record'] as Map<String, dynamic>;
    return BlueskyPost(
      uri: json['uri'] as String,
      authorDid: author['did'] as String,
      text: record['text'] as String,
      createdAt: DateTime.parse(json['record']['createdAt'] as String),
      likeCount: json['likeCount'] as int,
      quoteCount: json['quoteCount'] as int,
      replyCount: json['replyCount'] as int,
      repostCount: json['repostCount'] as int,
      indexedAt: DateTime.parse(json['indexedAt'] as String),
    );
  }
}
