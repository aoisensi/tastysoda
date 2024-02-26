import 'package:bluesky/bluesky.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tastysoda/src/provider/bluesky/bluesky_actor.dart';

part 'bluesky_post.freezed.dart';

final blueskyPostFamilyProvider = NotifierProvider.autoDispose
    .family<BlueskyPostNotifier, AsyncValue<BlueskyPost>, String>(
  BlueskyPostNotifier.new,
);

class BlueskyPostNotifier
    extends AutoDisposeFamilyNotifier<AsyncValue<BlueskyPost>, String> {
  @override
  AsyncValue<BlueskyPost> build(String arg) {
    return const AsyncLoading();
  }

  void putPost(Post post) {
    state = AsyncData(BlueskyPost.fromPost(post));
    ref
        .read(blueskyActorFamilyProvider(post.author.did).notifier)
        .putActorBasic(post.author);
    ref.keepAlive();
  }
}

@freezed
class BlueskyPost with _$BlueskyPost {
  const factory BlueskyPost({
    required String cid,
    required String authorDid,
    required String text,
  }) = _BlueskyPost;

  factory BlueskyPost.fromPost(Post post) => BlueskyPost(
        cid: post.cid,
        authorDid: post.author.did,
        text: post.record.text,
      );
}
