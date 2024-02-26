import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tastysoda/src/provider/bluesky/bluesky_timeline.dart';
import 'package:tastysoda/src/widget/home/column/post_card.dart';

import '../../../../provider/bluesky/bluesky_actor.dart';
import '../../../../provider/bluesky/bluesky_post.dart';

class BlueskyTimelineColumn extends ConsumerWidget {
  const BlueskyTimelineColumn({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(blueskyTimelineProvider.notifier).fetch();
    final timeline = ref.watch(blueskyTimelineProvider);
    return ListView.builder(
      itemCount: timeline.length,
      itemBuilder: (context, index) {
        return _BlueskyPostWidget(timeline[index]);
      },
    );
  }
}

class _BlueskyPostWidget extends ConsumerWidget {
  const _BlueskyPostWidget(this.cid);

  final String cid;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final post = ref.watch(blueskyPostFamilyProvider(cid)).value;
    if (post == null) {
      print('no post: ' + cid);
      return const PostCard(avatar: CircularProgressIndicator());
    }
    final author = ref.watch(blueskyActorFamilyProvider(post.authorDid)).value;
    if (author == null) {
      print('no user: ' + cid);
      return const PostCard(avatar: CircularProgressIndicator());
    }
    return PostCard(
      avatar: CircleAvatar(
        backgroundImage: NetworkImage(author.avatar),
      ),
      handle: Text('@${author.handle}'),
      displayName: Text(author.displayName),
      timestamp: const SizedBox.shrink(),
      text: Text(post.text),
    );
  }
}
