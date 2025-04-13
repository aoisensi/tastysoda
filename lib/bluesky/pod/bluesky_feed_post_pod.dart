import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../entity/response/bluesky_post.dart';

final blueskyFeedPostPod = AsyncNotifierProvider.autoDispose
    .family<BlueskyFeedPostNotifier, BlueskyPost, String>(
      BlueskyFeedPostNotifier.new,
    );

class BlueskyFeedPostNotifier
    extends AutoDisposeFamilyAsyncNotifier<BlueskyPost, String> {
  @override
  FutureOr<BlueskyPost> build(String arg) async {
    final post = ref.watch(_blueskyFeedPostCachePod(arg));
    if (post != null) {
      return post;
    }
    return future;
  }

  static String cache(Ref ref, Map<String, dynamic> json) {
    final post = BlueskyPost.fromJson(json);
    ref.read(_blueskyFeedPostCachePod(post.uri).notifier).state = post;
    return post.uri;
  }

  static void cacheAll(Ref ref, List<dynamic> jsons) {
    for (final json in jsons) {
      final post = BlueskyPost.fromJson(json);
      ref.read(_blueskyFeedPostCachePod(post.uri).notifier).state = post;
    }
  }
}

final _blueskyFeedPostCachePod = StateProvider.family<BlueskyPost?, String>(
  (ref, arg) => null,
);
