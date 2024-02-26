import 'dart:async';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tastysoda/src/provider/bluesky/bluesky.dart';
import 'package:tastysoda/src/provider/bluesky/bluesky_post.dart';

final blueskyTimelineProvider =
    NotifierProvider<BlueskyTimelineNotifier, List<String>>(
  BlueskyTimelineNotifier.new,
  dependencies: [blueskyProvider, blueskyCurrentDidProvider],
);

class BlueskyTimelineNotifier extends Notifier<List<String>> {
  @override
  List<String> build() {
    return [];
  }

  Future<void> fetch() async {
    final bluesky = await ref.watch(blueskyProvider.future);
    if (bluesky == null) return;
    final timeline = (await bluesky.feed.getTimeline()).data;
    state = timeline.feed.map((v) {
      ref.read(blueskyPostFamilyProvider(v.post.cid).notifier).putPost(v.post);
      return v.post.cid;
    }).toList();
  }
}
