import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/widget/view/post_profile_view.dart';
import '../../entity/response/bluesky_post_reason.dart';
import '../../pod/bluesky_actor_profile_pod.dart';
import '../../pod/bluesky_feed_post_pod.dart';
import 'bluesky_post_profile_view.dart';

class BlueskyPostView extends ConsumerWidget {
  const BlueskyPostView(this.reason, {super.key});

  final BlueskyPostReason reason;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final post = ref.watch(blueskyFeedPostPod(reason.uri));
    switch (post) {
      case AsyncData(:final value):
        final post = value;
        final top = switch (reason) {
          BlueskyPostReasonRepost(:final by) => Padding(
            padding: const EdgeInsetsGeometry.only(left: 56.0, right: 8.0),
            child: Text('Reposted by @$by'),
          ),
          BlueskyPostReasonPin() => const Padding(
            padding: EdgeInsetsGeometry.only(left: 56.0, right: 8.0),
            child: Text('Pinned post'),
          ),
          _ => null,
        };
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (top != null) top,
            Consumer(
              builder: (context, ref, child) {
                switch (ref.watch(blueskyActorProfilePod(post.authorDid))) {
                  case AsyncData(:final value):
                    final profile = value;
                    return BlueskyPostProfileView(
                      profile,
                      timestamp: post.createdAt,
                    );
                  case AsyncError(:final error):
                    return Center(child: Text(error.toString()));
                  case AsyncLoading():
                    return PostProfileView(
                      avatar: const CircularProgressIndicator(),
                      name: 'Loading...',
                      id: post.authorDid,
                    );
                  default:
                    return const Center(child: Text('Unknown state'));
                }
              },
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
              child: Text(value.text),
            ),
          ],
        );
      case AsyncError(:final error):
        return Center(child: Text(error.toString()));
      case AsyncLoading():
        return const Center(child: CircularProgressIndicator());
      default:
        return const Center(child: Text('Unknown state'));
    }
  }
}
