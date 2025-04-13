import 'dart:async';

import 'package:dart_extensions/dart_extensions.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../entity/response/bluesky_post_reason.dart';
import '../repo/bluesky/bluesky_repo.dart';
import 'bluesky_actor_profile_pod.dart';
import 'bluesky_feed_post_pod.dart';
import 'bluesky_pod.dart';

final blueskyFeedTimelinePod = AsyncNotifierProvider.autoDispose<
  BlueskyFeedTimelineNotifier,
  List<BlueskyPostReason>
>(
  BlueskyFeedTimelineNotifier.new,
  dependencies: [blueskyRepoPod, blueskyDidPod],
);

class BlueskyFeedTimelineNotifier extends BlueskyFeedBaseNotifier {
  @override
  Future<List<BlueskyPostReason>> _fetch(BlueskyRepo bluesky) async {
    final response = await bluesky.feed.getTimeline();
    final json = response['feed'] as List<dynamic>;
    return _parse(json);
  }
}

abstract class BlueskyFeedBaseNotifier
    extends AutoDisposeAsyncNotifier<List<BlueskyPostReason>> {
  @override
  FutureOr<List<BlueskyPostReason>> build() async {
    final bluesky = await ref.watch(blueskyRepoPod.future);
    return _fetch(bluesky);
  }

  Future<List<BlueskyPostReason>> _fetch(BlueskyRepo bluesky);

  List<BlueskyPostReason> _parse(List<dynamic> json) {
    final profiles =
        json
            .map((e) => e['post']['author'])
            .distinctBy((e) => e['did'])
            .toList();
    BlueskyActorProfileNotifier.cacheAll(ref, profiles);
    final posts = json.map((e) => e['post']).toList();
    BlueskyFeedPostNotifier.cacheAll(ref, posts);
    return json.map((e) => BlueskyPostReason.fromJson(e)).toList();
  }
}
